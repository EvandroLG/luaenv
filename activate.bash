#!/bin/bash

DIR=~/.luaenv/

function update_env
{
  export __OLD_PATH__=$PATH
  export PATH="$DIR$1/env/:$PATH"
}

if [ "$1" == "--env" || "$1" == "-e" ]; then
  update_env $2
else
  echo "
    Usage:
      activate_luaenv <options>

      Options:
        --env    envirment name
  "
fi
