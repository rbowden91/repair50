cd "$( dirname "${BASH_SOURCE[0]}" )"

cd pycparser
python setup.py develop
cd ../centipyde
python setup.py develop
cd ../robo50
python setup.py develop
