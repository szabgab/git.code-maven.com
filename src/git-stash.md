# git stash - temporary saving changes


[git stash](https://git-scm.com/docs/git-stash) saves changes temporarily. It can be useful if you are in the middle of a change and suddenly need a clean working directory.


For example, you are in the middle of fixing a bug when you notice a typo in the very same spot where you are making the changes. You could quickly change the typo as well and later commit it together with the bug-fix, but then you are mixing two unrelated changes. Not a good practice. Later, when someone reads the change and wants to understand it, this mix will be confusing. It will be unclear. Was that typo fix really part of the bug fix? A better approach would be to separate the two fixes.

You could keep working on the bug creating a mental note that you'll have to fix the typo later on, but mental notes tend to disappear with time. You could also use `git stash` to push aside all the changes you made so far, make the typo fix in a clean workspace, then bring back the changes from the stash and keep working on the bug.

The way you do this:

```
$ git stash
```

will save all the changes in all the tracked file in a temporary commit in your local git repository and restore the files to the state they were in after the most recent real commit.

The response of `git stash` looks like this:

```
$  git stash
Saved working directory and index state WIP on master: 271c4b5 MESSAGE OF THE MOST RECENT COMMIT
```

With the appropriate SHA1 and the message of the most recent commit at the end of response.

Then you make the typo fix. Commit it. Then you run

```
$ git stash pop
```

this will bring back the changes that were stashed away by the most recent `git stash`. The changes saved in the stash will be merged back with changes made since you stashed them away.

Naturally, if there are change on the very same line both in the stashed change and in the change you made and committed (the typo), then this command will report a conflict and you'll have to manually resolve it. We'll discuss that later.

The response will look like this:

```
Auto-merging README
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README

no changes added to commit (use "git add" and/or "git commit -a")
Dropped refs/stash@{0} (7f14ba3a7afa71a7b61df8afdd059542b4761c76)
```

## The stash is a stack

While you are fixing the typo you might notice another issue which is even more urgent than fixing the typo. Don't worry, you can run `git stash` multiple times and it will save the current changes in the stash in separate entries. It handles the whole stash as a [stack](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)), meaning that if you called `git stash` several time then `git pop` will bring back the changes from the most recent `git stash` command. (LIFO).

## Listing the content of the stash

The command `git stash list` will list all the saved changes:

```
git stash list

stash@{0}: WIP on master: 2b71505 COMMIT_MESSAGE
stash@{1}: WIP on master: 2b71505 COMMIT_MESSAGE
```

The most recently created stash has ID 0.

## Showing the content of a stash

We can also see what is in a stash without trying to restore it.
We just need to pass the ID of the stash:

```
$  git stash show 1
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

$  git stash show 0
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

Unfortunately in the above case both set of changes look the same from the outside. Both changed the README file in one line.

We can pass the format parameters of `git diff`, for example `-p`:

```
$ git stash show -p 0

diff --git a/README b/README
index 10c055e..bc08efb 100644
--- a/README
+++ b/README
@@ -1,5 +1,5 @@
 Line one
 Line two
-Line three
+Line 3
 Line 4
 Line five
```


```
$ git stash show -p 1

diff --git a/README b/README
index 10c055e..a5a4aef 100644
--- a/README
+++ b/README
@@ -1,4 +1,4 @@
-Line one
+Line 1
 Line two
 Line three
 Line 4
```

This will show the actual diff of the change saved in the stash and now we can see that the two stashed (0 and 1) are really different.

Without any ID `git stash show` will default to the most recent stash. (stash 0)

```
$  git stash show
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

## Removing an entry from the stash

There are cases, more often than I should admit, that I save changes in the stash and then forget about them. Some time later I notice that there are a bunch of entries in the stash. I look at them and either don't remember why are they there or I recognize that the specific change is not relevant any more. I can remove individual stash entries without applying them to working directory by using the `git stash drop` command:

For example:

```
git stash drop 1
```

will drop the one before the most recent entry in the stash. Renumber all the other entries before it.

So if we had a `git stash list` like this:

```
stash@{0}: WIP on submit: 2ead3e3... Add button to main page
stash@{1}: On master: 9cc0589... Fix typo in e-mail
stash@{2}: On master: 9b80575... Introduce bug #42
```

then

```
$ git stash pop 1
```

will result in the following `git stash list`:

```
stash@{0}: WIP on submit: 2ead3e3... Add button to main page
stash@{1}: On master: 9b80575... Introduce bug #42
```

## Cleaning up the stash

If you have a bunch of entries in the stash and you don't want to bother with them any more, you can use the

```
git stash clear
```

command to remove all the entries at once.

## Stashing new, untracked files

There are cases when we have some new and yet untracked files in our repository and we would like to put all that aside.
For that we can use the `-u` also known as `--include-untracked` flag:

```
$ git stash -u
```

The only issue is that `git show` will not indicate that there are untracked files in the stash.

## Merging conflict in stash

```
$  git stash pop
Auto-merging README
CONFLICT (content): Merge conflict in README
```

The content of the README file (the one that had the merge conflict):

```
<<<<<<< Updated upstream
Line first
=======
Line 1
>>>>>>> Stashed changes
Line two
Line three
Line 4
Line five
```

We have to manually resolve it (decide what would we really like to have in that line and remove the conflict marks). For example we will change it to:

```
Line 1 first
Line two
Line three
Line 4
Line five
```

We can then check the `status`

```
$  git status

On branch master
Unmerged paths:
  (use "git reset HEAD <file>..." to unstage)
  (use "git add <file>..." to mark resolution)

	both modified:   README

no changes added to commit (use "git add" and/or "git commit -a")
```

At this point we can keep editing the file or we can commit it right away.

One thing is important to remember, because the `git pop` could not cleanly apply the changes, it did not remove the changes from the stash. You can verify that by using `git stash list`. You will need to manually remove it by running `git stash drop` as described earlier.


date: 2018-06-28T08:07:01
