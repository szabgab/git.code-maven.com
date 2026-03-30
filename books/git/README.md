Git merge notes

* If you don't have time now to deal with the merge (or rebase) conflict resolution, just back out:

git merge --abort

git rebase --abort


* Physical conflict - chaning the same line.

* Automerge works but there is a syntactic or logical conflict that break the code. (compile-time or run-time error)

* Automerge works, but still, how can we know that the result is correct?


LFS - Git Large File Storage

describe
show
log
ref
ref-log
fetch information about the current commit

Git blame for a line and show the specific commit.

Git show when a file was deleted.

Git find when a file was renamed.

Show 3-way merge tools

git tag - show the differnt tags

git switch -c BRANCH ?

bisect:
    Find where a bug was introduced into the code-base

https://github.com/Perl-Toolchain-Gang/CPAN-Meta-Requirements/pull/38


