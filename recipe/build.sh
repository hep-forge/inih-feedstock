#! /usr/bin/bash

meson setup builddir --prefix=$PREFIX
meson compile -C builddir
meson install -C builddir
