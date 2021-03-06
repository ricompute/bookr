% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/booklog.R
\name{booklog}
\alias{booklog}
\title{Add An Entry to booklog.csv}
\usage{
booklog(title, author = NA, date = Sys.Date(), rating = NA, notes = NA)
}
\arguments{
\item{title}{A character string with the title of the book. Must be quoted.}

\item{author}{A character string with the author of the book. Must be quoted. Defaults to NA.}

\item{date}{The date the book was finished, in the format YYYY-MM-DD. Defaults to Sys.Date().}

\item{rating}{A numeric rating between 1 and 10. Defaults to NA.}

\item{notes}{A character string with any notes about the book. Defaults to NA.}
}
\value{
Returns a data frame containing the entry which was written to booklog.csv.
}
\description{
If there is no file booklog.csv in the current working directory, a new file
is created.
}
\examples{
booklog("Harry Potter and the Goblet of Fire", "J. K. Rowling", rating = 10)
}

