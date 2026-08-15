# 01_download_clc.R
# CORINE download step.
#
# IMPORTANT:
# The current Copernicus Land Monitoring Service provides CORINE raster
# products at 100 m and EPSG:3035. The exact download/API endpoint should
# be queried from the current CLMS catalogue rather than hard-coded from
# an obsolete URL.
#
# This script creates the expected local directories and is the place where
# the official CLMS download function will be added.

years <- c(1990, 2000, 2006, 2012, 2018)

input_dir <- here::here("data", "input")
dir.create(input_dir, recursive = TRUE, showWarnings = FALSE)

cat("Years:", paste(years, collapse = ", "), "\n")
cat("Input directory:", input_dir, "\n")
