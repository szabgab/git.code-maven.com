# pre-commit hook

This will run before the commit is saved to git. If the hook exits with exit code 0 (success) then the commit will go ahead. If the program exits with any other number (failure) then the commit will not happen.

This can be used to do all kinds of verifications.
* Does the code compile?
* Do the tests (or maybe only a subset of the tests) pass?
* Do the linters pass?
* Is the code formatted as planned? (e.g. run the prettyfier)
* Do you have a typo in the documentation?
* Are the YAML/JSON/TOML files in the repository formatted correctly?
* Have I mistakenly added passwords or other secrets?

There is also a project called [pre-commit](https://pre-commit.com/) that helps you maintain pre-commit hooks in the repository and make it easy for the developers to opt-in and set up the pre-commit hooks.


