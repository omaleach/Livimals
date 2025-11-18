#' Preview an animal
#'
#' This function displays the silhouette of a single animal.
#'
#' @param animal Character string. The name of the animal to preview.
#'
#' @return Displays the image in the R plotting window.
#' @export
preview_livimal <- function(animal) {
  if (missing(animal)) stop("Please specify an animal to preview. Use list_livimals() to see available names.")

  animals <- list_livimals()
  if (!animal %in% animals) stop("Oops animal not found. Use list_livimals() to see available names.")

  img_path <- system.file("extdata", paste0(animal, ".png"), package = "livimals")
  img <- png::readPNG(img_path)
  grid::grid.newpage()
  grid::grid.raster(img,
                    width  = grid::unit(0.5, "npc"),
                    height = grid::unit(0.5, "npc"))
  grid::grid.text(animal,
                  y = grid::unit(0.05, "npc"),
                  gp = grid::gpar(fontsize = 16))
}
