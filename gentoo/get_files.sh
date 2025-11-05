#!/usr/bin/env sh
# cd to script dir
cd "$(dirname "$0" | xargs realpath)" || exit 1

set -x
mkdir -p sets package.use
cp /etc/portage/sets/libreboot ./sets/libreboot
cp /etc/portage/package.use/libreboot ./package.use/libreboot
