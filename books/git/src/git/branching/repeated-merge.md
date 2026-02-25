# Repeated merge

```
$ git checkout featurey
```

Edit app.pl add another line

```
$ git add app.pl
$ git commit -m "another line"

$ git checkout main
$ git merge featurey
```


This time the merge was automatic, and it only included the changes since the previous merge.

