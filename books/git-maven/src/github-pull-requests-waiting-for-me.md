# Filtering GitHub pull requests waiting for me


When visiting GitHub it has a link to list [Pull requests](https://github.com/pulls).
By default it uses the `is:open is:pr author:szabgab` search terms which means it will show all the
pull request I (user szabgab) have opened, that are still open. This is when the (default) [Created](https://github.com/pulls)
button is pressed.

There are two other buttons: [Assigned](https://github.com/pulls/assigned) will changed the search terms to be `is:open is:pr assignee:szabgab` listing
the open pull requests that were assigned to my user.

The third button is [Mentioned](https://github.com/pulls/mentioned) which uses the search term `is:open is:pr mentions:szabgab` which means
the pull requests where my username was mentioned as `@szabgab`.

I guess I am missing some knowledge about GiHub, because what I'd really like to know is all the pull request that are waiting for my action.
In other words, every pull request that were sent to any of my repositories.

It can be listed, but I could not find a button for it.

## Pull requests for my repositories

[Pull requests for szabgab](https://github.com/pulls?utf8=%E2%9C%93&q=is%3Aopen+is%3Apr+user%3Aszabgab)

In this search I used the following terms: `is:open is:pr user:szabgab`. This lists all the open pull requests to any of the repositories
owned by user szabgab.


## Pull requests for all of my organizations

Because I also have a few "GitHub organizations", I also wanted to be able to list all the pull requests opened to any of these organizations:

[Pull request for all of my organizations](https://github.com/pulls?utf8=%E2%9C%93&q=is%3Aopen+is%3Apr+user%3Aszabgab++user%3Acode-maven+user%3Apadreide+user%3Aperlmaven+user%3Adwimperl)
That's easy too. I just need to list all the organizations I am interested in `is:open is:pr user:szabgab user:code-maven user:padreide user:perlmaven user:dwimperl`.


timestamp: 2015-10-02T10:30:01
