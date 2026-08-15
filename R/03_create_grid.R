# 03_create_grid.R
# Create the 10 x 10 km analysis grid.
#
# The grid is an analysis unit. It does NOT resample CORINE:
# CORINE remains at its native 100 m resolution.

create_analysis_grid <- function(study_area, cell_size_m = 10000) {
  stopifnot(inherits(study_area, "sf"))

  grid <- sf::st_make_grid(
    study_area,
    cellsize = c(cell_size_m, cell_size_m),
    square = TRUE
  )

  grid <- sf::st_as_sf(grid)
  grid$grid_id <- sprintf("G%06d", seq_len(nrow(grid)))
  grid
}
