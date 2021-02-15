# Xtensa ISA documentation
[![Latest PDF](https://img.shields.io/badge/PDF-latest-green)](https://github.com/espressif/xtensa-isa-doc/releases/download/latest/Xtensa.pdf)

## About this repository

This repository contains a reference of Xtensa instruction set architecture (ISA) compiled by Espressif using various publicly available sources. The purpose of this reference is to provide enough information to compiler and tool developers about the following aspects of Xtensa:

* general purpose registers
* window ABI
* instruction formats
* list of instructions in the base ISA
* list of instructions in ISA extensions used by Espressif SoCs
* basic special and user registers

The following aspects of Xtensa are out of scope of this document:

* exception and interrupt handling
* coprocessors
* cache, memory protection and other options not utilized in Espressif SoCs

This repository is not an official reference of Xtensa documentation and is not endorsed by Cadence Design Systems.

## Getting the documentation

This repository contains the source of Xtensa ISA documentation in LaTeX format.

### Latest version

You can download the document in PDF format here:
* [Xtensa.pdf](https://github.com/espressif/xtensa-isa-doc/releases/download/latest/Xtensa.pdf) (latest) — automatically built from source whenever the default branch of the repository is updated.

### Building from source

To build the document in PDF format locally, you can use the provided Docker image:

1. Build the image:
   ```bash
   docker build -t texlive-latex-extra docker
   ```
2. Build the documentation:
   ```
   docker run --rm -v $PWD:/build -w /build texlive-latex-extra ./build.sh
   ```

## Contributions

We welcome corrections and improvement suggestions submitted as Github Pull Requests or Issues.

When adding larger portions of content, please specify the source you have referred to when writing it.

Please note that Cadence is the copyright owner of the official Xtensa ISA Reference Manual. Contributions which contain portions of Xtensa ISA Reference Manual will not be accepted.

## License

This project is provided under Creative Commons CC-BY-SA-3.0 license, found in [LICENSE](LICENSE) file.
