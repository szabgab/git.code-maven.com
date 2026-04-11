# Local config file

What if we have system level configuration files checked in git and I would like to make some changes for my local
development only? If I make changes to a tracked file they will show up as modified and I might accidentally commit the changes.  A much better way would be to allow the the creation of an additional local configuration file that would override the values in the central configuration file. The name of the local configuration file could be added to the `.gitignore` file and every developer could create that file locally with whatever values she need.

```
config.yml
local-config.yml
```



