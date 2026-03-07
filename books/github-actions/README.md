
Workflow:
   dev - branch
   pull-reques will run all the tests and merge into "dev" branch only if it is a fast-forward

TODO: link to these examples
TODO: Add dependabot to these repos so they will be up to date.
TODO: Add manual triggering so I can re-run the jobs during demo.  workflow_dispatch:

https://github.com/szabgab/github-actions-docker-compose

https://github.com/szabgab/github-actions
https://github.com/szabgab/github-pages-by-github-actions
https://github.com/szabgab/github-actions-experiment

https://github.com/szabgab/demo-github-actions
https://github.com/szabgab/github-actions-demo-20201224
https://github.com/szabgab/collect-github-actions
https://github.com/szabgab/github-actions-demo-20201029


TODO: Add section on setting up my own runner on
    * Linode
    * Digital Ocean
    * GCP
    * AWS
    * etc.


Link to ? https://code-maven.com/github-actions or shall I move the content to git.code-maven.com ?


    * [The Perl Planetarium](https://perl.theplanetarium.org/)

Minimal Ubuntu
* [Bash](https://github.com/szabgab/github-actions-bash)
* [Crystal](https://github.com/szabgab/github-actions-crystal)
* [Perl with Build.PL](https://github.com/szabgab/github-actions-perl-build/)
* [Perl with Dist::Zilla](https://github.com/szabgab/github-actions-perl-dist-zilla/)
* [Perl with Makefile.PL](https://github.com/szabgab/github-actions-perl-makefile/)
* [Perl with Makefile.PL](https://github.com/szabgab/github-actions-perldocker-perl-tester) using perldocker/perl-tester image
    Create a job without a matrix where the version number on the image is clearer.
    Then have the one with matrix.
    https://hub.docker.com/r/perldocker/perl-tester/
* [PostgreSQL](https://github.com/szabgab/github-actions-postgresql)
* [MySQL](https://github.com/szabgab/github-actions-myqql)
* [Python](https://github.com/szabgab/github-actions-python)
* [Redis](https://github.com/szabgab/github-actions-redis)
* [Rust](https://github.com/szabgab/github-actions-rust)
* [Solr](https://github.com/szabgab/github-actions-solr)
* [GitHub Actions with parameters](https://github.com/szabgab/github-actions-with-parameters)
* [Run code if file changes](https://github.com/szabgab/github-actions-run-code-if-files-change)
* [Incremental caching demo using S3 compatibale object storage of Linode](https://github.com/szabgab/github-actions-with-linode-s3)
* [Cache restore and save](https://github.com/szabgab/github-actions-restore-and-save) (not doing what I wanted)
* [Environment variables](https://github.com/szabgab/github-actions-environment-variables)
* [Check the owner](https://github.com/Code-Maven/github-actions-dont-run-in-forks/) - don't run in forks.

* [Run only on the main branch and the pr/* branches](https://github.com/szabgab/github-actions-for-pr-branches) to reduce CI runs in the organization, but allow CI runs for contributors in their forks



* [Try others](https://github.com/szabgab/try-github-actions/)

