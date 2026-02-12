# Simple automatic merge


```
$ git checkout main 
```

* see that the changes have "disappeared"
* make some other change on the `main` branch to README.txt
* see that the two have diverged (use gitk)
* merge the feature into `main`


```
$ git merge featurex
Merge made by the 'recursive' strategy.
 app.pl |    1 +
 1 file changed, 1 insertion(+)

$ gitk --all
```


