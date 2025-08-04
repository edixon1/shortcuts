# Eliot Dixon
# 2025.08.04


#' Makes a tidy list of files within a directory.  Non-recursive, doesn't include subdirectories.
#'
#' @param dir character string; path to directory containing file paths to be stored
#' @param pattern character string; regular expression by which to match files within `dir`
#' @return named list; values are full paths to all files within `dir` (or files which match `pattern`) and are named after their file.
#' @export
get_file_list <- function(dir, pattern = NULL){
  file_names <- list.files(dir, pattern = pattern, full.names = FALSE)
  paths <- list.files(dir, pattern = pattern, full.names = TRUE)

  out <- paths
  names(out) <- file_names

  return(out)
}
