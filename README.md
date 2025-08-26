# Methods in Cultural Evolution

Powerpoint slides, HTML worksheets, and associated data files for workshop on 
methods in cultural evolution.

## Software requirements

For the workshop, you will need to install the following software (see URL links
for installation instructions):

- **R** (https://cran.r-project.org/bin/windows/base/)
- **RStudio** (https://posit.co/download/rstudio-desktop/)
- **RTools** (https://cran.r-project.org/bin/windows/Rtools/)

You should try to install the latest version of R, if possible, and install the
version of RTools that aligns with this (e.g., R v4.5.1 and RTools45).

You will then need to install the following R packages from CRAN:

```r
install.packages(c("ape", "brms", "tidyverse"))
```

For the third worksheet, you will additionally require the **cmdstanr** and 
**coevolve** R packages. You can install the cmdstanr package (and CmdStan 
itself) by following the instructions here:
https://mc-stan.org/cmdstanr/articles/cmdstanr.html Then you can install the 
coevolve package from GitHub with the following code:

```r
# install.packages("devtools")
devtools::install_github("ScottClaessens/coevolve")
```

## Author

Scott Claessens, scott.claessens@gmail.com
