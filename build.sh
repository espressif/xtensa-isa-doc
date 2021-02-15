#!/usr/bin/env bash
#
# This script runs in a container build from docker/Dockerfile in this repository.
# To use it locally:
# 1. Build the docker image:
#     docker build -t texlive-latex-extra docker
# 2. Build the documentation:
#     docker run --rm -v $PWD:/build -w /build texlive-latex-extra ./build.sh

set -euo pipefail

echo "\\newcommand{\\gitinfo}{Version $(git describe --always), $(git log -1 --pretty=format:%ad --date=short)}" > revision.tex

pdflatex_cmd="pdflatex -halt-on-error -interaction=nonstopmode Xtensa.tex"
${pdflatex_cmd}
bibtex Xtensa.aux
${pdflatex_cmd}
${pdflatex_cmd}
