# Examples of funny metric behavior

## Achieve 200 F1 score and identity mismatch!

Achieve 200 F1 score:

```
cd semantic_parsing
bash reproduce_200f1.sh
```

Another bug is when matching the a grap against itself (which should give 100 F1, but doesn't):

```
cd semantic_parsing
bash reproduce_reference_match_failure.sh
```

## Macro F1 - Macro F1 = 50

Doppelganger metrics with a large difference.

```
cd macrof1s
```
