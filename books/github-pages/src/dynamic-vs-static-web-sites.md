# Dynamic vs Static web sites

There are various types of web site when trying to group them according to the level of activity.

1. A static web site is one that consists of some fixed files. One or more HTML files. Maybe a few CSS files for styling, maybe a few images.
The important part is that there is no dynamic element on the site. Regardless of who and when visits the site the reposnse will be the same
and that response is fixed ahead of time.
1. A web site can be dynamic on the client side and static on the server. In this case the visiting users might see different results, but all the differences are computed on the client side. There are no moving parts on the server side.
1. A web site can be dynamic using server-side rendering. In this case all the dynamic behaviour happens on the server side. The client receives the ready-made HTML pages that will depend on the input the user provided.
1. A web site cab dynamic both on the client and the server side. In this case the server usually computes the response based on the input received from the user and usually it only sends back data. The cliens side also has some executable code that uses the received data to render the web page.

The service "GitHub pages" does not allow you to run anything on the server-side so the only two types of sites we can build are static sites and sites that have dynamic behaviour only on the client-side. In a nutshell on GitHub Pages only the first two options are available.

