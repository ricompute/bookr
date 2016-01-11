# bookr

This is an R package which keeps a log of the books you've read in a file called `booklog.csv`.

# Installation

To install, run the following code in R:

```{r}
# install.packages("devtools")
devtools::install_github("ricompute/bookr")
```

# Usage

## booklog()
The main function is `booklog()` which writes the book title, author, date of completion, rating (1 - 10), and notes to `booklog.csv`. For usage, type `?booklog` in R.

## read_booklog()
This is a just a wrapper around `read.csv()` which will read `booklog.csv` into a data frame.
