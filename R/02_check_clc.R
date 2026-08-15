# 02_check_clc.R
# Validate CORINE rasters before any analysis.
#
# Expected:
# - native raster resolution: 100 m
# - common projection: EPSG:3035
# - compatible extent/origin/alignment across years

check_clc_raster <- function(x, year = NA) {
  stopifnot(inherits(x, "SpatRaster"))

  data.frame(
    year = year,
    crs = terra::crs(x),
    resolution_x = terra::res(x)[1],
    resolution_y = terra::res(x)[2],
    nrow = terra::nrow(x),
    ncol = terra::ncol(x),
    xmin = terra::xmin(x),
    xmax = terra::xmax(x),
    ymin = terra::ymin(x),
    ymax = terra::ymax(x)
  )
}
