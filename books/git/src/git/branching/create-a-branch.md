# Create a branch


* Show on which branch are we on

```
$ git branch
* main
```

* Create a branch and list the branches again.The `star` indicats the current branch. 

```
$ git branch featurex

$ git branch
  featurex
* main
```

* Switch to another branch

```
$ git checkout featurex
Switched to branch 'featurex'

$ git branch
* featurex
  main
```

Make some changes to app.pl, and commit them to the repository


## Create a branch and swicth to it in one command

* Alternative way that creates a branch and checks it out:

```
git checkout -b featurex
```

* Make some changes to file, and commit it to the repository.
* Use `gitk --all` to see the branch.


