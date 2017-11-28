#!/usr/bin/env sh
cd mit_scheme_linux_x86_64/src/
sh configure
make compile-microcode
sudo make install
cd ../../

