#' ggplot2 themes
#'
#' @param ... passed to ggplot2 theme()
#'
#' @details Themes all tweak existing themes but accept any ggplot2 theme arguments to overwrite settings
#'
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "My Plot") +
#'     theme_blog(text = element_text(size = 20))
#'}
#' @import ggplot2
#' @export

theme_blog <- function(...){
  ggplot2::theme_minimal() +
  ggplot2::theme(
      text = ggplot2::element_text(
        size = 16,
        inherit.blank = FALSE),
      title = ggplot2::element_text(
        size = 18,
        inherit.blank = FALSE),
      panel.grid = ggplot2::element_blank(),
      plot.background = ggplot2::element_rect(
        fill = "#494f5c",
        color = "#494f5c"),
      plot.margin = ggplot2::margin(
        t = 0,
        r = 0,
        b = 0,
        l = 0),
      panel.border = ggplot2::element_rect(
        fill = "#494f5c",
        color = "#494f5c"),
      strip.background = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = "#494f5c",
                                               color = "#494f5c"), ##5c5d70
      legend.background = ggplot2::element_rect(fill = "#494f5c",
                                                color = "#494f5c"),
      axis.text = ggplot2::element_text(color = "#ffffff"),
      axis.ticks = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(size = 16),
      legend.text = ggplot2::element_text(size = 16,
                                          hjust = 0),
      plot.title = ggplot2::element_text(size = 24,
                                         hjust = 0.5),
      plot.subtitle = ggplot2::element_text(size = 18,
                                            hjust = 0.5)
    ) +
    ggplot2::theme(...)
}


#' Add header using css styles
#'
#' @param title
#' @param subtitle
#'
#' @import htmltools
#' @import rlang
#' @export

viz_header <- function(title, subtitle, tclass, sclass){
  if(missing(subtitle)){
    htmltools::div(class = rlang::maybe_missing(sclass, default = "viz-subtitle"), title)
  } else{
    htmltools::div(class = rlang::maybe_missing(sclass, default = "viz-subtitle"),
        htmltools::div(class = rlang::maybe_missing(sclass, default = "viz-title"), title),
        subtitle)
  }
}

