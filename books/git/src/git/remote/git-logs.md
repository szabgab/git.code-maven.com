# incoming, outgoing


git incoming - After a fetch it will show what is on the remote `main` barnch that I have not merged into my own `main`.


```
$ git log origin/main ^main
```


git outgoing - What is on my `main` branch that has not been pushed to the remote `main` branch.


```
$ git log main ^origin/main
```


