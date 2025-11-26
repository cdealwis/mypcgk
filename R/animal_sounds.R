#' Jedem Tierchen sein Pläsierchen
#'
#' This little functions can help you to print the sound that an animal makes.
#'
#' @param animal A character vector of length 1
#' @param sound A character vector of length 1
#'
#' @returns A string
#' @export # I think this tag needs to be added to make the function visible
#'
#' @examples animal_sounds("dog","woof")
#'
animal_sounds <- function(animal, sound){

  stopifnot(is.character(animal) & length (animal) == 1)
  stopifnot(is.character(sound) & length (sound) == 1)

  paste0("The ", animal, " goes ", sound, "!")
}

