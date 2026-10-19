#!/bin/sh
# Wraps the game page (pixel-stack-city.html, written as a page fragment) in a
# full HTML document so GitHub Pages can serve it as index.html.
cd "$(dirname "$0")" || exit 1
{
  printf '<!doctype html>\n<html lang="zh-Hant">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<style>body{margin:0}</style>\n</head>\n<body>\n'
  cat pixel-stack-city.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html built"
