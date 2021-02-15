#!/usr/bin/env bash
#
# This script runs in a container build from docker/Dockerfile in this repository.
# To use it locally:
# 1. Build the docker image:
#     docker build -t texlive-latex-extra docker
# 2. Build the documentation:
#     docker run --rm -v $PWD:/build -w /build texlive-latex-extra ./build.sh

set -euo pipefail

mkdir -p pdf
echo "\\newcommand{\\gitinfo}{Version $(git describe --always), $(git log -1 --pretty=format:%ad --date=short)}" > revision.tex
# run latex twice to generate and use the .aux file
for i in 1 2; do
    pdflatex -halt-on-error -interaction=nonstopmode -output-directory pdf Xtensa.tex
done
