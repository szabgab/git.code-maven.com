# See the changes


Make some changes to the config.pl file and stage it.



```
$ notepad config.pl
$ git status
```
{% embed include file="src/examples/out/status_09.txt" %}


```
$ git add config.pl
$ git status
```
{% embed include file="src/examples/out/status_10.txt" %}


So what was changed?


```
$ git diff
```

```
diff --git a/README.txt b/README.txt
index 62567d0..fb89137 100644
--- a/README.txt
+++ b/README.txt
@@ -1,2 +1,4 @@
 Hello Git
 Second line
+Third line
```


Only the changes to the not staged files are shown



```
$ git diff --cached   ( or --staged)
```

```
diff --git a/config.pl b/config.pl
```

{% embed include file="src/examples/out/status_08_0.txt" %}

Only the changed to the staged files are shown



```
$ git diff HEAD
```

{% embed include file="src/examples/out/status_08_1.txt" %}


changes between working copy and HEAD


