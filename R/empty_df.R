#' Create an empty data.frame with specified number of columns and column names
#'
#' @param ncol integer; number of columns
#' @param colnames; character vector equal length to ncol; column names
#' @return empty data.frame
#' @export
empty_df <- function(ncol, colnames){

  if(ncol != length(colnames)){
    stop(sprintf("Length of colnames (%s) must be equal to `ncol` (%s)", length(colnames), ncol))
  }

  out <- matrix(data = NA, nrow = 0, ncol = ncol, dimnames = list(c(), colnames)) |>
    as.data.frame()

  return(out)
}

