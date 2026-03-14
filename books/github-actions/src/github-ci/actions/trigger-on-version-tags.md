# TODO Trigger on version tags

We can create a workflow that will only run when a tag was pushed out or when a tag staring with the letter v was pushed out.

```yaml
on:
  push:
    tags:
      - 'v*'
```

{% embed include file="src/examples/workflows/trigger-on-version-tags-tag.yml" %}

{% embed include file="src/examples/workflows/trigger-on-version-tags-ci.yml" %}

[repository](https://github.com/szabgab/github-actions-run-on-version-tags/)
