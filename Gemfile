source "https://rubygems.org"

require "json"
require "open-uri"

versions = JSON.parse(OpenURI.open_uri('https://pages.github.com/versions.json').read)

# Github Pages environment
gem "github-pages", versions['github-pages']
gem "redcarpet"

gem "html-proofer", '>=3.3.1'

