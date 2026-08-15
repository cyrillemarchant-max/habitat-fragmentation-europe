# 06_temporal_analysis.R

calculate_change <- function(data, value_col, first_year = 1990, last_year = 2018) {
  value_col <- rlang::ensym(value_col)

  data |>
    dplyr::filter(year %in% c(first_year, last_year)) |>
    dplyr::select(grid_id, year, !!value_col) |>
    tidyr::pivot_wider(
      names_from = year,
      values_from = !!value_col,
      names_prefix = "y"
    ) |>
    dplyr::mutate(
      absolute_change = .data[[paste0("y", last_year)]] -
        .data[[paste0("y", first_year)]],
      relative_change_pct =
        100 * absolute_change / .data[[paste0("y", first_year)]]
    )
}
