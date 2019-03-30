cd ~/repos

#git clone --recurse-submodules -j8 git@github.com:rbowden91/robo50
cd robo50/pycparser
python setup.py develop
cd ../centipyde
python setup.py develop
cd ../repair50
python setup.py develop
