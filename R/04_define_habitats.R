# 04_define_habitats.R
# Reclassification of CORINE classes.
#
# Initial MVP: forest habitat.
# CLC forest classes:
# 311 = Broad-leaved forest
# 312 = Coniferous forest
# 313 = Mixed forest

forest_classes <- c(311, 312, 313)

reclassify_forest <- function(clc) {
  out <- terra::classify(
    clc,
    rcl = matrix(
      c(
        -Inf, 310, 0,
        310, 314, 1,
        314, Inf, 0
      ),
      ncol = 3,
      byrow = TRUE
    ),
    include.lowest = TRUE,
    right = FALSE
  )

  out
}
