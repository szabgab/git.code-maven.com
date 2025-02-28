Download and install git

This time we are going to talk about downloading and installing git.
There is going to be a separate episode on how to install on Windows, this is some generic overview.


{% embed youtube id="T-2S0eI8Nh4" file="en/git/download-and-install-git" %}

All the [slides](https://code-maven.com/slides/git-intro/) and the specific slides about [git installation](https://code-maven.com/slides/git-intro/getting-git).

## Linux

For RedHat, CentOS and similar yum-based Linux distributions:


```
sudo yum install git-core
```

For Ubuntu, Debian, and other apt- or deb-based Linux distributions:

```
sudo apt-get install git-core
```

You could also download the latest version of git from [git-scm](https://git-scm.com/), but usually you are better off using
the version that is packaged by the vendor of your Linux distribution. It is usually better to use the standard package-management system
of your Linux distribution.

Of course, if you have a really, really old version of Linux then, ..., then yous should probably upgrade your Linux.

Well even in older versions of Linux you are still better off using git that was packaged by the vendor.

## Windows

For Windows there will be a separate video and article, but I'd recommend downloading git from [git-scm](https://git-scm.com/).

## Apple Mac OSX

For Mac OSX you could also use the package from [git-scm](https://git-scm.com/), but probably a better way is to
first install [Homebrew](https://brew.sh/) and then that install git using:

```
brew install git
```


In case you are not familiar with it, [Homebrew](https://brew.sh/)  is a package management system for Mac OSX.
It is like <b>apt</b> or <b>yum</b> for Linux. It's a tool to install all kinds of open source projects. You'll probably
need a lot more tools than just git, so that's why it is probably better to use Homebrew for git as well.


timestamp: 2020-05-01T05:00:03
