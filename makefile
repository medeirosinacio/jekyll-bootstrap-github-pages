#!/usr/bin/make

.DEFAULT_GOAL := help

setup: ## Setup the project
	make check-docker
	docker stop jekyll-bootstrap > /dev/null 2>&1 || true
	if [ "$(shell uname -m)" = "arm64" ]; then make setup-arm; else make setup-x86; fi

setup-x86: ## Setup the project for x86
	docker run -t --rm \
	  --name jekyll-bootstrap \
      -v ./:/app \
      -w /app \
      --dns 8.8.8.8 \
      -p 80:4000 \
      -p 4000:4000 \
      -p 35729:35729 \
      jekyll/builder:3.8 \
      /bin/bash -c "bundle install --path=./.gem-cache && bundle exec jekyll serve --force_polling --host 0.0.0.0 --livereload"

setup-arm: ## Setup the project for ARM
	docker run -it --rm \
	  --name jekyll-bootstrap \
      -v ./:/app \
      -w /app \
      --dns 8.8.8.8 \
      -p 80:4000 \
      -p 4000:4000 \
      -p 35729:35729 \
      -e RUBYOPT="-W0" \
      arm64v8/ruby:2.7 \
      /bin/sh -c "apt update && apt install nodejs -y && bundle install --path=./.gem-cache && bundle exec jekyll serve --force_polling --host 0.0.0.0 --livereload"

check-docker: ## Check if Docker is installed
	@docker --version > /dev/null || (echo "Docker is not installed. Please install Docker first." && exit 1)

##@ Docs

help: ## Print the makefile help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
