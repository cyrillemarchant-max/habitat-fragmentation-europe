# 05_landscape_metrics.R
# Core landscape metrics for the MVP.
#
# Metrics to implement first:
# - habitat area
# - Patch Density (PD)
# - Edge Density (ED)
# - Largest Patch Index (LPI)
#
# landscapemetrics calculations should be run on the 100 m CORINE raster
# after clipping/masking to the analysis cell (with a border strategy
# documented in the final methodology).

calculate_metrics <- function(habitat_raster) {
  stopifnot(inherits(habitat_raster, "SpatRaster"))

  list(
    pd = landscapemetrics::lsm_c_pd(habitat_raster),
    ed = landscapemetrics::lsm_c_ed(habitat_raster),
    lpi = landscapemetrics::lsm_c_lpi(habitat_raster)
  )
}
