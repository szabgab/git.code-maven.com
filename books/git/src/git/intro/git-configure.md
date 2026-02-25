# Configure Git

## There are three levels of configuration:

* System (--system)
* User (--global)
* Project (--local)

```
$ git config ...
```

Each level has a file to hold the configuration values.


**On Unix**

* /etc/gitconfig
* $HOME/.gitconfig (/home/foobar/.gitconfig)
* .git/config

**On Windows**

* "c:\Program Files (x86)\Git\etc\gitconfig"
* %HOMEPATH%\.gitconfig %USERPROFILE%\.gitconfig (C:\Users\Foobar\.gitconfig)
* .git/config

To access them use

```
--system
--global
--local
```


