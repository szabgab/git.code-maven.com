# Parallel work - Locking or not?

In VCS-es there are two major process of handling parallel work:


## Lock - modify - unlock

Before I can start working on a file I need to lock it. After modification I unlock it.

While it is locked others cannot change the file.

This helps avoiding conflicts, but the price is very high. It means every else has to wait till I finish my changes.
What if I get sick and can't work for several days?


## Copy - modify - merge

Allow everyone to make changes to every file. Then when the files are integrated merge the changes.

Advantage: allows parallel work by multiple people.

Disadvantage: Several types of conflicts.



