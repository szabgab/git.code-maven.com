# Pages of the non-default repository

Using rhe repository `USERNAME.github.io` wil generate the website `https://USERNAME.github.io`, but actually any repository can be used to create sub-sites.
So for example if you have a repository called `demo` and if you make it generated GitHub pages, then it will accessible using the `https://USERNAME.github.io/demo/` address.

In order for this to work you need to enable GitHub pages on this repository.

* Go to the repository (e.g. https://github.com/szabgab/demo)
* Click on **Settings** (e.g. https://github.com/szabgab/demo/settings)
* Click on **Pages** (e.g. https://github.com/szabgab/demo/settings/pages)

* Set the **Source** to `Deploy from a branch`.
* Set the **Branch** to `main`, or whatever is your central branch. Older repositories will probably have a branch called `master`.
* For now keep the folder to be `/ (root)`.
* Click on **Save**.

Visibility - this section is irrelevant. Don't clcick on the button there.

## Building the site

Once you clicked in the **Save** button GitHub will trigger the building of the web site that you can observe in the **Actions** tab.

Once it is done you can look at the web site using the address: `https://USERNAME.github.io/REPOSITORY/`  (in my case it is https://szabgab.github.io/demo/ )

This site will be generated from the `README.md` file and from the other files that have `.md` extension in your repository.


