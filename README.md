We use the Sphinx toolchain to transform the Python docstrings into HTMLs.

# First-Time Setup

Make sure `sphinx` is installed in your current Python environment.

```sh
$ pip install sphinx sphinx-rtd-theme
```

# Update the Docs

```sh
cd experimental/
make html
```

# How `experimental/` is Created

```sh
mkdir experimental && cd exmperimental

sphinx-quickstart
```

After this, change `conf.py`:

```py
# ...
import os
import sys
taichi_path = os.getenv('TAICHI_PATH', '.')
sys.path.insert(0, os.path.abspath(taichi_path))

# ...
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',
]
```

Run the following command to generate the directives for `sphinx-autodoc`:

```sh
$ export TAICHI_PATH=/path/to/taichi
$ sphinx-apidoc -f -o src $TAICHI_PATH
```

Because Taichi's docstring coverage isn't so great, we need to prune `src/`...

1. Keep only these packages:

    ```sh
    taichi.aot
    taichi.core
    taichi.lang
    taichi.snode
    ```

2. Remove all the `:undoc-members:` in the rst files


# References

* [sphinx-autodoc](https://www.sphinx-doc.org/en/master/usage/extensions/autodoc.html): This extension can import the modules you are documenting, and pull in documentation from docstrings in a semi-automatic way.
* [sphinx.ext.napoleon](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/index.html): This is for parsing the Google-style (Numpy-style as well) Python docstring.
* [sphinx-rtd-theme](https://sphinx-rtd-theme.readthedocs.io/en/stable/): Additional Sphinx themes.