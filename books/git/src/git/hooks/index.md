# Hooks

There are various events in the life of git repository that can trigger special actions.

Git allow use to setup "hooks" - programs, that will be executed when an event triggers them.

After creating a repository look at the `.git/hooks/` folder. It contains examples for the various hooks.

You can rename one of the files with the `.sample` extension removing this extension or you can add your own program with such names without the `.sample` extension.

You can use these hooks to enforce policies, but one thing project managers need to keep in mind is that hooks are opt-in.  People can always remove them from their computer. So if you really want to enforce policies that must be done on the server. The hooks can only be used to provide early feedback and to help people avoid emberassment by pushing out a change with some lame mistake.


* applypatch-msg.sample
* commit-msg.sample
* fsmonitor-watchman.sample
* post-update.sample
* pre-applypatch.sample
* pre-commit.sample
* pre-merge-commit.sample
* pre-push.sample
* pre-rebase.sample
* pre-receive.sample
* prepare-commit-msg.sample
* push-to-checkout.sample
* sendmail-validate.sample
* update.sample

