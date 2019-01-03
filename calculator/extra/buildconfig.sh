final one
#########
pip install -r calculator/requirements.txt
pylint -f parseable calculator | tee pylint.out
#py.test --junitxml results.xml calculator
nosetests --with-xunit --all-modules --traverse-namespace --with-coverage --cover-package=calculator --cover-inclusive
python -m coverage xml --include=calculator*

/etc/pylintrc for default global configuration
~/.pylintrc for default user configuration
<your project>/pylintrc for default project configuration (used when you'll run pylint <your project>)
wherever you want, then use pylint --rcfile=<wherever I want>



#!/usr/bin/env bash
virtualenv env
. env/bin/activate
pip install -r requirements.txt
flake8 --exclude=env* --statistics
pytest -v --cov=calculator
py.test --junitxml results.xml tests.py


virtualenv env
. env/bin/activate
pip install -r requirements.txt
PYTHONPATH=''
pylint -f parseable -d I0011,R0801 calculator.py | tee pylint.out
nosetests --with-xunit --all-modules --traverse-namespace --with-coverage --cover-package=calculator --cover-inclusive
python -m coverage xml --include=calculator*

