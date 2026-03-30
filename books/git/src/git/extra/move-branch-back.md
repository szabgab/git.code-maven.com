# Move main branch to an earlier commit

What can I do if I made progress on a branch (e.g. master, main, FEATURE) and then I realize I don't want these most recent commits?

If these changes were already shared by others (eg. you pushed them to GitHub), then you should probably not keep the changes and only revert their effect. Others, who have seen your commits, might have already built on top of those commits. If you remove them, you effectively cut the branch under them. Do it only after communication and even then, bring them some cakes.

A destructive way to remove the most recent 3 commits and reset the current branch (main, master, or FEATURE) to 3 commits ago.

```
git checkout BRANCH
git reset HEAD~3 --hard
```

A slightly safer way is to first create a branch on the current commit. Then reset the BRANCH to 3 commits agon. This will still ruin your relationship with your co-workers if they already depend on the changes in the BRANCH, but you can still get to these changes as the `keeper` branch, well, keeps them. (You can use any other name for this "keeper" branch.)

```
git checkout BRANCH
git branch keeper
git reset HEAD~3 --hard
```

