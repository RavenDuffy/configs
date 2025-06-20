#!/bin/bash

alist() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    ls -lht
  else
    stat -c $'%y\t%n' * | sort -nr
  fi
}
