#!/bin/bash

# add arbitrary redundant triplets
for i in 2 3 4 5 7 9 12 15 25 35 50 75 100 150 500;
do
	sed '$ s/.$//' _cand.txt > cand$i.txt
	for j in $(seq 1 $i);
	do
		echo "    :arg0 f" >> cand$i.txt
	
	done
	sed -i -e '$s/$/)/' cand$i.txt
done

# clone this metric that's commonly used for evaluation
git clone https://github.com/snowblink14/smatch.git >/dev/null 2>/dev/null
cd smatch

#set it to the latest commit that reproduces the bug (this is the up-to-date repo as of Oct 2024)
git checkout c01a838 >/dev/null 2>/dev/null
git clean -df >/dev/null 2>/dev/null

# run metric over our arbitrary inputs
# the more wrong the input the higher the score...
python smatch.py -f ../_cand.txt ../ref.txt

for i in 2 3 4 5 7 9 12 15 25 35 50 75 100 150 500;
do
	python smatch.py -f ../cand$i.txt ../ref.txt
done

############ FIX #############
# A fix of the problem can be achieved by using a standardized metric: https://https://github.com/flipz357/smatchpp #
############ END #############

