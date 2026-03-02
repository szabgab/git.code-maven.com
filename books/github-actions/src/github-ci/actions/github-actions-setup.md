# Setup GitHub Actions manually

You can do this via the web interface of GitHub or you can clone the project locally, add the file (and later make the changes) locally, and then push the changes to GitHub.

* Create a folder in the root of your repository called `.github/workflows`.
* Create a [YAML](https://yaml.org/) file in it.
    * The name of the file does not matter.
    * The extension must be either `.yaml` or `.yml`.
    * I often call it `.github/workflows/ci.yaml`.
    * See a [minimal example](https://github.com/szabgab/github-actions-minimal/blob/main/.github/workflows/ci.yml).
* Commit the changes and if you worked locally, push them to GitHub.
* Once you did this visit the `Actions` tab of your repository on GitHub. After a few seconds you should see the indication that a job is running and then after a while you will see the results.

---


* Next we'll see examples for these YAML files.

