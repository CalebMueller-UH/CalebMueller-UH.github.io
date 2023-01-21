#!/usr/bin/bash

firefox 127.0.0.1:4000 &
bundle exec jekyll serve --livereload --trace
