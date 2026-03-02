# Minimal Ubuntu Linux configuration

{% embed include file="src/examples/workflows/minimal_ubuntu.yml" %}

## Keywords:

* `name` - just some descriptive name.
* `on` - what action triggers the running of this workflow.
* `jobs` - one or more jobs to run

## User selected value:

* `build` - this name is arbitrary, you can use any word for the name of your jobs.

## Keywords

* `runs-on` the platform (operating system) the job runs on. (e.g. Ubuntu, Windows, Mac)
* `steps` - various steps to be executed each step can have a `name` and it must have a `run`.
    * `name` - optional, just a description
    * `run` - a bunch of commands executed in a shell.




