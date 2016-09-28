#!/bin/bash
set -e # halt script on error

HTMLPROOFER_OPTIONS="./_site --check-html --report-invalid-tags --report-missing-names --log-level=:debug"

if [[ $TASK = 'htmlproofer' ]]; then
  bundle exec jekyll build
  bundle exec htmlproofer $HTMLPROOFER_OPTIONS --disable-external
elif [[ $TASK = 'htmlproofer-external' ]]; then
  bundle exec jekyll build
  bundle exec htmlproofer $HTMLPROOFER_OPTIONS
fi
