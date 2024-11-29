#!/bin/bash

# clone this metric that's commonly used for evaluation
git clone https://github.com/snowblink14/smatch.git >/dev/null 2>/dev/null
cd smatch

#set it to the latest commit that reproduces the bug (this is the up-to-date repo as of Oct 2024)
git checkout c01a838 >/dev/null 2>/dev/null
git clean -df >/dev/null 2>/dev/null

# run metric over our arbitrary inputs
# the more wrong the input the higher the score...

# we set the reference to this amr here
REF=../test.txt


# We run the script 10 times
for i in {1..10}
do
	echo "matching the file $REF against itself, trial number $i"
	python smatch.py -f $REF $REF
done

############ FIX #############
# A fix of the problem can be achieved by using a standardized metric with an optimal solver: https://https://github.com/flipz357/smatchpp #
############ END #############

