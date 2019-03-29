# biomes
A collection of useful and tested Conda environments

## Included Environments

- **taiga**: The main user environment for Larch.  Includes a variety of supplemental
  machine learning and visualization tools.
- **greenhouse**: The development environment for Larch.  Does not actually install 
  Larch from the publicly available pre-built binaries, as it is assumed that Larch will
  be installed locally in _develop_ mode.
- **tower**: An environment containing only the jupyter lab packages.  Sometimes 
  installing the full suite of Jupyter tools in the same computational environment as
  the analytical tools doesn't play nice.   This also allows updating just Jupyter or
  just the analytical tools independently.
  
  