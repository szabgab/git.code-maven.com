Merge only one commit from a Pull-request on GitHub


Recently I got a pull-request for one of my projects. The pull request had two changes in it. One of them I wanted to accpet,
but for the other one I had a much simpler solution and thus I wanted to only merge the change that was really good.


I am sure there is a better way than this, especially if there are more commits in that pull request and I
want to [cherry-pick](https://git-scm.com/docs/git-cherry-pick) some of them, but for now I did
not need to learn that. Here is what I did:

```
git remote add somename  https://github.com/username/repo.git
git fetch somename
git checkout somename/barnchname

git log
git show sha

git checkout master
git merge sha

git remote remove somename
git push
```

## In details

```
git remote add somename  https://github.com/username/repo.git
```

Attach the repository of the person sending the pull-request to 'somename' were I actually use the 'username' of the other
person to make it easier to identify.

```
git fetch somename
```

Bring over all the changes from the repository of the other person.

```
git checkout somename/barnchname
```

Here 'somename' is the name I used to refer to the other persons repository.
'branchname' is the name of the branch the other person used for the changes in the pull request. This
can be 'master' though if the other person did it well, then this will probably be some other branch name.

```
git log
```

Just looking around making sure we see the list of changes by the other person.

```
git show sha
```

Here 'sha' is the sha of the specific change I wanted to merge. (the 40-char string)

```
git checkout master
```

Switch back to my main branch.

```
git merge sha
```

Merge the specific sha. (Here too 'sha' is that 40-char string identifying the change)

```
git remote remove somename
```

Remove the connection to the remote repository of the other person.

```
git push
```

Push out to your own remote repository.



timestamp: 2015-12-26T09:30:01

