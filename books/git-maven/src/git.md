# Git


Two series of slides: [Introduction to Git](https://slides.code-maven.com/git-intro/) and [Using Git](https://slides.code-maven.com/git/).
The first is new, the second is more detailed. Then follow by [Collaborative Development and Open Source Projects](https://slides.code-maven.com/collab-dev/).

You can also buy the book: [Collaborative Development using Git and GitHub](https://leanpub.com/collab-dev-git/).


## Collab dev series

* [Create an account on GitHub](./create-github-account.md)

## The Git series

* [git stash](./git-stash.md)
* [Git workflow for individuals](./git-workflow-for-individuals.md)
* [git config](./git-config.md)
* [Start Git with a local repository](./start-git-with-a-local-repository.md)

## Git on MS Windows

[Git on Windows series](./git-on-windows.md)

## Other articles

* [Filtering GitHub pull requests waiting for me](./github-pull-requests-waiting-for-me.md)
* [Minimal setup for Coverage report at Coveralls for Python projects hosted on GitHub](https://python.code-maven.com/coverall-with-python-minimal-setup)
* [Why Git is better than Subversion for Open Source Projects](./why-is-git-better-than-subversion-for-open-source-projects.md)
* [Merge only one commit from a Pull-request on GitHub](./merge-one-commit-from-a-pull-request.md)



## Getting Help for Git

Besides just typing your question in your favorite search engine, there are several places right on your command-line
that can provide you help with the commands of git.

```
$ git help             # listing the most important commands
$ git help COMMAND     # man page or local web page
$ git COMMAND --help   # the same

$ git help help        # help about the help system
$ git help --all       # list all the git commands
$ git help tutorial    # a simple git tutorial
```



## Creating a local Git repository

The power of Git comes from two main sources. Its local capabilities and its networking capabilities.

The local capabilities give you a superb version control tool. The networking capabilities allow you
to collaborate with others at ease.

Let's take a look at the local capabilities.

As mentioned earlier we are going to use the command line.

Open your terminal. Navigate to a directory where you keep your projects.

For example use a directory called "projects" and inside that directory create a subdirectory for each one of your projects.

On Linux or OSX:

```
cd
mkdir projects
cd projects
mkdir try-git
cd try-git
```

On Windows it is almost the same, except that we put the "projects" directory in the root of the c:

```
cd /c/
mkdir projects
cd projects
mkdir try-git
cd try-git
```


## Initialize git in the current directory

Type in the following command:

```
git init
```

The response will be something like this with the full path of the directory on your system.

```
Initialized empty Git repository in /Users/gabor/projects/try-git/.git/
```

This command created a directory called `.git` (with a leading dot) that contains the "database" of Git. In general you should not change anything in that directory manually.

Using the `ls` command with the appropriate flags we can see that this is the only item in our directory.

```
$  ls -Al
total 0
drwxr-xr-x  9 gabor  staff  288 Apr  6 18:19 .git
```

## How to get the most recent tag in a tag series?

Let's say a build process tags each commit that was used by a build and puts the build number on that tag.
e.g. use tags like **build-42**

How do we get the most recent one?

Update the local git repository:

```
git checkout master
git pull
```

List the 5 most recent build- tags:

```
git tag -l 'build-*' | tail -5
```

The same with full sha:

```
git tag -l 'build-*' --format '%(refname:strip=2) %(objectname)' | tail -5
```

The same with short sha:

```
git tag -l 'build-*' --format '%(refname:strip=2) %(objectname:short)' | tail -f
```


## git commits on one branch but not on another branch

```
git log one --not another
```

