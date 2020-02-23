#!/usr/bin/env bash

mkdir ../Tmp

cp -r ./* ../Tmp/
cd ../Tmp/
rm -rf ./site/
rm -rf ./src_doc/
mkdocs build
bundle exec jazzy \
  	--clean \
  	--author Shota Shimazu \
  	--author_url https://shotastage.xyz \
  	--github_url https://github.com/shotastage/whipped-cream \
  	--build-tool-arguments -scheme,Whipcream \
  	--module Whipcream \
  	--root-url https://shotastage.github.io/whipped-cream/ \
  	--output src_doc/
