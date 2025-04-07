#!/bin/bash

# Conda Packages 
echo "Java Geo-Display Enviorment Setup ..."
jupyter labextension list

# Python Packages 
echo "Python Enviorment Setup ..."
pip install ipyleaflet
pip install cogeo_mosaic
pip install localtileserver
pip install jsonschema
pip install rasterio
pip install localtileserver
pip install cogeo_mosaic
pip install matplotlib folium
pip install geopandas pycrs osmnx
pip install leafmap
pip install flask-restx
pip install segment-geospatial
pip install --find-links=https://girder.github.io/large_image_wheels --no-cache GDAL

# Update from GitHub
echo "Optional update of leafmap ..."
pip install git+https://github.com/opengeos/leafmap

# Install from GitHub
echo "Optional update of Geospatial AIML Developer Enviorment Setup ..."
pip install git+https://github.com/opengeos/segment-geospatial

# Create Kernel for Notebook
ipython kernel install --name "python-geo" --user
