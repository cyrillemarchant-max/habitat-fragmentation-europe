# Habitat Fragmentation Europe

Reproducible R project to analyse habitat loss and landscape fragmentation in Europe using CORINE Land Cover (1990, 2000, 2006, 2012, 2018).

## Main workflow

CORINE Land Cover -> 10 x 10 km analysis grid -> habitat classification -> landscape metrics -> temporal analysis -> maps and graphs.

## Reproducibility

- Project paths are handled with `here::here()`.
- Raw and processed data are separated.
- CORINE data are downloaded programmatically rather than stored in the Git repository.
- The native CORINE raster resolution (100 m) is preserved for the landscape analysis.

## Folder structure

- `R/` reusable scripts and functions
- `data/input/` downloaded/raw data (ignored by Git)
- `data/output/` processed data/results
- `outputs/figures/` maps and graphs
- `outputs/tables/` result tables
- `analysis/` Quarto reports/analysis notebooks

## First analysis target

The initial prototype will use forest habitat and four core landscape indicators:
- habitat area
- Patch Density (PD)
- Edge Density (ED)
- Largest Patch Index (LPI)
