# Forking workflow


* Joe has a local and a remote repository.  https://github.com/joe/demo
* Mary "fork" the repository of Joe creating a remote copy of her own: https://github.com/mary/demo
* Mary clones her remote repository to the local disk
* Mary creates a local branch called 'feature', makes some changes, pushes the changes out to the 'feature' branch in her own remote repo.
* Mary sends a "pull request" to Joe asking Joe to integrate the changes to the `main` branch of his own repository.
* If Joe has comments, he makes them. Mary can make further changes in the 'feature' branch, and push them out.
* Once Joe is satisfied with the pull-request he accepts it merging the changes to his own `main` branch.
* Mary sets up the remote repository of Joe to be a remote repository of her own. (She only needs to do this once per repo.) git remote add upstream https://github.com/joe/demo.git
* Mary changes to `main` locally, and pulls from Joe: `git checkout main` and `git pull upstream main`
* Mary can then delete the local and remote 'feature' branch.
* If Mary already has other  feature branchese she might want to rebase them onto `main` so they will be based on the most recent changes.


