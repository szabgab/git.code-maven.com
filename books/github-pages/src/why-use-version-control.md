## Why use version control?

If you are not familiar with git, GitHub, or in general Version Control yet, then this background info for you.

As you develop something weather a software, an article you would like to publish or an agreement to rent a flat you work in incremental steps. After every step you have a new version of the document(s). You, as everyone else, probably have some way to keep track of these version. For example by creating a copy of the file with the date being part of the name.  e.g. `agreement_2025_10_10.doc` and `agreement_2025_10_11.doc`. You might just number the: `agreement_1.doc`, `agreement_2.doc` etc. If you have many files in the "project" you might create a folder with such name and copy all the files there.

This is basically a home-made version control system.

It works ok if you only have one file and if you are the only author, but once you have multiple authors then you have to make sure only one person updates the file at the same time or you will create a mess. You won't be able to merge the changes made by multiple people to create a consistent next version of the file.

While you might have all the version of the file it would be rather difficult to know which change was made when, by whom, and why?


Luckily there are many systems that can help you with this and software developers have been using these systems for ages. The generic term for such a system is VCS - Version Control System,
or maybe SVCS - Software Version Control System. The most popular one among all the VCSs is called [git](https://git-scm.com/). It is open source and almost everyone uses it.

In order to make it easier to collaborate among many developers several cloud-based git-hosting services were created. The most popular among them is [GitHub](https://github.com/).

In GitHub each user can have as many repositories as they want. A repository is basically a database holding all the files and all the changes to all the files in a single project.
GitHub has a feature that allows us to generate a web site based on the content of one or more of such repositories.

At the beginning of this book we are going to use the web interface of GitHub without installing anything on our computer.

Some later parts of the book will be much easier to follow if we can install certain programs locally and use `git` to store the changes and to communicate the changes to the server.

---


* Everyone uses some version control. (e.g. by copying the document with a date suffix).
* There are many version control systems (VCSs).
* `git` is the de-facto standard these days. It is open source and free. It is integrated in many tools.
* [GitHub](https://github.com/) is the most popular cloud-based hosting service for `git` repositories with many extra features.

* In this session first we will use `git` only via the web-site of GitHub. Only some later chapters require the installation of git locally.


