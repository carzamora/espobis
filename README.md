
<!-- README.md is generated from README.Rmd. Please edit that file -->

# espobis

<!-- badges: start -->

<!-- badges: end -->

The goal of espobis is to …

## Installation

### Paso 1

Como esta librería depende de “obistools” y esa librería no se encuentra
en CRAN, es necesario instalarla antes:

``` r
devtools::install_github("iobis/obistools")
```

### Paso 2

Intentar instalar con:

``` r
devtools::install_github("carzamora/espobis")
```

### Paso 3 (resolver problemas)

1)  Si te aparece este error:

WARNING: Rtools is required to build R packages but is not currently
installed. Please download and install the appropriate version of Rtools
before proceeding:

<https://cran.rstudio.com/bin/windows/Rtools/>

Es posible que necesites instalar RTools, lo descargas e instalas del
link anterior.

2)  También, es posible que aparezca el error:

Error in loadNamespace(j \<- i\[\[1L\]\], c(lib.loc, .libPaths()),
versionCheck = vI\[\[j\]\]) : there is no package called ‘digest’

En ese caso necesitas instalar la librería “digest”

``` r
install.packages("digest")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(espobis)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
