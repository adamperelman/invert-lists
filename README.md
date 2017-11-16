# Invert lists
Takes a bunch of lists like

```
# sample input
A: B, C
B: D, E
C: A, B, E
```

and converts to them to "inverse" format, with keys as values...

```
# sample output
A: C
B: A, C
C: A
D: B
E: B, C
```
