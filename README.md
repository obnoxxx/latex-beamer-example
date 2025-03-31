# beamer-example

This project provides example an example to demonstrate how to create nice-looking pdf slide decks with
the [LaTeX](https://www.latex-project.org/) beamer document class.

This project is similar to its companion project https://github.com/obnoxxx/latex-doc-example for text documents.

On a system (e. g. Linux or MacOS) with LaTeX  and GNU make installed, the presentation pdf can be created from the
source file https://github.com/obnoxxx/latex-beamer-example/blob/main/pres.tex  like so:

```console

$ make pres

```

People who do not want to install the LaTeX tools on their host can use the
[buildbox](https://github.com/obnoxxx/buildbox/) project to render the slides in a container with a prebuilt container image.
Example:

```console

$ builbo -l latex -o ubuntu -b -s "make pres"

```

this assumes that the `builbo` cli from the buildbox project is available in the host's `PATH`


The resulting `pres.pdf` can be opened in any PDF  viewer. e. g. `evince`on Linux.

