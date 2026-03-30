# Find removed code

One of the big promises of git is that you can always get back to some older version of your code.

More specifically that you can freely remove old and unused code. No need to keep it around for "maybe we'll need it one day". The question though is "How can we find a snippet of code that we removed a while ago?"

If the commit messages were good then we can search in them. So if you remove a function it might be a good idea to include the name of the function in the commit message.


## Search in the commit messages

Then we can use  `git log | grep -B 10 FUNCTION_NAME`

the `-B 10` makes grep show 10 lines before the matching line. That will help us see the sha of the commit.


## Search in the removed code

```
git log  -S"FUNCTION NAME or CODE SNIPPET"
```

The same but `-p` will make it show the diffs:

```
git log  -S"FUNCTION NAME or CODE SNIPPET" -p
```


e.g. in the biopython project search:

```
git log  -S"Failed to download PDB structure"
```

How to find some code-snippet that was removed a while ago?

```
git log -p -S'snippet' --all
git log -p -S'snippet' --all -- path/to/file.ext
git log -p -S'snippet' --all --reverse -- path/to/file.ext

git log -p -G'REGEX' --all -- path/to/file.py
```


