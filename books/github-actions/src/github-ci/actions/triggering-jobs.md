# Triggering jobs

* `on`

* [Event triggers](https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows)

* Single event

```
on: push
```

* Multiple events

```
on: [push, pull_request]
```

Also:

```
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


