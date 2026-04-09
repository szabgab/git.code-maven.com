# Parallel work - Locking or not?

In VCS-es there are two major methodologies of handling parallel work:


## Lock - modify - unlock

* Before I can start working on a file I need to lock it. After modification I unlock it.
* While it is locked others cannot change the file.

This helps avoiding conflicts, but the price is very high. It means everyone else has to wait till I finish my changes.
What if I go on vacation? What if I get sick and can't work for several days?


## Copy - modify - merge

* Allow everyone to make changes to every file.
* When the files are integrated merge the changes.

Advantage: Allows parallel work by multiple people.

Disadvantage: There can be several types of conflicts.


Later on we'll discuss the various types of conflicts. How to avoid them and how to resolve the conflicts if they happen.

