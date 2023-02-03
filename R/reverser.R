#' reverse a string or a number
#' @param toReverse A string or number
#' @return the reverse of the provided string or number
#' @examples
#' colin_reverser("foo")
#' @importFrom magrittr "%>%"
#' @export

colin_reverser <- function(toReverse) {
  #split <- strsplit(as.character(toReverse), "")[[1]]
  split <- autoSplit(toReverse)
  ##paste(rev(split), collapse = "")
  rev(split) %>% paste(collapse = "")
} # colon_reverser

# helper function to make splitting easier (not exported to end user of package)
autoSplit <- function(toSplit) {
  strsplit(as.character(toSplit), "")[[1]]
}
