# Git tag

* You release a new version of your software.
* What if later you'll need to come back to the same commit and make some changes?
* How to remember which SHA-1 was this release?

* A tag marks a specific commit, but unlike a branch it does not change when a new commit is made.

## A light weight tag

```
$ git tag v1.10
```

* The light weight tag is just like a branch that does not move. A pointer to a commit.

## Annotated tag

* An annotated tag is a full object with owner and message (annotation).

```
$ git tag -a v1.10 -m "commit message"
```

* `git push --follow-tags` only pushes annotated tags

