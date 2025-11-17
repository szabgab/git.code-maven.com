# Remote Themes

Besided the Jekyll themes that GitHub provides you can also use other themes from around GitHub.
For this you need to enable the `jekyll-remote-theme` plugin and add the name of the `remote_theme` which is basically the address of a GitHub repository.
So for example `just-the-docs/just-the-docs` theme is from the [just-the-docs/just-the-docs](https://github.com/just-the-docs/just-the-docs) repository.

The content of `_config.yml`

```
plugins:
  - jekyll-remote-theme
remote_theme: "just-the-docs/just-the-docs"
```

There are many other Jekyll templates. For example:

```
remote_theme: "daattali/beautiful-jekyll"
remote_theme: "mmistakes/so-simple-theme"
```

I also found a few that did not work:

```
remote_theme: mmistakes/minimal-mistakes     # Unknown tag 'include_cached'
remote_theme: "chirpy-dev/chirpy"            # not found
```

