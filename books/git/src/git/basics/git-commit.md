# Commit first file

* `commit`

Commit the changes from the staging area. Provide a commit message using the `-m` flag.

In the response we can see the name of the branch `main`, in our case and part of the sha-1 hash of this commit.

```
$ git commit -m "Add README"
[main (root-commit) 1cd95a6] Add README
 1 file changed, 1 insertion(+)
 create mode 100644 README.txt
```

Then if we check the `status` we can see that the working directory is clean.

```
$ git status
# On branch main
nothing to commit, working directory clean
```

