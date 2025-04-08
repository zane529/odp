#!/bin/bash

# Conda Packages 
echo "Nvida Enviorment Setup ..."
# conda install -y -c conda-forge nvitop 

# Python Packages 
echo "Python Enviorment Setup ..."
pip install ipyleaflet
pip install cogeo_mosaic
pip install localtileserver
pip install rasterio
pip install matplotlib 
pip install folium
pip install geopandas 
pip install pycrs 
pip install osmnx
pip install leafmap
pip install segment-geospatial
pip install fiona
pip install --find-links=https://girder.github.io/large_image_wheels --no-cache GDAL
conda install -c conda-forge samgeo -y

# Conda Packages 
echo "Java Geo-Display Enviorment Setup ..."
conda install -y jupyter_contrib_nbextensions -c conda-forge
# jupyter labextension install @jupyter-widgets/jupyterlab-manager @lumino/widgets jupyter-leaflet
# jupyter nbextension enable widgetsnbextension --py --sys-prefix
# jupyter labextension install js
jupyter labextension list