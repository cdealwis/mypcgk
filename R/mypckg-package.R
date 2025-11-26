#' @importFrom purrr keep modify
#' @importFrom magrittr %>%

col_summary <- function(df, fun) {
  stopifnot(is.data.frame(df))

  df %>%
    keep(is.numeric) %>%
    modify(fun)
}
