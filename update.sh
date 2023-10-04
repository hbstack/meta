#!/bin/bash
for module in blog content docs footer header recommended seo standard; do
  echo "Updating modules for $module"
  cd $module
  hugo mod get -u
  hugo mod tidy
  cd -
done 
