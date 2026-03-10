# CPAN Testers

[CPAN Testers](https://cpantesters.org/) is an excellent service offered by volunteers of the Perl community. The volunteers have bot that monitor the upload queue of CPAN, run the tests of the recently uploaded modules and report the results to a central database.

You can see the results on the on their web site and also when you visit the page of a module on [MetaCPAN](https://metacpan.org/) you will see the stats of the "Testers" in the side-bar.
e.g. [DBI](https://metacpan.org/pod/DBI)

So why should we also set up GitHub Actions?

A few reasons:

* You get faster feedback. You get feedback already during development, not only after uploading a package to CPAN.
* Tests can run on pull-requests as well giving fast feedback to contributors.
* You can make customization and special setups (e.g. setup a Postgres database to use during the testing)
* You can use secrets to connect to external services (e.g. APIs).

