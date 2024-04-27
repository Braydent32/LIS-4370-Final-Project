#' Perform statistical test to compare multiple groups
#'
#' The \code{compare_groups()} function performs a statistical test to evaluate whether there are significant differences among the population characteristics of multiple groups of data. It uses analysis of variance (ANOVA) to compare means across groups.
#'
#' @param data A data frame where each column represents a different group to be compared.
#' @param response_var The name of the response variable (dependent variable) to be analyzed.
#' @param group_var The name of the grouping variable (independent variable) that identifies the different groups.
#' @param ... Additional arguments to be passed to the ANOVA function.
#' @return An ANOVA table summarizing the analysis of variance results.
#' @examples
#' data <- data.frame(
#'   group = rep(c("A", "B", "C"), each = 10),
#'   value = c(rnorm(10, mean = 5), rnorm(10, mean = 6), rnorm(10, mean = 7))
#' )
#' result <- compare_groups(data = data, response_var = "value", group_var = "group")
#' print(result)
#' @export
compare_groups <- function(data, response_var, group_var, ...) {
  fit <- aov(as.formula(paste(response_var, "~", group_var)), data = data)
  summary(fit)
}

