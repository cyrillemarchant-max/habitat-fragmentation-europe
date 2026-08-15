# 07_plot_temporal.R

plot_metric_evolution <- function(data, metric, grid_ids = NULL) {
  if (!is.null(grid_ids)) {
    data <- data |>
      dplyr::filter(.data$grid_id %in% grid_ids)
  }

  ggplot2::ggplot(
    data,
    ggplot2::aes(
      x = year,
      y = .data[[metric]],
      colour = grid_id,
      group = grid_id
    )
  ) +
    ggplot2::geom_line(linewidth = 0.9) +
    ggplot2::geom_point() +
    ggplot2::labs(
      x = "Year",
      y = metric,
      colour = "Grid cell"
    ) +
    ggplot2::theme_minimal()
}
