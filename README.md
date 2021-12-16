We use the Sphinx toolchain to transform the Python docstrings into HTMLs. This is as simple as:

1. Set `TAICHI_PATH` to the root of the Taichi repo.
2. Run the following:

    ```sh
    pip install -r requirements.txt
    cd experimental/
    make html
    ```

3. Then go to `_build/html` and open `index.html` in your browser, i.e. `open _build/html/index.html`.

# References

* [sphinx-autodoc](https://www.sphinx-doc.org/en/master/usage/extensions/autodoc.html): This extension can import the modules you are documenting, and pull in documentation from docstrings in a semi-automatic way.
* [sphinx.ext.napoleon](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/index.html): This is for parsing the Google-style (Numpy-style as well) Python docstring.
* [sphinx-rtd-theme](https://sphinx-rtd-theme.readthedocs.io/en/stable/): Additional Sphinx themes.
* [sphinx-autoapi](https://github.com/readthedocs/sphinx-autoapi): "real" auto-generation of APIs.
