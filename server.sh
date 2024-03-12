#!/bin/bash

docker run -ti --rm \
  -v ./:/app \
  -w /app \
  --dns 8.8.8.8 \
  -p 80:4000 \
  -p 4000:4000 \
  -p 35729:35729 \
  jekyll/builder:3.8 \
  /bin/bash -c "bundle install --path=./.gem-cache && bundle exec jekyll serve --force_polling --host 0.0.0.0 --livereload"
