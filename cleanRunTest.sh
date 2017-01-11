#!/usr/bin/env bash

pushd xpdf-3.04
make clean && make -j pdftotext && pushd ../bin && ./pdftotext && popd
popd
