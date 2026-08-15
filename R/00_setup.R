# 00_setup.R
# Reproducible project setup

required_packages <- c(
  "here",
  "terra",
  "sf",
  "dplyr",
  "tidyr",
  "purrr",
  "ggplot2",
  "landscapemetrics"
)

missing <- required_packages[
  !required_packages %in% rownames(installed.packages())
]

if (length(missing) > 0) {
  install.packages(missing)
}

invisible(lapply(required_packages, library, character.only = TRUE))

cat("Project root:", here::here(), "\n")
cat("Input data:", here::here("data", "input"), "\n")
cat("Output data:", here::here("data", "output"), "\n")
cat("Figures:", here::here("outputs", "figures"), "\n")
