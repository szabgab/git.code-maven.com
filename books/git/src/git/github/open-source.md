# Github Open Source

Environment: The project has an official repository to which you have read access but not write access.

## Traditional

1. Go to the official repository. Let's call it `https://github.com/OWNER/PROJECT`
1. Fork the official repository (create a copy in your GitHub account). `https://github.com/YOU/PROJECT`
1. Clone your fork to your computer. `git clone git@github.com:YOU/PROJECT.git`
1. Create a branch for the changes. `git checkout -b FEATURE
1. Make the changes with one or more commits on the FEATURE branch.
1. Push out the changes to your fork. `git push -u origin FEATURE`.
1. Go to your fork on GitHub and send a Pull-Request.

If the OWNER accepts the PR and merges the changes then you can delete the local clone and the fork in your GitHub user and maybe start again.

If the OWNER asks for improvement, then you can go back to your local branch, make more changes, commit them and push them out. The PR will be automatically updated and the OWNER is notified.

### sync with official repository

If the official repository of the PROJECT made progress then the OWNER might ask you to rebase your branch to the most recent changes. Actually, even if the OWNER did not ask for it you might want to rebase your branch onto the master branch from time to time to sure your branch does not get out of sync of the main development of the project.

1. Locally check out the central branch of the PROJECT. (Usually called `main` or `master`.)
1. Map the central repository as a new remote. People usually use the name `upstream` for this:  `git remote add upstream https://github.com/OWNER/PROJECT`
1. Check out your branch `git checkout FEATURE`.
1. Rebase resolving any conflict that might be encountered. `git rebase master`.
1. Push out the updated branch. For this you'll need to use the force: `git push --force`. The OWNER will be notified.


## Simple case - Improved process.

1. Go to the official repository. Let's call it `https://github.com/OWNER/PROJECT`
1. Create a clone to your computer. `git clone https://github.com/OWNER/PROJECT`. It will be referred to as `origin`.
1. Create a branch for the changes.
1. Make the changes with one or more commits.
1. Fork the official repository (create a copy in your GitHub account).
1. Add the fork as a remote `git remote add fork git@github.com:YOU/PROJECT.git`. It will be referred to as `fork`.



