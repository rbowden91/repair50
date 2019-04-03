SHELL := /bin/bash

deploy:
	git commit -am "update" && git push
update:
	for i in centipyde repair50 team_search; do
	    cd $i
	    git checkout .
	    cd ..
	done
	git checkoout .
	git pull && git submodule update

.ONESHELL:
