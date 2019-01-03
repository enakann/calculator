#!/usr/bin/env bash
pylint CalculatorLibrary --rcfile=CalculatorLibrary/.pylintrc
pylint --disable=R0903  --rcfile=CalculatorLibrary/.pylintrc CalculatorLibrary

pylint  --disable=R0201,C0111 CalculatorLibrary   ---as a list


#three kinds of error messages
W - Warning
C - Convention
R - Refactoring
----------------
# pylint: disable=C0305 in test_calculator.py to ignore specific warning

-------------
ignore files
pylint --rcfile=CalculatorLibrary/.pylintrc --ignore=test_calculator.py CalculatorLibrary

pylint
-----------
disable all and enable specific

pylint --disable=all --enable=C --rcfile=CalculatorLibrary/.pylintrc  CalculatorLibrary


-----------------------------
pylint -j 4 mymodule1.py mymodule2.py mymodule3.py mymodule4.py   --parallel execution
