# Git workflow for individuals


[Git](./git.md) is excellent for collaboration among members of a team regardless of their location, but it can also make the life of the lone developer easier. Besides, looking at possible workflows for individual developers will make it easier to understand the strategies behind the various git workflows for teams.


As a lone developer I assume you have a local repository, probably cloned from some remote repository. You use the remote repository both as a backup for your local repo and maybe you also use it as the base to release your software.

Release here can mean deploying to a server or creating a zip file of the source file and uploading it to some public server. It can mean compiling and creating jar files, or sending to the Appstore or Google Play. For our purposes that does not matter. We won't delve into the release process, only that we have a notion of something released.

Let's also assume your project has made some progress, you already have released several version.

## Small bug fix or small feature

Now you need to make a small bug-fix or add a small feature that will take a few minutes, maybe an hour.

You make the changes locally.

Test it with your automated tests. (You do have tons of automated tests, don't you?)

Commit to the local master branch.

As you are already done with the fix you can not `tag` it and push it out to the server.
That can start an automated release and deployment process or you might do it manually.
The point is that for such small change there is not much **workflow**.

## Interruption in work

What if while you are working on that small change you notice a typo in the code and you'd want to fix it?
No problem, you can use [git stash](./git-stash.md) to save the changes temporarily, make your small fix,
get back from the stash.

## Longer work

What if the feature you are about to add is much bigger? What if you expect it to take a few days to implement
adding, removing, or just changing a few thousand lines of code?

Would you just write the whole thing, create a single commit at the end of the week, and release it that way?

This can certainly work, but what if after 4 days of great work, you have a bad few minutes and make some horrible mistakes
in your change? How can you get back to the good state you had after 4 great days?  You can try to press "Undo" in your editor
several times, but it won't be easy to find the exact location in your Undo history. Besides you might have made changes in several files. Maybe even some environment changes outside your main editor.

In any case it is a pain.

A better approach is to have frequent commits. When I work I often commit single line changes if that makes sense. Every small change that has some value gets a commit. Adding a new function. Writing a test case. etc. It will make it much easier to go back to a known good state. Also commits are very cheap in git. The biggest obstacle I see in many places is the that people are not used to work that way. In older and more "corporate-style" version control systems making a change was hard and corporates created extra difficulties by adding all kind of processes around it.

Make sure your company does not have that kind of issues. Creating a commit should be very easy.

So called "gated check-in processes" are usually a hindrance to fast paced development and don't provide the expected value.

Gated check-in processes have some kind of requirements for every commit. For example that you include the ticket number of an open ticket. Or that you write 5 lines of explanation why did you make a change. It is better to trust the developers.

OK, so I hope we can agree that if you have a feature to implement that will take several days you should make commit often. Usually every few minutes or so.

## Urgent task, other feature

What if you are now notice a typo? You can use stash again as earlier, but the fixing of the typo now will be in the middle of the changes towards that new feature. There are two issues with this:
Later when you look back it will be unclear why is that typo fix there.
You cannot really deploy this typo fix until the end of the feature. Unless you are ready to deploy a partially implemented feature.

While you are working on this new multi-day feature you might realize there is something more urgent to do. Maybe you receive a serious bug report or have a brilliant idea to improve your product that will only take half a day.

You can stop working on the 5-day long feature, fix the bug or implement the brilliant idea, but you'll face the same problem.
Now you have a partially implemented feature on your "master" branch. Either you release the code that way or you have to finish this project before you do anything else.

There is another issue however. What if you want to abandon the feature? now you have a series of commits of this feature mixed with commits that are typo fixes, bug fixes, and brilliant ideas.
Reverting and removing the changes that belong to that feature will take time and quite some energy.

I am not saying this mode of work is impossible, I am just showing the potential problems you might face.

## Working in feature branches

An alternative to always working on the "master" branch is to work in feature branches.
When you start working on a new feature you create a branch:

```
$ git branch feature-name
$ git checkout feature-name
```

(In short form `git checkout -b feature-name`.)

You work there. Make frequent commits. After you are done with the feature, you merge the branch back to "master". Add a tag and release it.

If there is an urgent bug in the production code that needs to be fixed you stop what you are doing. You might even stash the current changes. Then you switch to the "master" branch that contains the latest released version of the code. Including the bug.
you fix the bug. Commit. Tag. Release. 

Assuming this is something you can do in a few minutes with a single commit.
If it was a bigger urgent change then after switching to the "master" branch you'd create another feature branch, e.g.

```
$ git branch brilliant-idea
$ git checkout brilliant-idea
```

Implement that in its own branch. Merge back to "master". Tag. Release.

Then you'd go back to the feature branch:

```
$ git checkout feature-name
```

and keep working till that is finished or till you are interrupted again.


This workflow allows the separation of features. If you decide to abandon one of these projects you can simply remove the branch
without interfering with the rest of the work.

## Follow the master: Rebase

There is one problem however with this model.

The problem is that if you work on long lived branch and you also make other changes in separate branches that end up in "master",
then after a while the two branches, "master" and "feature-name" will diverge substantially making it hard to merge them together.

In order to avoid such divergence it is best to keep rebasing all the feature branches to the latest version of "master" as it progresses.

What is rebase?

Let's assume this history in which time flows from left to right. After some older changes we created the B-branch at the C (common) SHA1. From that point both "master" made progress (M1-M4) and the feature branch made progress (B1-3).

```
older - C - M1 - M2 - M3 - M4
         \
          \ B1 - B2 - B3
```

We need to switch to our feature branch and then rebase to master with the following commands:

```
$ git checkout feature-name
$ git rebase master
```

The result will look like this:

```
older - C - M1 - M2 - M3 - M4
                             \
                              \ B1 - B2 - B3
```

that is, we moved the changes of the feature branch as if they started from M4.

This means the branch "feature-name" now incorporates all the history of the "master" branch
and thus we eliminated all the divergence.

The rebase command will be automatic if the changes made on master and on the feature-name branch were done in
different areas of the code.
If there are changes in overlapping areas however, we will have merge-conflicts during the rebase. We will have to
resolve these merge-conflicts as the rebase progresses.

## Why is continuous rebase better than merge at the end?

Why is it better to frequently rebase the feature branch, and frequently experience the pain that goes together
with resolving merge conflicts? Why wouldn't it be better to leave it till we finish the feature and do the merge
only then?

This is part of what we call Continuous Integration.

The assumption is that if dealing with merge-conflicts hurts, and it does, then it is better to do many small ones
than one big one at the end of the project. This approach also allows us, (in case you are alone it allows you)
to notice early that changes made on the master branch are in real conflict with changes made on the feature branch.

This early recognition will allow use to make corrections to our design or correct the route we took.

## Rebase before every merge

To go to the extreme, some people rebase their branch when the feature is done, just before they merge it back to "master".

This means that the merging back will be unnoticeable. If we take the above example. Assuming the branch is now ready we could merge it back to "master" with the following commands:

```
$ git checkout master
$ git merge feature-name
```

The result will look like this:

```
older - C - M1 - M2 - M3 - M4 - B1 - B2 - B3
```

You won't have a separate commit for the merge. The history of the project would look like one long straight path.

The only drawback of this approach that I can see is that now it is really hard to know which commits were part of the implementation of any given feature. For this it is important to include some identification in every commit. E.g. the number of the issue (ticket) describing the feature.

![](/img/Git-Logo-2Color.png)

## Shell scripts to demo use-cases

Branch that can be merged without any problem as master has not moved at all.

```bash
{{#include examples/git/branch-and-merge-fast-forward.sh }}
```

Branch merged with a merge commit, but without any conflict as the chanes on "master" and the changes in the branch were in different
files or different areas of the same file.

```bash
{{#include examples/git/branch-and-merge.sh }}
```

Branch and rebase:

```bash
{{#include examples/git/branch-and-rebase.sh }}
```


## Comments

You don't need to rebase (though if you are working alone, you could, and there are advantages to that), but if you want your features nicely separated each on its own feature branch (so that `--first-parent` looks like a string of features), you can enforce merge even in fast-forward situation with `git merge --no-ff` (and I think it is possible to configure Git to have this behavior automatic).

BTW. I have heard about git-imerge tool that allegedly has advantages of both merge and rebase, but never used it myself.


* git
* rebase
2018-06-29T08:30:01
