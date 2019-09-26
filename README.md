
<!-- README.md is generated from README.Rmd. Please edit that file -->

# espobis

<!-- badges: start -->

<!-- badges: end -->

La idea de esta librería es facilitar más las tareas de revisar la
calidad de los datos antes de subirlos a OBIS

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

Por ejemplo, es posible determinar si los puntos de ocurrencia están en
tierra. Marcando de verde los puntos sin problema y en rojo los que caen
en tierra.

``` r
# load the package
library(espobis)
library(readxl)
```

Cargamos unos datos de muestra directamente desde un archivo de Excel

``` r
datos <- read_excel("proofs/occurrence.xlsx")
head(datos)
```

y mapeamos

``` r
mapOccur(datos)
```
