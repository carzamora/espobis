#' Mapea los puntos de una tabla Ocurrencia
#'
#' Genera un mapa dinámico con los puntos georeferenciados de una tabla EventCore.
#' Cada punto será de color verde si cae en el oceano o de color rojo si cae en tierra.
#' Al hacer clic en el punto aparece la información de eventID, localidad, y coordenadas.
#'
#' @param data un dataframe con la tabla EventCore
#' @param buffer valor numerico en kilometros para aplicar buffer a cada punto
#' @return los puntos ubicados en el mapa
#' @author Carlos Zamora-Manzur \email{carzamora@gmail.com}
#' @seealso formulas relacionadas???
#' @importFrom dplyr %>%
#' @importFrom obistools check_onland
#' @import leaflet
#' @export

mapOccur <- function(data = data, buffer = 0) {
  datoBuffer <- check_onland(data = data, buffer = buffer)
  leaflet() %>%
    addTiles('https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png') %>%
    addCircles(data=data,~decimalLongitude, ~decimalLatitude,
               popup=c(paste("<b>ID:</b>",data$eventID,"<br>",
                             "<b>Loc:</b>",data$locality,"<br>",
                             "<b>Coord:</b>",data$decimalLatitude,",",
                             data$decimalLongitude)),
               weight = 3, radius=40, color="green", stroke = TRUE,
               fillOpacity = 0.8) %>%
    addCircles(data=datoBuffer,~decimalLongitude, ~decimalLatitude,
               popup=c(paste("<b>ID:</b>",datoBuffer$eventID,"<br>",
                             "<b>Loc:</b>",datoBuffer$locality,"<br>",
                             "<b>Coord:</b>",datoBuffer$decimalLatitude,",",
                             datoBuffer$decimalLongitude)),
               weight = 3, radius=40, color="red", stroke = TRUE,
               fillOpacity = 0.8)
}
