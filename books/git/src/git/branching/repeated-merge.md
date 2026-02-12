# Repeated merge

```
$ git checkout featurey
# edit app.pl add another line
$ git add app.pl
$ git ccommit -m "another line"

$ git checkout main
$ git merge featurey
```


This time the merge was automatic, and it only included the changes since the previous merge.


