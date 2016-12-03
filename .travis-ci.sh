#!/bin/bash
set -e # halt script on error

HTMLPROOFER_OPTIONS="./_site --internal-domains=pid.codes --check-html --check-opengraph --report-missing-names --log-level=:debug --url-ignore /www.andreas.org/,/www.kbles.ru/,/github.com\/KK2345\/TinyPassword$/,/github.com\/KK2345\/TinyPassword\/blob\/master\/README.md/,/www.oshec.org\/projects\/pi-pilot\/wiki/,/github.com\/xuio\/Cynteract$/,/github.com\/mattomatto\/craft$/"

bundle exec jekyll doctor
bundle exec jekyll build

if [[ $TASK = 'htmlproofer' ]]; then
  bundle exec htmlproofer $HTMLPROOFER_OPTIONS --disable-external
elif [[ $TASK = 'htmlproofer-external' ]]; then
  bundle exec htmlproofer $HTMLPROOFER_OPTIONS
fi

# Validate GH Pages DNS setup
bundle exec github-pages health-check
