#!/bin/sh

# Build HHS site

# compile css 

lessc less/index.less | tee css/hhs.css

# build templates

mustache yaml/site.yaml templates/base.mustache | tee index.html
# mustache yaml/site.yaml templates/posts.mustache | tee posts/index.html
# mustache yaml/site.yaml templates/about.mustache | tee about/index.html