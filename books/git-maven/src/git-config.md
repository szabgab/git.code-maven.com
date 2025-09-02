# git config


The `.gitconfig` file in my home directory:

{{#include examples/gitconfig.txt }}

Install **meld** for better comparing of files

```
sudo apt-get install meld
```

## List of recently changed files:

```
git log --name-only --pretty=format:'' -n 20 | grep ^[a-zA-Z0-9] | sort | uniq
```

An alternative:

```
git log --before "2019-12-31" --after "2019-12-01"  --name-only | grep -v ^commit | grep -v ^Author | grep -v ^Date: | grep -v '^ ' | grep -v
'^$' | sort | uniq
```

```
git log --since="7 days ago"
```

will show the log for the last 7 days.

Maybe create a shell function:

```bash
function files() {
   git log --pretty=format:'' --name-only "$@" | grep \\S | sort | uniq
}
```

and add it to ~/.bashrc

It allows us to write expressions like

```
files since="7 days ago"
```

that will show which files have changed in the last 7 days.

```
git log --before "2019-12-31" --after "2019-12-01"
```

timestamp: 2018-07-15T20:30:01
