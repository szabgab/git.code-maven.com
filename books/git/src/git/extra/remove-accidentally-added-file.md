# Remove file added accidentally in last commit

* Create a bunch of files. Some we would like to track some we don't.
* Use `git add .` to add all the files.
* `git commit -m "add all the files"` to commit.
* Realized we added files we did not want to.
* Remove the unwanted files `git rm --cached FILENAME` (but keep them in the workdir.
* `git commit -m "add only the important files" --amend`

