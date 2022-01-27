.. taichi-api-docstring documentation master file, created by
   sphinx-quickstart on Sat Jul 24 23:51:26 2021.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Taichi Language's API reference!
===========================================

.. image:: https://raw.githubusercontent.com/taichi-dev/public_files/master/taichi/fractal.gif
   :width: 400
   :alt:

If you are looking for more structured documentation about Taichi,
please refer to `Taichi Docsite <https://docs.taichi.graphics/>`_.

.. toctree::
   :titlesonly:

   {% for page in pages %}
   {% if page.top_level_object and page.display %}
   {{ page.include_path }}
   {% endif %}
   {% endfor %}

