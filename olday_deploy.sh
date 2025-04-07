#!/bin/bash

# Linux Packages 
echo "TK Enviorment Setup ..."
sudo yum install -y tk-devel agg agg-devel

# Python Packages 
echo "TK Enviorment Setup ..."
pip install cogeo_mosaic
pip install --find-links=https://girder.github.io/large_image_wheels --no-cache GDAL
pip uninstall -y pandas
pip uninstall -y nest-asyncio
pip install nest-asyncio==1.5.5
pip install pandas==1.5.3
pip install localtileserver
pip install rasterio
pip install matplotlib folium
pip install geopandas pycrs osmnx
pip install leafmap
pip install segment-geospatial

# Conda Packages 
echo "Conda Geo-Kernel Enviorment Setup ..."
# conda install -y -c conda-forge nvitop 
conda install -y -c conda-forge ipyleaflet
conda install -y -n base mamba -c conda-forge
mamba create -y -n geo leafmap geopandas localtileserver python -c conda-forge
mamba create -y -n segment-geospatial python -c conda-forge
conda install -y jupyter_contrib_nbextensions -c conda-forge

# Conda Packages 
echo "Java Geo-Display Enviorment Setup ..."
# jupyter labextension install @jupyter-widgets/jupyterlab-manager @lumino/widgets jupyter-leaflet
# jupyter nbextension enable widgetsnbextension --py --sys-prefix
# jupyter labextension install js
jupyter labextension list

# Install from GitHub
echo "Optional Geospatial AIML Developer Enviorment Setup ..."
pip install git+https://github.com/opengeos/segment-geospatial

