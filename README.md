---
Title: Climate Data Demo
Author: John Fay
Date: Fall 2018
---

# Climate Data Demo



## Objectives

Explore how Python can read, manipulate, and visualize multi-dimensional climate data.



## 0 - Set up

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

  * **Importing the Python notebooks**

    `git clone https://github.com/ENV859/ClimateData`



## 1 - Fetching the data:

* `1-FetchData.ipynb` notebook

  * Pulls data to local workspace using Python's `urllib` package.


## 2 - Examining the data with *NetCDF4*, *NumPy*, and *Pandas*:

* `2-Numpy-and-Pandas.ipynb` notebook
  1. **Import the `.nc` file into a netCDF4 *dataset* object.**
  2. **Exploring the netCDF dataset:**
     1. Dimensions
     2. Variables
     3. Attributes (global and variable)
  3. **Working with the data**
     1. ...as netCDF variable objects...
     2. NetCDF variable *shapes*
     3. Extracting single data points from NetCDF variables
  4. **Using <u>NumPy</u> with netCDF variables**
     1. Converting netCDF variables to Numpy [masked] arrays
     2. Working with NumPy arrays
     3. Subsetting & visualizing our data
        1. Time series for a single location
        2. Location matrix for a single time
        3. Plotting
  5. **Using <u>Pandas</u> with netCDF variables**
     1. Reducing arrays and converting to dataframes
     2. Adding indexes and column names
     3. Subsetting data
  6. <u>**Xarrays**</u>...



## 3 - Examining the data with *Xarrays*

* `3-xarrays.ipynb` notebook. 
  1. Reading data into an xarray *dataset* object
  2. Extracting variables into xarray *data array* objects
  3. Working with xarray data arrays
     1. Extracting data for one point
     2. Plotting a time series for one location
     3. Mapping precipitation for one time point
     4. Creating spatial subsets
  4. Calculating and plotting summer averages