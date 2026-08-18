[README.md](https://github.com/user-attachments/files/31186992/README.md)
# Temporal evolution of forest habitat amount and fragmentation in Europe (1990–2018)

## Overview

This project analyses changes in forest habitat amount and spatial configuration between **1990 and 2018** using **CORINE Land Cover (CLC)** data.

Two contrasting European study areas are compared:

- **Mainland Spain**, with a focus on Catalonia and landscapes associated with forest expansion and land-use change.
- **The Baltic States** — Estonia, Latvia and Lithuania — treated as one regional study area characterized by intensive forest use, harvesting, regeneration and forest turnover.

The workflow is implemented in **R** and **Quarto**, with spatial processing based primarily on `sf`, `terra`, `landscapemetrics`, `giscoR`, `leaflet` and `shiny`.

## Research objective

The project evaluates how forest amount and forest spatial structure evolved through time and whether the two study areas exhibit contrasting trajectories of fragmentation, aggregation and connectivity.

The analysis uses five CORINE observation years:

- 1990
- 2000
- 2006
- 2012
- 2018

## Workflow

The main analytical workflow includes:

1. acquisition and validation of CORINE Land Cover data;
2. construction of a pan-European contextual overview;
3. preparation of mainland Spain and a Baltic regional CORINE mosaic;
4. reclassification of CLC forest classes into forest habitat and terrestrial matrix;
5. construction of a standardized **25 × 25 km analytical grid**;
6. literature-guided and reproducible sampling of five landscapes per study area;
7. extraction of the selected landscapes at the original **100 m CORINE resolution**;
8. calculation of class-level landscape metrics;
9. analysis of temporal trajectories from 1990 to 2018.

## Landscape metrics

Eight complementary metrics are calculated for forest habitat:

| Metric | Interpretation |
|---|---|
| **PLAND** | Percentage of the landscape occupied by forest |
| **NP** | Number of forest patches |
| **PD** | Patch density |
| **ED** | Edge density |
| **LPI** | Largest patch index |
| **COHESION** | Structural cohesion of forest patches |
| **ENN_MN** | Mean nearest-neighbour distance |
| **AI** | Aggregation index |

The metrics are interpreted jointly because forest fragmentation is multidimensional and cannot be characterized reliably using a single index.

## Main results

The sampled landscapes show contrasting trajectories.

In the Spanish sample, mean forest cover increased from approximately **36.3% in 1990 to 47.8% in 2018**. The largest forest patches became more dominant and nearest-neighbour distances decreased substantially, although patch number, patch density and edge density also increased.

In the Baltic sample, mean forest cover declined from approximately **46.3% to 41.1%**. This decline was accompanied by increasing patch number and density and decreasing largest-patch dominance, cohesion and aggregation.

The results therefore suggest forest expansion accompanied by changing spatial structure in the Spanish sample, whereas the Baltic sample shows stronger evidence of forest loss and structural fragmentation. These conclusions apply to the selected case-study landscapes and should not be interpreted as population estimates for the entire regions.

## Repository structure

```text
habitat-fragmentation-europe/
├── Workflow-final.qmd
├── README.md
├── .gitignore
├── data_input/
│   ├── boundaries/
│   └── corine/
├── data_output/
│   ├── figures/
│   ├── maps/
│   └── tables/
├── cache/
└── ...
```

### Important

Large downloaded CORINE datasets, temporary cache files, extracted archives, credentials and generated Quarto support directories should **not** be committed to GitHub.

The repository should contain the code and lightweight derived outputs required to understand and reproduce the workflow. Raw CORINE datasets can be reacquired from their original data provider.

## Reproducibility

The analysis is designed to be reproducible from the Quarto workflow.

Required data are either downloaded automatically where appropriate or expected in the project data directories. Intermediate products are cached locally to reduce repeated processing time.

The project uses a fixed random seed for landscape sampling so that the selected landscapes remain reproducible.

## Interactive document

The Quarto document contains **Shiny** and **Leaflet** components. During local development, use **Run Document** in RStudio to launch the interactive document.

Because Shiny requires an R server process, the interactive components are not a purely static GitHub Pages website. A static HTML file can still be stored in the repository as an output snapshot, but full Shiny interactivity requires deployment to a compatible Shiny hosting environment.

## Software

The workflow uses R with packages including:

- `sf`
- `terra`
- `giscoR`
- `landscapemetrics`
- `exactextractr`
- `dplyr`
- `tidyr`
- `purrr`
- `ggplot2`
- `patchwork`
- `leaflet`
- `shiny`
- `httr2`
- `here`
- `fs`

## Author

**Cyrille Marchant**

Master project in geographical sciences.
