#!/bin/bash

source env.sh

rm -rf _build
mix deps.get
iex -S mix