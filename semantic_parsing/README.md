# Summary of some evaluation issues in semantic parsing

## Reproduce 200 F1 score bug 

Simply call

```
bash reproduce_200f1.sh
```
Find more information in this script.

## Reproduce reference match failure (match(x, x) < 100 F1)

Simply call

```
./reproduce_reference_match_failure.sh
```
Find more information in this script. Credits to Bram Vanroy for providing this interesting example.

## How to fix the bugs and evaluate more properly?

A fix of these problem can be achieved by using a [standardized metric](https://github.com/flipz357/smatchpp) that uses an optimal solver.
