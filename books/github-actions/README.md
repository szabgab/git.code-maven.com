
Workflow:
   dev - branch
   pull-request will run all the tests and merge into "dev" branch only if it is a fast-forward

TODO: link to these examples
TODO: Add dependabot to these repos so they will be up to date.
TODO: Add manual triggering so I can re-run the jobs during demo.  workflow_dispatch:

https://github.com/szabgab/github-actions
https://github.com/szabgab/github-pages-by-github-actions
https://github.com/szabgab/github-actions-experiment

https://github.com/szabgab/demo-github-actions


TODO: Add section on setting up my own runner on
    * Linode
    * Digital Ocean
    * GCP
    * AWS
    * etc.


Link to ? https://code-maven.com/github-actions or shall I move the content to git.code-maven.com ?

    * [The Perl Planetarium](https://perl.theplanetarium.org/)

* Perl:
    Create a job without a matrix where the version number on the image is clearer.
    Then have the one with matrix.
    https://hub.docker.com/r/perldocker/perl-tester/

DBI

* Terraform ?
* Go over all the recommended workflows

* dependabot configurations
* Setup CI to allow running in main branch and in contrib/* branches on push


Demo the trigger types:

```yaml
on:
  pull_request_target:
    types: [opened, reopened, synchronize, labeled, unlabeled]
```

explain the permissions:

```yaml
permissions:
  contents: read
  pull-requests: write

permissions:
  contents: write
  pull-requests: write


```

Explain the github.actior condition:

```
    if: ${{ github.actor == 'dependabot[bot]' || github.actor == 'szabgab' }}
```


Auto-merge Dependabot PRs (patch/minor only) https://github.com/Giordano10/VCSP

```
        uses: pascalgn/automerge-action@v0.16.4
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          mergeMethod: squash
          mergeWhen: green # Só faz o merge se os testes passarem (ficarem verdes)
          allowAuthor: dependabot[bot]
```

```
      - name: Commit do Gráfico
        uses: stefanzweifel/git-auto-commit-action@v7
        with:
          commit_message: "docs: update security trend chart"
          file_pattern: .vibe/stats.json .vibe/assets/bug_trend.png README.md
          branch: ${{ github.ref_name }}
```


```
      - name: Upload coverage data
        uses: codecov/codecov-action@v5
        with:
          env_vars: ENV_NAME,IO_MARK
          files: test-data/coverage.xml
          use_oidc: true
          fail_ci_if_error: true
```

