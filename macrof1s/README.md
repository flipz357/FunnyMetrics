# Example for large difference

## Prelims

Consider this 2-class confusion matrix
```
TP FP 
FN TP

1   0
100 1
```
## calculate basic metrics 

```
precision(class1) = 1.0
precision(class2) = 0.01
recall(class1)    = 0.01
recall(class2) = 1.0

f1(class1) = harmonicMean(precision(class1), recall(class1))  = 0.02
f1(class2) = harmonicMean(precision(class2), recall(class2))  = 0.02

macroPrecision = macroRecall = 0.51 
```

## Result

```
MacroF1_amhm = arithtmeticMean(f1(class1), f1(class2)) =   0.02
MacroF1_hmam = harmonicMean(macroPrecision, macroRecall) = 0.51
Diff = 0.49
```
