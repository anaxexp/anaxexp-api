-include .env version

API_BRANCH = $(shell cat ./.anaxexp-api/BRANCH)
API_VERSION = $(shell cat ./.anaxexp-api/VERSION)

export API_BRANCH
export API_VERSION
update-readme:
	gotpl ./tpl/readme.tpl.md > README.md
.PHONY: update-readme