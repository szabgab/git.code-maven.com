# Rename branch

Add a new branch-name and remove the current branch-name.

```
git checkout OLD
git branch -M main
```

It is basically the same as:

```
git branch main
git checkout main
git branch -d OLD
```

