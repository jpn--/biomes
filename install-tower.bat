call conda update -y -n base -c defaults conda

call conda env create jpn/tower

call conda activate tower
set NODE_OPTIONS=--max-old-space-size=4096
jupyter labextension install @jupyterlab/toc --no-build
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install jupyterlab_bokeh --no-build
jupyter labextension install @jupyterlab/plotly-extension --no-build
jupyter labextension install @jupyterlab/geojson-extension --no-build
jupyter labextension install @jupyterlab/mathjax3-extension --no-build
jupyter labextension install plotlywidget --no-build
jupyter lab build
call conda deactivate

