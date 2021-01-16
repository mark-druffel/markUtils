#' git_ignores for usethis::use_git_ignore()
#'
#' @examples
#' \dontrun{
#' usethis::use_git_ignore(ignores = git_ignores())
#'}
#'
#' @export

git_ignores <- function(){
  c(".Rhistory", ".Rapp.history", ".RData", ".Ruserdata", "/*.tar.gz", "/*.Rcheck/", ".Rproj.user/", ".httr-oauth", ".Renviron")
}

