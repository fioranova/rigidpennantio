#!/usr/bin/env bash
set -e
TAG="gentle-cedar-calm-delta"
LIB="locked-tank.a"
URL="https://github.com/fioranova/rigidpennantio/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
