PATH        := ./node_modules/.bin:${PATH}

NPM_PACKAGE := $(shell node -e 'process.stdout.write(require("./package.json").name)')
NPM_VERSION := $(shell node -e 'process.stdout.write(require("./package.json").version)')

TMP_PATH    := /tmp/${NPM_PACKAGE}-$(shell date +%s)

REMOTE_NAME ?= origin
REMOTE_REPO ?= $(shell git config --get remote.${REMOTE_NAME}.url)

CURR_HEAD   := $(firstword $(shell git show-ref --hash HEAD | cut -b -6) master)
GITHUB_PROJ := https://github.com//markdown-it/${NPM_PACKAGE}


lint:
	eslint .

test: lint
	mocha -R spec

coverage:
	rm -rf coverage
	istanbul cover node_modules/mocha/bin/_mocha

report-coverage: coverage
	cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js
	#rm -rf ./coverage

browserify:
	rm -rf ./dist
	mkdir dist
	# Browserify
	( printf "/*! ${NPM_PACKAGE} ${NPM_VERSION} ${GITHUB_PROJ} @license MIT */" ; \
		browserify ./ -s markdownitAbbr \
		) > dist/markdown-it-abbr.js
	# Minify
	uglifyjs dist/markdown-it-abbr.js -b beautify=false,ascii-only=true -c -m \
		--preamble "/*! ${NPM_PACKAGE} ${NPM_VERSION} ${GITHUB_PROJ} @license MIT */" \
		> dist/markdown-it-abbr.min.js

.PHONY: lint test coverage report-coverage
.SILENT: lint test
