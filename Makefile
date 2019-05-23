SHELL := /bin/bash
.ONESHELL:

deploy:
	for i in centipyde robo50 team_search; do
	    cd "$$i"
	    git commit -am "update"
	    git push origin HEAD:master
	    cd ..
	done
	git commit -am "update" && git push

update:
	for i in centipyde robo50 team_search; do
	    cd "$$i"
	    git checkout .
	    cd ..
	done
	git checkout .
	git pull && git submodule update

setup:
	for i in pycparser centipyde robo50; do
		cd "$$i"
		python setup.py develop
		cd ..
	done

