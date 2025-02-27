# Create website on GitHub pages using mdBook

{% embed youtube id="x3vF9YiWBMQ" file="2025-02-27-github-pages-with-mdbook.mp4" %}


* [mdBook GitHub repository](https://github.com/rust-lang/mdBook/)
* [mdBook User Guide](https://rust-lang.github.io/mdBook/)

To initialize a new book run

```
mdbook init
```


To build the book run

```
mdbook build
```

To keep building the book and see the results in a local web server run

```
mdbook serve --open
```


After the video I've renamed the repository to be [github-pages-demo-2025-02-27](https://github.com/szabgab/github-pages-demo-2025-02-27).


I also noticed it takes a lot of time to build the web site as it installs mdBook from source. A faster approach would be to install the binary version


```yaml
{{#include ../examples/mdbook-github-actions.yml}}
```

## Transcription

1
00:00:02.140 --> 00:00:12.009
Gabor Szabo: Hello, and welcome to the Code Maven Channel. My name is Gas Gabor Sabu. And in this video, in this presentation, in this meeting we are going to

2
00:00:12.010 --> 00:00:34.800
Gabor Szabo: take a look at Md books and how to create how to use it, to create a website on Github pages. So what you can see now on the screen is my missing Github pages. The URL is subgov dot Githubio. Just a second. I'll show you what is this subgo. So this is my username in Github Subgov. That's from my family name and my surname.

3
00:00:35.241 --> 00:00:36.989
Gabor Szabo: My 1st name and my surname.

4
00:00:37.660 --> 00:00:54.999
Gabor Szabo: But that doesn't really matter. The point is that if this is my username Subgub, then I have a default website on Github pages, which is my usernamegithubio. I'll have the link below the the video later on. But that's the

5
00:00:55.360 --> 00:01:19.820
Gabor Szabo: that's the address. Now, it doesn't exist because I would like to demo it, how to create it and how to create it is mbbooks. So for now, what I need, the 1st thing I need to create a repository in Github, a new repository which needs to be the same name as this website is going to be. So it must be the same as my username. Again, dot Githubio

6
00:01:19.820 --> 00:01:41.739
Gabor Szabo: and I'm going to go ahead and click on readme. So it's going to create the repository. Visa. Read me, read me file already, and when I click on it it creates the repository, and you can see that if you click on the actions, you can see that it's already building the page. The website based on that. Read me, Md file that it's created the default. Md. File.

7
00:01:42.050 --> 00:01:57.199
Gabor Szabo: Now, once it's been ready, you can see here that it's yellow. It's cute. It's not building. It's going to take a while, sometimes a minute, up to a minute, till it builds. While it is doing it. We are going to take a look at Md. Book. So here is the Md book.

8
00:01:57.800 --> 00:02:27.670
Gabor Szabo: the repository of the Md book. You will have the link below the video as well. Actually, you'll have to link to a website, and there you have all the information. If you scroll down, you will see this user guide and you click on it. And that's where you can have information about Md book and the the format, and the 1st thing you need to do probably, is to install it. There are a couple of ways to install it because I or you can have the precompiled binaries if you're not a

9
00:02:27.670 --> 00:02:51.389
Gabor Szabo: rust user. But if you're a rust programmer, if you have rust on your computer. Then you can just type in cargo install. Md book and you will have empty book. Now, I already had did that. So the next thing is going to be to create an empty book. But for that I need to clone the repository right? Because I would like to create the Md book inside that repository. So I'll go back to Github.

10
00:02:51.890 --> 00:03:13.640
Gabor Szabo: You can already see by this time that it became a green meaning that the action has finished. So the website was built from that readme file, if I come here and reload, it is control. R, then this is the default website that I got. And there I have separate videos explaining how to work with this.

11
00:03:13.640 --> 00:03:25.820
Gabor Szabo: and so on. If I go to the settings now actually, in this repository in the Github Repository and the pages there you can find the various ways to build this website. And

12
00:03:25.820 --> 00:03:44.049
Gabor Szabo: right now it says, deploy from Branch. This means that it takes the more than files and uses the Jekyll program to basically build the HTML. Pages from that. But we would like to use instead of that we would like to use the empty book in this case.

13
00:03:44.050 --> 00:04:11.550
Gabor Szabo: So we will have to switch to Github actions for that. So let me try to see what happens. Now, if I switch to Github actions, it offers me creating the jackal configuration file or using static HTML, I'm not interested in either of those. Now, I just wanted to see what's going on here, so I'll setbacks or deploy from Branch, because for now that's what I need.

14
00:04:11.550 --> 00:04:21.070
Gabor Szabo: What I really need now is to clone this repository. So I go back to the main page of the repository. Take the URL, get

15
00:04:21.440 --> 00:04:31.809
Gabor Szabo: clone, and this address of the repository, and here we are, subgo dot github dot I/O

16
00:04:32.350 --> 00:04:50.200
Gabor Szabo: I have in this repository. And here is this readme file that was created. Now, instead of having this readme file, or I can leave it there. I'm going to create an empty book here. Md. Book is already installed on my machine. You will have to install it yourself. Md. Book.

17
00:04:50.370 --> 00:04:53.000
Gabor Szabo: Md. Book and the

18
00:04:53.340 --> 00:05:07.950
Gabor Szabo: book I really need to know how to type in it will create the initialize the Md book. Basically, it's create a couple of files after asking some questions. So it offers me to create the gitignore file. And let's say, yes.

19
00:05:08.532 --> 00:05:16.540
Gabor Szabo: what would be the title. So my title is going to be Gabor Sobu using Md book

20
00:05:16.660 --> 00:05:20.940
Gabor Szabo: just to have some title. And that's it. Now, what happened now.

21
00:05:20.940 --> 00:05:39.960
Gabor Szabo: if I run. Ls, basically, I can run 3. Let's see around 3. So what files were created? The readme Md. Was there was created by the by Github. Now we have a book Dot, a tumble file, which is the general configuration of my book

22
00:05:39.960 --> 00:05:52.710
Gabor Szabo: and the Src. Directory, with the actual content of the book, and there is also a book folder which is going to be used to generate the actual book locally, if that's what I would like to do.

23
00:05:52.760 --> 00:06:10.950
Gabor Szabo: So what is in here. Just let's take. Take a look at quick look at the files. Here we have this title that I just selected, so you can edit it later on, if you don't like the the title, and we plan to change it. And there are all kind of other configurations that can come here, for now we are fine with this.

24
00:06:10.950 --> 00:06:28.189
Gabor Szabo: In the Src. There is the summary which is going to be just the list of the chapters or pages you have, and then inside. And then there is this 1st chapter, which for now it's fine. It's just the title this is going to be marked down later on. But for now that's fine.

25
00:06:28.310 --> 00:06:33.300
Gabor Szabo: I could generate the HTML here by tape typing in Md. Book.

26
00:06:34.345 --> 00:06:35.230
Gabor Szabo: Build

27
00:06:35.470 --> 00:06:42.290
Gabor Szabo: that would generate it. But I can also do something else. And I can type in Md book, serve.

28
00:06:42.890 --> 00:06:44.920
Gabor Szabo: And I also type in open

29
00:06:45.330 --> 00:07:12.940
Gabor Szabo: and hopefully it open it in the right browser. It is opening the browser. Yeah, it opened it in Browser it. It runs now, web server, and it listens on localhost 3,000. So that's where we have this address open. And this is this is locally on my computer. So now, if I make some changes, let me open the terminal again. I switch to another terminal, because this one is running here here. I also

30
00:07:13.040 --> 00:07:21.340
Gabor Szabo: go into subgov dot github dot I/O, and I edit the chapter. Let's say.

31
00:07:21.860 --> 00:07:49.120
Gabor Szabo: Hello. I just type in save it. And then I can see it's already updated here on this page you can see the word Hello. So that's how you can edit your book and see the result quite immediately, because it's being generated all the time locally. But what we really want now is to push out to Github, and see the results of this. So I have git status.

32
00:07:50.360 --> 00:08:17.819
Gabor Szabo: showing me that these are the files that are not on. Git under git control yet git, add all of them again. Just let me see, these were the files that were added. You can see. Actually, you can see that by now. The book folder was filled because this serve the Md. Md. Book serve generates the the book here in this folder, and that's where it's it's showing. So it's fine. I

33
00:08:17.910 --> 00:08:27.890
Gabor Szabo: don't really need this, and this is also in git ignore, so it won't be added to the repository. So git status again get status.

34
00:08:28.670 --> 00:08:38.990
Gabor Szabo: because I already forgot what happened. Here are in stage files. Git, commit a create. Md book

35
00:08:40.250 --> 00:08:45.330
Gabor Szabo: 3. A. There, almost. Okay. I created it and I push it out.

36
00:08:45.540 --> 00:08:54.640
Gabor Szabo: No, Github still doesn't really know about the fact that I have some files for Md. Book.

37
00:08:54.990 --> 00:09:01.449
Gabor Szabo: What it does now it picks up the changes. Where is my repository, notices my changes.

38
00:09:01.980 --> 00:09:16.210
Gabor Szabo: starts running the Github actions and rebuilds the site based on the Mv files, but still using the Jackyl preprocessor processor. The default one that uses in Github pages.

39
00:09:16.320 --> 00:09:26.729
Gabor Szabo: So that's fine. But now we would like to go to the settings, and we'd like to configure the Github actions to use empty books.

40
00:09:27.210 --> 00:09:32.730
Gabor Szabo: empty book. So now I go back to the settings pages.

41
00:09:33.680 --> 00:09:37.170
Gabor Szabo: And this time, if I try to switch to Github actions.

42
00:09:37.280 --> 00:09:43.860
Gabor Szabo: it will already notice that I have the configuration for Mdbook. So it offers me to configure that.

43
00:09:44.110 --> 00:09:49.499
Gabor Szabo: Okay, that's the default configuration fine. So I click on that one. I pick that one.

44
00:09:50.290 --> 00:10:08.819
Gabor Szabo: And I. And this is what it offers. Okay, so it offers me to create some Github action configuration file to use for this book, and I'm fine with it, except one thing. So it starts with empty book version 0 0 4, 36.

45
00:10:09.070 --> 00:10:11.900
Gabor Szabo: And let me just check it in the book

46
00:10:13.810 --> 00:10:35.119
Gabor Szabo: capital. I think that also works. Yeah, it's 4, 45 that I have on my computer. And it's 4, 36 here. So it's rather old, I guess what the default here, we can change it later, for now I just going to accept it. And so now I can commit the changes. Okay, it offers me some explanation. Commit the changes.

47
00:10:35.160 --> 00:10:45.199
Gabor Szabo: And now, because this was a new commit, as you can see, the actions start to running on this one. Okay, the one the one that I pushed out earlier

48
00:10:45.480 --> 00:10:53.730
Gabor Szabo: finished here. Now, this is when I created the Md book. So now it's going to start running the

49
00:10:55.490 --> 00:11:17.529
Gabor Szabo: the process. The Github action that generates the Md book build. Basically it will run. Md book, build right and then it will generate the website. Now, if, because there was already some changes in the repository on Github, if I would like to continue edit it while it's running, I it's better that I run git pool.

50
00:11:17.820 --> 00:11:31.009
Gabor Szabo: Okay, so I will got. I will have the new Md. Book Yaml file copied to my disk so I can see here, github dot workflows

51
00:11:31.280 --> 00:11:59.919
Gabor Szabo: empty book. This is the same Yaml file, the configuration file that basically, if we can take a look at it, it will install. So here it close the repository here installs empty book, using the cargo command, and then at some point here and this line you can see empty book build it builds the book and then uploads the artifact and generates the website.

52
00:12:00.010 --> 00:12:05.680
Gabor Szabo: So I quit this one. Now, it's already running now. So that's nice.

53
00:12:06.640 --> 00:12:10.730
Gabor Szabo: And hopefully, in a couple of seconds we'll see the result.

54
00:12:12.050 --> 00:12:35.430
Gabor Szabo: Okay, so I guess I could come back while it's building and go and change here. The Md book version to the most recent one, and I'll do it separately doesn't really matter. That's the whole point. So from from this point, whenever you make some changes and push out something. Then you will be able to

55
00:12:36.130 --> 00:12:38.600
Gabor Szabo: generate the new version of your website.

56
00:12:39.470 --> 00:12:42.160
Gabor Szabo: It takes it takes more time. Apparently.

57
00:12:43.390 --> 00:12:47.839
Gabor Szabo: I was hoping that he'll be able to show it in a couple of seconds.

58
00:12:49.860 --> 00:12:50.880
Gabor Szabo: Anyway.

59
00:12:51.070 --> 00:13:10.319
Gabor Szabo: That's it. I think the rest should work already. Hopefully, you will have more patience after watching the video, and you could follow this, I will have everything that I did. For now under the video, I'm also going to change the name of my repository. So because I use this

60
00:13:10.320 --> 00:13:38.459
Gabor Szabo: in order to demo several times I make these Demos how to create a website on your Github pages. So therefore I don't keep around this repository. I rename it. So later on I can link to it. So below the video, you will find the link to everything, including the new name of this repository. By the time I finish the sentences you can see that it's green. So hopefully, this was this is the local host version.

61
00:13:38.460 --> 00:13:42.470
Gabor Szabo: And this is the website. So now, if I reload it.

62
00:13:42.860 --> 00:13:51.619
Gabor Szabo: we have the chapter and Hello, and the hello on my website. So this is now, my new website using Md books. And

63
00:13:51.780 --> 00:14:10.539
Gabor Szabo: hopefully, I'm going to be able to follow up with more videos about Mdbook to see how to do all kind of interesting things with it. So thank you for watching. Please, like the video, follow the channel to get notified when new videos are going to come. So see you bye, bye.

