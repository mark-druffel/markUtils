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
#' @import extrafont
#' @export

theme_blog <- function(...){
  ggplot2::theme_minimal() +
  ggplot2::theme(
    text = ggplot2::element_text(
      family = "Roboto Light",
      color = "#33334D",
      size = 11,
      inherit.blank = FALSE),
    title = ggplot2::element_text(
      family = "Roboto Black",
      color = "#000000",
      size = 15,
      inherit.blank = FALSE),
    plot.subtitle = ggplot2::element_text(
      family = "Roboto Light",
      color = "#000000",
      size = 12,
      inherit.blank = FALSE),
    axis.title = ggplot2::element_text(
      family = "Roboto",
      color = "#33334D",
      size = 14,
      inherit.blank = FALSE),
    legend.title = ggplot2::element_text(
      family = "Roboto",
      color = "#33334D",
      size = 13,
      inherit.blank = FALSE),
    legend.text = ggplot2::element_text(
      family = "Roboto",
      color = "#33334D",
      size = 12,
      hjust = 0),
    panel.grid = ggplot2::element_blank(),
    plot.background = ggplot2::element_rect(
      fill = "#ffffff",
      color = "#ffffff"),
    plot.margin = ggplot2::margin(
      t = 0,
      r = 0,
      b = 0,
      l = 0),
    panel.border = ggplot2::element_blank(),
    strip.background = ggplot2::element_blank(),
    panel.background = ggplot2::element_rect(fill = "#ffffff",
                                             color = "#ffffff"),
    legend.background = ggplot2::element_rect(fill = "#ffffff",
                                              color = "#ffffff"),
    axis.ticks = ggplot2::element_blank()
    ) +
    ggplot2::theme(...)
}

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
#' @import extrafont
#' @export

theme_blog_facet <- function(...){
  ggplot2::theme_light() +
    ggplot2::theme(
      text = ggplot2::element_text(
        family = "Roboto Light",
        color = "#33334D",
        size = 11,
        inherit.blank = FALSE),
      title = ggplot2::element_text(
        family = "Roboto Black",
        color = "#000000",
        size = 15,
        inherit.blank = FALSE),
      plot.subtitle = ggplot2::element_text(
        family = "Roboto Light",
        color = "#000000",
        size = 12,
        inherit.blank = FALSE),
      axis.title = ggplot2::element_text(
        family = "Roboto",
        color = "#33334D",
        size = 14,
        inherit.blank = FALSE),
      legend.title = ggplot2::element_text(
        family = "Roboto",
        color = "#33334D",
        size = 13,
        inherit.blank = FALSE),
      legend.text = ggplot2::element_text(
        family = "Roboto",
        color = "#33334D",
        size = 12,
        hjust = 0),
      plot.background = ggplot2::element_rect(
        fill = "#ffffff",
        color = "#ffffff"),
      plot.margin = ggplot2::margin(
        t = 0,
        r = 0,
        b = 0,
        l = 0),
      strip.text.x = element_text(size = 9)
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
  htmltools::div(htmltools::div(class = rlang::maybe_missing(sclass, default = "viz-subtitle"),
                 htmltools::div(class = rlang::maybe_missing(sclass, default = "viz-title"), title),
                 subtitle))
}

