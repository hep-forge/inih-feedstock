#! /usr/bin/bash

mkdir -p build
cd build

cp $RECIPE_DIR/CMakeLists.txt ..

cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX
make -j$(nproc)
make install
