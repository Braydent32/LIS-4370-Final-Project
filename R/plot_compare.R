#' Generate plot to visually compare group means
#'
#' The \code{plot_compare()} function generates a plot to visually compare the means of different groups.
#'
#' @param anova_result The result of the ANOVA analysis.
#' @return A graphical representation of group means with error bars.
#' @examples
#' data <- data.frame(
#'   group = rep(c("A", "B", "C"), each = 10),
#'   value = c(rnorm(10, mean = 5), rnorm(10, mean = 6), rnorm(10, mean = 7))
#' )
#' result <- compare_groups(data = data, response_var = "value", group_var = "group")
#' plot_compare(anova_result = result)
#' @export
plot_compare <- function(anova_result) {
  plot(TukeyHSD(anova_result))
}
