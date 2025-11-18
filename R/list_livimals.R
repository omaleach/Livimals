#' List all available livimals animals
#'
#' @return A character vector of animal names (without file extensions)
#' @export
list_livimals <- function() {
  img_files <- list.files(system.file("extdata", package = "livimals"),
                          pattern = "\\.png$", full.names = FALSE)
  animals <- sub("\\.png$", "", img_files)
  return(animals)}

