# Making some changes, checking the `diff`


Edit the README.txt file again, adding a new row and then let's check the `status` of the working directory.


```
$ git status
```

{% embed include file="src/examples/out/status_03.txt" %}

We can see that one file changed.


What were the changes?



```
$ git diff
```

```
WARNING: terminal is not fully functional
diff --git a/README.txt b/README.txt
index e51ca0d..a697828 100644
--- a/README.txt
+++ b/README.txt
@@ -1 +1,2 @@
-Hello Git
+Hello Git
+Second line
```


Using `add` mark the file for staging. Then check the `status` again.


```
$ git add README.txt
$ git status
```

{% embed include file="src/examples/out/status_05.txt" %}


What did we change?


```
$ git diff
```

This will show nothing as all the changes were marked for staging.

We can use one of the flags to see the chnages that were changed that are about to be committed.

```
$ git diff --cached    (or --staged)
```


```
WARNING: terminal is not fully functional
diff --git a/README.txt b/README.txt
index e51ca0d..62567d0 100644
--- a/README.txt
+++ b/README.txt
@@ -1 +1,2 @@
-Hello Git
\ No newline at end of file
+Hello Git
+Second line
```

If we are satisfied with the changes we can commit them to git providing an explanation using the `-m` flag.


```
$ git commit -m "update README"
```

```
[main 1251a45] update README
 1 file changed, 2 insertions(+), 1 deletion(-)
```


