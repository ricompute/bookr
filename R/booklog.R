#' Add An Entry to booklog.csv
#'
#' If there is no file booklog.csv in the current working directory, a new file
#' is created.
#' @param title A character string with the title of the book. Must be quoted.
#' @param author A character string with the author of the book. Must be quoted. Defaults to NA.
#' @param date The date the book was finished, in the format YYYY-MM-DD. Defaults to Sys.Date().
#' @param rating A numeric rating between 1 and 10. Defaults to NA.
#' @param notes A character string with any notes about the book. Defaults to NA.
#' @return Returns a data frame containing the entry which was written to booklog.csv.
#' @export
#' @examples
#' booklog("Harry Potter and the Goblet of Fire", "J. K. Rowling", rating = 10)

booklog <- function(title, author = NA, date = Sys.Date(), rating = NA, notes = NA) {

        # Create a booklog.csv if one doesn't already exist in the working directory
        if (!file.exists("booklog.csv")) {
                file.create("booklog.csv")
                message("A new booklog.csv has been created in the current working directory.")
                new_file = TRUE  # Note that this is a new file
        } else {
                new_file = FALSE
        }

        # Warn the user if they did not enter an author
        if (is.na(author)) {
                warning("Did you really want to enter a book with no author? Author has been recorded as NA.")
        }

        # Check to make sure the rating is a number between 1 and 10 (or NA)
        if (!is.na(rating)) {
                if (rating < 1 | rating > 10 | (!is.numeric(rating))) {
                        rating <- NA
                        warning("The rating you entered was not a number between 1 and 10. It has been recorded as NA.")
                }
        }

        # Create a data frame of the book data to be written to booklog.csv
        to_write <- data.frame(Book = title,
                               Author = author,
                               Date = as.character(date),
                               Rating = as.character(rating),
                               Notes = notes)

        # Write the book data to booklog.csv
        write.table(to_write, file = "booklog.csv", append = !new_file, sep = ",",
                    row.names = FALSE, col.names = new_file)

        message("The following entry has been added to booklog.csv:")
        to_write
}
