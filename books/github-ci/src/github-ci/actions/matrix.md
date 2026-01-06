# Matrix (env vars)

* matrix
* strategy
* fail-fast

* [matrix](https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/using-a-matrix-for-your-jobs)

{% embed include file="src/examples/workflows/matrix_env_vars.yml" %}

* Create a matrix of configuration options to run the jobs. (e.g. on different operating systesm, different versions of the compiler, etc.)

* `fail-fast`: What should happen when one of the cases fails? Should all run to completion or should we stop all the jobs if one already failed?



