# GitHub Actions for Perl

Each Perl project uploaded to CPAN has a configuration file that deal with packaging and installations.
There are several possibilities and base on the file we'll need a different workflow.

* If the repository has a file called `dist.ini` in the root then the project uses [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla). We have two examples for this case.
* If the repository has a file called `Build.PL` in the root then the project uses [Module::Build](https://metacpan.org/pod/Module::Build). We have an example for this case.
* If the repository has a file called `Makefile.PL` in the root then the project either uses [ExtUtils::MakeMaker](https://metacpan.org/pod/ExtUtils::MakeMaker) or [Module::Install](https://metacpan.org/pod/Module::Install). We have two examples for this case.

If the project has both `dist.ini` and `Makefile.PL` then most likely the latter was generated and as a generated file it should not be in git. Some authors add it to make it easier for contributors to run the tests without installing the whole Dist::Zilla toolchain.  For the CI I'd recommend using one of the Dist::Zilla workflows.

The same applies if the project has both `Build.PL` and `Makefile.PL`.

If none of the above situation applies then talk to me. I'll try to figure it out and help.

## Native or Docker?

The Docker image contains a lot of 3rd party libraries and so using a workflow with the Docker image will probably make the CI much faster. However that is Linux only.

If you'd like to ensure that your code runs on Windows and macOS then you need the native workflow.

You can setup both and combine them.

I thin the ideal would be to

1. Run the test in Docker in one or more versions of perl.
1. Create a distribution using one of the Perl versions.
1. Upload it as an artifact.
1. Run another job on the native OSes using the zip file created earlier.

I already setup such a workflow for [Test::Class](https://github.com/mjgardner/test-class). I'll add it here as an example.


