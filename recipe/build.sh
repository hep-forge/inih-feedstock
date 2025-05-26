#! /usr/bin/bash

meson setup builddir --prefix=$PREFIX --libdir=lib
meson compile -C builddir
meson install -C builddir
