#!/bin/bash

DIR=~/.luaenv/

function create_env
{
  mkdir -p $DIR
  mkdir -p $DIR$1/env/

  ln -s $2 $DIR$1/env/
}

if [ "$1" == "--lua_path" ] || [ "$1" == '-l' ] && [ "$3" == "--env" ] || [ "$3" == "-e" ]; then
  create_env $4 $2
elif [ "$3" == "--lua_path" ] || [ "$3" == '-l' ] && [ "$1" == "--env" ] || [ "$1" == "-e" ]; then
  create_env $2 $4
else
  echo "
    Usage:
      create_luaenv <options>

    Options:
      --lua_path | -l   path where is lua bin
      --env | -e        envirment name
  "
fi
