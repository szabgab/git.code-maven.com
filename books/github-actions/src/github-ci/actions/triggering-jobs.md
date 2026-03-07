# Triggering jobs

* The required `on` keyword describes the [events that trigger workflows](https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows).

## Single event

If the workflow is triggered by a single event then you can write it like this:

```yaml
on: push
```

## Multiple events

If you'd like to configure multiple events, you have several ways to do that.

```yaml
on: [push, pull_request, workflow_dispatch]
```

You can also write:

```yaml
on:
    push:
    pull_request:
    workflow_dispatch:
```

* Run on "push" in every branch.
* Run on "pull_request" if it was sent to the "dev" branch.
* `workflow_dispatch` to run manually via the web site of GitHub.
* Scheduled every 5 minutes (cron config)

{% embed include file="src/examples/workflows/triggers.yml" %}

* Manual events (via POST request)


