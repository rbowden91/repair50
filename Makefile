SHELL := /bin/bash

deploy:
	for i in centipyde repair50 team_search; do
	    cd "$$i"
	    git commit -am "update"
	    git push origin HEAD:master
	    cd ..
	done
	git commit -am "update" && git push

update:
	for i in centipyde repair50 team_search; do
	    cd "$$i"
	    git checkout .
	    cd ..
	done
	git checkout .
	git pull && git submodule update

.ONESHELL:
