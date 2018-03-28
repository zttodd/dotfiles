#!/usr/bin/env bash

# https://wiki.archlinux.org/index.php/awesome

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run pasystray