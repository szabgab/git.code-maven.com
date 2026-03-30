# Revert local changes

Changes that were made to the working copy:

```
$ git restore file-name
$ git checkout file-name
```

Changes that were already staged using git add:

```
$ git reset HEAD file-name
```

Remove the last change that was already committed and make the branch point to previous commit.

```
$ git reset --hard HEAD~1
```

Do NOT do this if the change was already made public.

