---
Title: Climate Data Demo
Author: John Fay
Date: Fall 2018
---

# Climate Data Demo



## Objectives

Explore how Python can read, manipulate, and visualize multi-dimensional climate data.



## Set up

* Getting Python
  * Installing [miniconda](https://conda.io/miniconda.html)
  * Using Duke's [Jupyter containers](https://vm-manage.oit.duke.edu/containers)
  * Using the ArcGIS Python installation
* Installing packages:
  * `pip install --upgrade pip`
  * `pip install netCDF4`
  * `conda install xarray`
* Using Jupyter
  * Basic navigation
  * Importing notebooks/data



## Fetching the data:

* Link to data source: [**Northwest Knowledge Network (NKN) - THREDDS Server**](http://thredds.northwestknowledge.net:8080/thredds/catalog/NWCSC_INTEGRATED_SCENARIOS_ALL_CLIMATE/macav2livneh/bcc-csm1-1/catalog.html?dataset=NWCSC_IS_ALL_SCAN/macav2livneh/bcc-csm1-1/macav2livneh_pr_bcc-csm1-1_r1i1p1_historical_1990_2005_CONUS_monthly.nc)

* Copy link to [HTTPServer](http://thredds.northwestknowledge.net:8080/thredds/fileServer/NWCSC_INTEGRATED_SCENARIOS_ALL_CLIMATE/macav2livneh/bcc-csm1-1/macav2livneh_pr_bcc-csm1-1_r1i1p1_historical_1990_2005_CONUS_monthly.nc)

* Run GetData notebook