#!/bin/bash

# Before building the kernel, first we need to update and then install a few packages on Cirrus CI and so we'll do that.
pacman -Sy --noconfirm
pacman -S archlinux-keyring --noconfirm
pacman -Syu --needed --noconfirm aarch64-linux-gnu-binutils wget base-devel xmlto libxml2 libxml2-legacy inetutils bc cpio python-sphinx python-sphinx_rtd_theme graphviz imagemagick git python zip github-cli fortune-mod ccache jre8-openjdk
# After installing the packages, we can move onto calling the build script.

bash cirrus_build.sh
