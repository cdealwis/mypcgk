#' Jedem Tierchen sein Pläsierchen
#'
#' This little functions can help you to print the sound that an animal makes.
#'
#' @param animal A character vector of length 1
#' @param sound A character vector of length 1
#'
#' @returns A string
#' @export
#'
#' @examples animal_sounds("dog","woof")
#'
animal_sounds <- function(animal, sound){

  # stopifnot(is.character(animal) & length (animal) == 1)
  # stopifnot(is.character(sound) & length (sound) == 1)

  # Now we use functions from imported packages instead
  # if(!rlang::is_character(animal, n = 1)){
  #   cli::cli_abort(c("'animal' must be a single string",
  #   "i" = "It was {.type {animal}} of length {length(animal)} instead.")) # i is info in cli
  # }
  #
  # if(!rlang::is_character(sound, n = 1)){
  #   cli::cli_abort("'sound' must be a single string")
  # }

  # Then write helper function check_arg (below)
  check_arg(animal)
  check_arg(sound)

  paste0("The ", animal, " goes ", sound, "!")
}

# Write a helper function (this might be very helpful for other packages as well!)
check_arg <- function(arg, n = 1) {
  if (!rlang::is_character(arg, n = n)) {
    cli::cli_abort(
      # c("{.var arg} must be a single string!",
      #   "i" = "It was {.type {arg}} of length {length(arg)} instead.")
      # Better: (see https://ellakaye.github.io/r-package-dev/modules/02-documentation/, slides 40ff.)
      c(
        "{.var {rlang::caller_arg(arg)}} must be a character vector of length {n}!",
        "i" = "It was {.type {arg}} of length {length(arg)} instead."
      ),
      call = rlang::caller_env() # Matter of preference: Then it says Error in "animal sounds()" and not just Error in xy
    )
  }
}


