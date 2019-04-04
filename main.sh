#!/usr/bin/env bash

pgcontents init -l $DATABASE_URL --no-prompt

jupyter notebook \
	--no-browser --no-mathjax --ip=* --port $PORT \
	--config=jupyter_notebook_config.py \
	notebooks
