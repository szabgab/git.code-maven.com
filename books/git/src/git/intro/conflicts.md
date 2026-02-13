# Conflicts


By and large conflicts Can be avoided with good planning and frequent integration. CI - Continuous Integration.


* Content (textual) merge conflicts
    * When two developers change (almost) the same line in the same file.
* Structural / File system conflicst
    * "Evil twin" - when two developers create a new file with the same name.
    * Modify/Delete - when one developer modifies a file and the other deletes it.
    * Modify/Rename - when one developer modifies a file and the other deletes it.
    * File rename - when two developers rename the same file.
* Build (compile) conflicts
    * One developer renames a function, the other adds a call to the function using the old name.
    * One developer changes the signature of a function, the other adds a call to the function using the old signature.
    * One developer chnages the type of a variable, the other adds another use of the variable relying on the old type.
    * ...
    * In these cases the automatic merge will work, but the resulting code will not work properly or won't even compile.
    * In the dynamic language (Perl, Python, Ruby, PHP, JavaScript) some of the problems mentioned in "build conflicts" will only show up during run-time.
* Semantic (runtime) conflicts
    * One developer changes what a function does, the other adds a call to the function assuming the old meaning.
* Dependency/Library conflicts
    * When two developers introduce the use of two different version of a 3rd party library.
    * When two developers use different 3rd party libraries to solve the same problem. (This is just bloat, not a real conflict.)


## Factors contributing to conflicts

* Lack of communication.
* Central files that everyone needs to change.
* Long-lived branches.
* Avoiding integration in the same branch.
* Large-scale refactoring. (e.g. renaming a function that is used accross the whole project)


## How to avoid conflicts?

* Communication.
* Planning.
* Frequent (Continuous) Integration.
* Frequent merge/rebase of the branches.
* Automated build (compile) system.
* Automated (unit and integration) tests.

## How to resolve conflicts?

* Three-way merge - comparing the two branches against common ancestor.


