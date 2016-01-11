#' Read booklog.csv into a Data Frame
#'
#' This is just a wrapper around read.csv to read booklog.csv into a data frame.
#' @param file A character string containing the file to be read in, or a file connection. Defaults to booklog.csv.
#' @param ... Further arguments to be passed to read.csv.
#'
#' @return Returns a data frame with the contents of booklog.csv.
#' @export
#'
#' @examples
#' blg <- read_booklog()

read_booklog <- function(file = "booklog.csv", ...) {
        read.csv(file, stringsAsFactors = FALSE, ...)
}
