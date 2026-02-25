# Merge with conflict

```
$ git branch featurey
$ git checkout featurey
# edit the app.pl file , add a line, commit the change

$ git checkout main
# edit the app.pl file, add a line, commit the change

$ git merge featurey
Auto-merging app.pl
CONFLICT (content): Merge conflict in app.pl
Automatic merge failed; fix conflicts and then commit the result.
```
{% embed include file="src/examples/out/app_with_conflict.pl" %}

Edit the app.pl file and resolved the conflict, removing the marks and writing the correct code.

```
$ git add app.pl
$ git commit -m "featurey merged"
```

