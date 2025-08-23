# Pipe: X -> Z -> Y
n <- 1000
X <- rnorm(n)
Z <- rnorm(n, X)
Y <- rnorm(n, Z)
summary(lm(Y ~ X))
summary(lm(Y ~ X + Z))

# Fork: X <- Z -> Y
n <- 1000
Z <- rnorm(n)
X <- rnorm(n, Z)
Y <- rnorm(n, Z)
summary(lm(Y ~ X))
summary(lm(Y ~ X + Z))

# Collider: X -> Z <- Y
n <- 1000
X <- rnorm(n)
Y <- rnorm(n)
Z <- rnorm(n, X + Y)
summary(lm(Y ~ X))
summary(lm(Y ~ X + Z))

# Plotting collider bias
d <- data.frame(Food = rnorm(500), Location = rnorm(500))
d$Z <- d$Food + d$Location >= 1

library(ggplot2)

ggplot(d, aes(Food, Location)) + 
  geom_point() +
  theme_classic()

ggplot() + 
  geom_point(data = d, aes(Food, Location, colour = Z)) +
  geom_smooth(data = d[d$Z, ], aes(Food, Location), 
              method = "lm", colour = "red") +
  scale_colour_manual(values = c("black", "red")) +
  theme_classic() +
  theme(legend.position = "none")






