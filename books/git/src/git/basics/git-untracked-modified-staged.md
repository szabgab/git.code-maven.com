# Untracked/Modified/Staged

Create another file called `config.pl` and check the status.


```
$ git status
```

{% embed include file="src/examples/out/status_06.txt" %}

We now have several changes in the workind directory (one file changes and two were added).
Some of these changes might be related to each other, some might be unrelated.

It would have been cleaner if we worked on exactly one task at a time, but life happens.
While we are working something we might see a typo and we can't stop ourselves and fix it.

Another case might be that while we are working on something we realize we already did that
in some other place. Instead of copy-paste we would like to convert the other part to be
a stand alone function and then reuse that function. (Refactoring)


So we have multiple, unrelated changes in the workdir. It would be clearer for the reader
if we committed these changes separately.

We can do that easily by staging only some of the changes.

Stage one of the files:


```
$ git add config.pl
```

{% embed include file="src/examples/out/status_07.txt" %}


