#!/bin/bash
declare -A PLUGINS=(
  []=
)

for plugin in "${!PLUGINS[@]}"
do
  echo "Downloading plugin ${plugin}."
  (cd plugins || return ; curl -o "$plugin" https://plugin.xephia.eu/plugins/"${PLUGINS[$plugin]}")
done