#!/bin/bash
set -e # halt script on error

if [[ $TASK = 'htmlproofer' ]]; then
  bundle exec jekyll build
  bundle exec htmlproofer ./_site --disable-external
elif [[ $TASK = 'htmlproofer-external' ]]; then
  bundle exec jekyll build
  bundle exec htmlproofer ./_site
fi
