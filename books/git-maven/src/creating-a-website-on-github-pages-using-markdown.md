# Creating a website on GitHub Pages using Markdown

{% embed youtube id="ldyILMj_WZo" file="2025-03-02-creating-a-website-on-github-pages-using-markdown.mp4" %}

The address where my website was created https://szabgab.github.io/
at the end of the presentation the repository was renamed to [github-pages-demo-2025-03-02](https://github.com/szabgab/github-pages-demo-2025-03-02)
and so you can see the generated page [here](https://szabgab.github.io/github-pages-demo-2025-03-02).

Earlier Python course with sample web sites: [wis-python-course-2024-04](https://github.com/szabgab/wis-python-course-2024-04).
Specifically with that if [Mazal Faraj](https://mazalik.github.io/).

The [Git Maven](https://git.code-maven.com/) site where I host all my git-related content.

Static site generator [Jekyll](https://jekyllrb.com/) is used by GitHub pages.

[GitHub flavored Markdown](https://github.github.com/gfm/)


The [github.szabgab.com](https://github.szabgab.com/) web site and its [source](https://github.com/szabgab/real-szabgab.github.io)


The [GitHub pages slides](https://slides.code-maven.com/github-pages/github-pages) that I forgot to use...

I also created a repository called `szabgab/experimental-repo`, but after the recording I removed it as it is not really necessary.

## Transcript

1
00:00:02.250 --> 00:00:14.340
Gabor Szabo: Hello, and welcome to the Code Maven, Youtube Channel, and to your meeting especially for people, for the to the people who who are who arrive to the meeting and are going to listen to me. Live.

2
00:00:14.340 --> 00:00:33.010
Gabor Szabo: if you do that, feel free to ask questions, either by your voice or in the chat room as you like. If you are watching the video on Youtube, then, please, if you like the video, then please like it and follow the Channel. So you'll get notified on new videos.

3
00:00:33.380 --> 00:00:41.010
Gabor Szabo: My name is Gabor Sabo. I teach programming python and rust and companies.

4
00:00:41.320 --> 00:00:45.829
Gabor Szabo: and I also teach python at the Weissman Institute of Science.

5
00:00:45.940 --> 00:00:51.589
Gabor Szabo: and in that course, and this present, and it's relevant to this presentation. In this course.

6
00:00:52.670 --> 00:01:15.470
Gabor Szabo: I'm teaching Python. But because I want people to use to be able to use git, and especially Github. First, st I have this presentation about a few hours of presentation about Github and creating a website, starting with creating a website and learning markdown. Because that's part of the idea.

7
00:01:15.520 --> 00:01:31.219
Gabor Szabo: And so this video is basically this presentation is basically the 1st part of the 1st session of that course. No, no, python, no programming here, only creating a website on Github.

8
00:01:31.370 --> 00:01:34.310
Gabor Szabo: basically using a markdown.

9
00:01:34.930 --> 00:01:41.890
Gabor Szabo: I'm going to share the screen. Now, if I find the but button, I always search for it, even though it's a big and green.

10
00:01:43.180 --> 00:01:46.500
Gabor Szabo: And what you can see now hopefully, is a

11
00:01:47.510 --> 00:01:54.530
Gabor Szabo: the location of my website that doesn't exist. So you can see a 404 page.

12
00:01:54.810 --> 00:02:01.989
Gabor Szabo: And this is the address. And unfortunately, you can't probably see it, because the fonts are too small, and I

13
00:02:02.020 --> 00:02:26.289
Gabor Szabo: couldn't yet figure out how to use a magnifying glass to show this. So instead of that, I'm just going to copy, paste it here. I'm also going to put it in the chat room, actually, for those who would like to follow it later on. So this is the address of my website that I'm going to build now, as you can see, this subgo at the beginning is basically my username. And then it says, Githubio.

14
00:02:26.800 --> 00:02:43.319
Gabor Szabo: before I actually build this, and and now it's it's it. If I reload it. If you visit this page you won't see anything there, and I'm going to give you a few examples. Here is one of the repositories and that use for the course.

15
00:02:43.450 --> 00:02:53.030
Gabor Szabo: If this one was a almost a year ago where we started, and each student then creates a website for

16
00:02:53.310 --> 00:03:07.249
Gabor Szabo: herself himself. And you can visit this page. I'm also going to put this in the in the share, and I'm going to put it here as well, just in case later on I'm going to share it. I don't need this

17
00:03:07.800 --> 00:03:34.289
Gabor Szabo: ending of it. But basically you can, you can find here examples of the people built who didn't have any experience. So just to get some ideas, especially, especially, I'm going to show you one of them because I liked her her website. Okay, so this is a very nice website. I think she worked on it. I don't know a few hours, few hours, and that's it. And

18
00:03:34.300 --> 00:03:44.609
Gabor Szabo: and then there are others that use use various other things. I am going to show you another. So this is I'm sharing her link here.

19
00:03:44.640 --> 00:03:48.880
Gabor Szabo: and both in the chat room, and I'm going to show it here.

20
00:03:49.390 --> 00:03:57.550
Gabor Szabo: So here in the again. You can see. Mazalik apparently, is her username in Github. And then Githubio, is this the address?

21
00:03:57.760 --> 00:04:03.319
Gabor Szabo: And the last example I would like to show now is this one which is

22
00:04:03.620 --> 00:04:26.040
Gabor Szabo: the website that we are going to post also this video. Besides Youtube, this is the website that I recently moved over all my git related content. And this one so you can see this is a totally different address. git.codemaven.com. So codemaven is my domain, and I just

23
00:04:26.160 --> 00:04:39.789
Gabor Szabo: mapped it to be served from Github pages. So behind, the scene is basically the same. But because I have a domain, I could map it there. So what we are going to learn now is how to create a website.

24
00:04:39.790 --> 00:04:59.490
Gabor Szabo: and then it can be quite easily mapped. If you have a domain name. Then you can pick a host name, or the full domain. You can host it there. And this one is actually using Md. Books in order to generate it, not the default one that I'm going to show you. But at the end it doesn't really matter.

25
00:05:00.360 --> 00:05:05.760
Gabor Szabo: So did I share that one? Yeah, okay.

26
00:05:05.900 --> 00:05:15.079
Gabor Szabo: so what do we need in order to to build this? build this page, we're going to go to github.com.

27
00:05:15.270 --> 00:05:39.929
Gabor Szabo: Obviously, you need, and I'm going to copy this address because it's easier for me to copy paste. But then I'm just explaining it. So you already need to have an account there, of course, and if you creating an account now, this is the 1st time, then create one that is independent of everything else. So it's now, if if you're one of my students at the Weitzman Institute, then just

28
00:05:40.280 --> 00:06:04.689
Gabor Szabo: it doesn't have to be connected neither to the Institute nor to the course. If you work at some employee, it doesn't have to be connected to that. That employee. It's going to be yours, and then you can use it for various things projects, or as you work, it doesn't really matter. It should be probably yours. So mine is subgo, and I'm using it on for all kind of of things. That's my username. Now you have your user.

29
00:06:05.130 --> 00:06:13.579
Gabor Szabo: Then you create a new repository. So you're on the in this plus, I can click new repository and the name of the Repository

30
00:06:13.950 --> 00:06:35.420
Gabor Szabo: for this specific example that I'm showing needs to be this address. So your username, Dot Githubio, which is going to become the the address of your website. If if you don't do this, okay, I'm actually yeah. If you don't do this, then you'll have a

31
00:06:35.600 --> 00:06:56.769
Gabor Szabo: you can also create a website. But it won't have this this address. So basically, that's the point. So your default homepage your default page on on Github is your username dot Githubio. And then you need to create a repository with that same name. So you can see that it's user. My name username is here. And then I repeat it.

32
00:06:57.120 --> 00:07:07.949
Gabor Szabo: the repository doesn't need to be public, but there's no real point on hiding it in making it private, because at the end the content is going to be shown to the, to the

33
00:07:08.310 --> 00:07:23.749
Gabor Szabo: everyone. So why not? And especially if you'd like to show me what you did. And you'd like to get input, then make it public. And then, especially if you are one of my students, then make sure it's public. So you can get a grade for that.

34
00:07:23.850 --> 00:07:38.729
Gabor Szabo: And I started with adding the readme file, just to have some content in this repository, and I can also get ignore. It doesn't really matter, for now I can add the license. It doesn't really matter for now, and I create the repository.

35
00:07:39.170 --> 00:07:56.010
Gabor Szabo: Now, just by creating this specific repository, you can immediately click on actions, and you can see that it started to do something. It's actually it's a yellowish, brownish icon here and here it's on the right hand side. It says, queued.

36
00:07:56.270 --> 00:08:04.970
Gabor Szabo: So because this is the name of the Repository, this specific repository, it already immediately started to build your website.

37
00:08:05.240 --> 00:08:33.149
Gabor Szabo: Github created that markdown that readme file. And using that readme file, it's going to create a website, a very simple one, very simple content. But a readme file. Now, it takes some times to build it, and sometimes it doesn't update immediately. But by now you can see it's now green. And it took 37 seconds. So I spoke more than that, apparently to build the website.

38
00:08:33.480 --> 00:09:03.289
Gabor Szabo: Now, under actions, you can see this progress. So you will know when the website was built, or if there is some error. You will know this, and luckily, right now it was generated without a problem. Sometimes when I show this content. When I explain this, then Github is exactly at that time it's broken, and and then there are some failures.

39
00:09:03.970 --> 00:09:28.690
Gabor Szabo: or there could be also things that maybe we broke in the in the in the Fs we create the page. It's very unlikely, actually, so, most likely, if there is an error here in these simple cases, it's most likely some problem with the system of Github. And then you just need to wait to be fixed.

40
00:09:28.710 --> 00:09:39.830
Gabor Szabo: So anyway, this created and deployed the website. So if I go back to this URL, this tab where I had this page and reload it by pressing control. R,

41
00:09:39.910 --> 00:09:56.190
Gabor Szabo: then you will see the content of the website. So basically, that's it. Now, we have the website. I don't need anything more. Well, you probably want to improve it a little bit, so it will look a little bit better. But that's why what we are going to

42
00:09:56.730 --> 00:10:03.239
Gabor Szabo: see now. So we have a repository somewhere in one of them. Okay, this is the Repository.

43
00:10:03.340 --> 00:10:06.560
Gabor Szabo: a git repository. And then

44
00:10:07.110 --> 00:10:21.679
Gabor Szabo: we are going to build a website now, what I didn't explain here yet, basically. But I probably should that what is git. And what is Github? And so a few words about that

45
00:10:21.940 --> 00:10:32.949
Gabor Szabo: git is one of the one of the or the de facto standard version control tool these days. And what is a version control tool? When when you create a

46
00:10:32.950 --> 00:11:01.700
Gabor Szabo: basically, everyone uses some kind of versioning. Okay, even if you don't use a version control tool. Sometimes you create a document and then you create, send it to someone, and then you save it and change the name of the file, create a copy of the file and add the the date to it, or the name of the person you send to that file, and then you keep working on the original file and then send it to someone else and then create a copy again with a new date.

47
00:11:01.700 --> 00:11:14.930
Gabor Szabo: Basically, you doing version control for your file git just provides a much better tooling for this, a standardized way to do this. And Github is a cloud-based website

48
00:11:15.140 --> 00:11:43.489
Gabor Szabo: that allows you to host. These git projects basically or git based projects. And each one of these projects is called a repository. So if you go back to the main page of this repository by clicking on the address at the top. Then you can see here that it has this readme. Md. File that was created by the system. It also says that there was one. Commit one change saved.

49
00:11:43.620 --> 00:12:03.790
Gabor Szabo: and you can see the the history of it. Now, if you'd like to make some improvement. We can edit it on the website. And in this video, in this presentation, and in this video, we won't use anything else. You don't need anything on your computer. Besides this browser that we are already using. So you can click here on this

50
00:12:04.040 --> 00:12:19.579
Gabor Szabo: pencil thing that will make you allow you to edit the file. And and this is what what you have here. This is, was the default text. There, now I can change this. I can change this and say, let's say

51
00:12:20.350 --> 00:12:21.590
Gabor Szabo: welcome.

52
00:12:22.370 --> 00:12:43.879
Gabor Szabo: And then I can put here some text, some text here, just to show you some text here, and I can even go further and use various of the Markdown Syntaxes, and I'll tell you in a second or so what is marked down. But let's say I put here a enlarge the phone. So it's gonna be easier to see.

53
00:12:44.300 --> 00:12:49.350
Gabor Szabo: And Dot, and then I can put here names of. I don't know

54
00:12:53.790 --> 00:12:54.830
Gabor Szabo: fruits.

55
00:12:55.610 --> 00:13:15.550
Gabor Szabo: Okay. So as I edit. It keeps giving me this star, but I don't need any more, and I'm going to add 3 lines. And here I'm going to see. Put 2 hash marks and say, actually, here I will put 2, and I say fruits.

56
00:13:16.390 --> 00:13:21.819
Gabor Szabo: And here I'm going to say something else. What shall I put here, animals.

57
00:13:22.280 --> 00:13:33.830
Gabor Szabo: and then here, I say, one gets to you. See, I print print press, enter it automatically, gave me the number 2 dog snake.

58
00:13:34.700 --> 00:13:38.790
Gabor Szabo: I don't see the rest of it grab. Okay.

59
00:13:39.420 --> 00:14:08.290
Gabor Szabo: so far I made some changes, but now I have to save these changes, and the saving is is on. This system is called committing a change. So here, on the right hand side, you can see this big green button commit changes. I click on it. It offers me another window where I have to, when I can explain what were my changes in one sentence and then in more details. So I don't.

60
00:14:08.350 --> 00:14:24.920
Gabor Szabo: It's a good idea when you're working on a bigger project to have these explanations in this case, I don't have much to explain. I updated the readme, Md, okay, so I click here on this green button again on this other green button. This will actually do the commit.

61
00:14:24.990 --> 00:14:25.720
Gabor Szabo: And

62
00:14:25.960 --> 00:14:35.590
Gabor Szabo: basically, this saved my changes. Now, if I click on the actions. You can see that it immediately picked up the changes and started to build the website.

63
00:14:36.650 --> 00:14:54.378
Gabor Szabo: Okay, it will take it now, says it's in progress earlier. You saw it was in in queue, and it was a smaller dot here. Now it's yellowish and moving. Whatever you can see. You can learn. You learn the icons that you can see. It just makes you

64
00:14:55.210 --> 00:15:11.730
Gabor Szabo: earlier. Okay? A couple of years ago this, you didn't see this display. So we made used to make some changes, and we weren't clear when it's going to be ready. So we we went to the website and kept reloading it, and then we got annoyed because it took too long, and.

65
00:15:11.730 --> 00:15:28.150
Gabor Szabo: as you can see, last time it took 37 seconds to build the whole thing, and maybe there was some waiting time at the beginning. Now it took 41 seconds. It all depends how busy the system is. I mean the system of

66
00:15:28.150 --> 00:15:35.019
Gabor Szabo: Github. If I go back to this web, the page where my website is, and I reload it.

67
00:15:35.130 --> 00:15:50.165
Gabor Szabo: then you will see that things changed. So it displays my name. This is somehow the default you can. We can get rid of it later, but it displays my name without me telling it much, and then. But you can now see the content

68
00:15:50.770 --> 00:15:57.080
Gabor Szabo: nicely formatted that we we wrote actually.

69
00:15:57.570 --> 00:16:00.299
Gabor Szabo: before, before we we go further.

70
00:16:00.580 --> 00:16:17.699
Gabor Szabo: let me go to just one website. Okay, so let's let's even go to google.com, okay, just a generic website, or whatever. If I click on view, pay source, then you will see this.

71
00:16:18.010 --> 00:16:23.649
Gabor Szabo: Well, what can I say it? It's totally meaningless to most of us, right?

72
00:16:24.170 --> 00:16:44.849
Gabor Szabo: So this is actually HTML, and then there is some Javascript code here. But this is what generates this website. And this is a very, this is what is behind the scene and very simple thing, very simple website. At the end. I mean, the view is very simple, and but that's behind it. Now.

73
00:16:44.850 --> 00:17:00.479
Gabor Szabo: We probably probably don't want to write that that kind of stuff in order to create your page, I can even go back. It's a better example. I can go back to this web page of Mazal and see how it looks like behind the Scene View Source.

74
00:17:00.480 --> 00:17:23.579
Gabor Szabo: So here, too, I enlarge it to see. You can see there is lots of lots of this HTML, tags and whatnot, and you probably don't want to deal with this yourself. You don't want to. You just want to write the content, upload an image, write your content, and so on. So what happens here is that we can write in what.

75
00:17:23.579 --> 00:17:35.519
Gabor Szabo: in a language called Markdown. This is what we did here. So this editing that we did that I did the stars. And then the numbering. This is basically a syntax which is called Markdown.

76
00:17:36.140 --> 00:17:46.789
Gabor Szabo: And then there is a tool that takes that format and generates the HTML. So if we go to the new website and I click view source.

77
00:17:47.220 --> 00:18:06.840
Gabor Szabo: then you can see that this, too, has all kind of HTML in there. Okay, it's not that complex as the other websites. Not yet, but it already has some HTML here. And this HTML was generated by that tool based on the text I typed in

78
00:18:07.403 --> 00:18:15.200
Gabor Szabo: so the tool which is which is used by Github to generate these pages is called Jecular

79
00:18:17.310 --> 00:18:26.659
Gabor Szabo: Jekyll not and hide, but Jekyll SSG. It's the well, it's

80
00:18:26.780 --> 00:18:46.900
Gabor Szabo: it's a static site. Generator. Okay? So the generic name of these things is static static site generator or Ssg, okay, I'll copy the name here. So it's gonna be easier for everyone to understand what I'm talking about. I'm also putting it here

81
00:18:48.620 --> 00:18:59.249
Gabor Szabo: to have notes. So this is one of the hundreds, or maybe thousands, of tools that allow you to take some simple format.

82
00:18:59.340 --> 00:19:20.169
Gabor Szabo: the Markdown format that we used and generate a website from it. And Github picked specifically this tool, which is called Jekyll, which is written in Ruby, the ruby programming language which doesn't really matter for us, but just to. So, you know. So this, they used it

83
00:19:21.190 --> 00:19:33.499
Gabor Szabo: as the default tool as to generate the websites from the Markdown. We can change that if you you can change it if you like. But this is the default tool. Okay?

84
00:19:34.190 --> 00:19:42.430
Gabor Szabo: So what we look, what we saw here so far is that we could put a titles.

85
00:19:42.600 --> 00:20:07.700
Gabor Szabo: I go back actually to the page, to the source, so we can see it. If I clicked on the on the code and I click on the edit button because I'm going to change it anyway. So hash mark. And then some text is going to be with the the title of the page. Okay, a capital letters or big letters. Okay, relatively big letters.

86
00:20:07.820 --> 00:20:17.279
Gabor Szabo: Okay? Then something which has 2 hash marks is a subtitle you can see the result is slightly smaller letters.

87
00:20:18.632 --> 00:20:30.440
Gabor Szabo: I put here some text. It will be just displayed as some text what some people mentioned, that I should emphasize

88
00:20:31.570 --> 00:20:40.429
Gabor Szabo: that if I just type in the second line it won't actually show as a separate line. And this is going to be the 3rd line.

89
00:20:40.890 --> 00:20:49.740
Gabor Szabo: Okay, we'll see that basically this, these are separate paragraphs. And this is the this is going to show up as a single line.

90
00:20:49.930 --> 00:20:52.430
Gabor Szabo: Okay? The 3 dashes

91
00:20:53.410 --> 00:21:03.059
Gabor Szabo: became a horizontal line here. Apparently it also puts this, this thin lines under the title, Okay, nice.

92
00:21:03.170 --> 00:21:08.867
Gabor Szabo: And the the stores became just

93
00:21:10.230 --> 00:21:14.130
Gabor Szabo: list items. Okay, nothing. Very fancy.

94
00:21:14.570 --> 00:21:29.869
Gabor Szabo: And the numbering became these numbers. Now you might think that this was 1, 2, 3, 4, because I typed it. 1, 2, 3, 4, and this sort of right. But the question, What happens if I now remove this to dog?

95
00:21:30.548 --> 00:21:43.729
Gabor Szabo: Now it it left me with 1, 3, 4. And so let's see what happens if I save it now. Okay, so let's let's go ahead, because I really don't know. So I go ahead and commit my changes.

96
00:21:43.930 --> 00:21:52.250
Gabor Szabo: Again. I'd say, just update readme file, actually, should 2 lines.

97
00:21:53.896 --> 00:21:56.350
Gabor Szabo: Without empty

98
00:21:56.730 --> 00:22:16.730
Gabor Szabo: line. Okay, whatever. So I'm just showing you that it might be useful to add a a message. And again, what happens if I click on the actions? You can see that it's being queued right now, and it's going to be built soon. While I'm waiting for that. I would like to go back to the

99
00:22:17.200 --> 00:22:30.889
Gabor Szabo: you can go either here at the top or here to on the code part, to go back to the home page of this repository to the main page. What I wanted to show you is that now you can

100
00:22:31.580 --> 00:22:33.730
Gabor Szabo: actually, maybe I need to know

101
00:22:36.290 --> 00:22:49.889
Gabor Szabo: I'm looking for something. But I don't see it right now. Okay, interesting. You can see it was so large that it didn't show me the number of commits here. I if I put the the mouse over it.

102
00:22:49.890 --> 00:23:06.369
Gabor Szabo: then it shows 3 commits, but if I reduce the font a little bit, then it can show it will show here also in writing that is, 3 commits. So for up till now we had. We made 3, basically commits to the repository 3 changes.

103
00:23:06.970 --> 00:23:22.240
Gabor Szabo: Well, the 1st one was the creation of the of the file, and then 2 of the changes I made. I can click here and see the history of my changes. I can even click here on on the this is the id of the change.

104
00:23:22.510 --> 00:23:33.340
Gabor Szabo: and then I can see what's changed. So you can see that I removed this line and then added all these lines. This was the previous change I made.

105
00:23:34.050 --> 00:24:03.399
Gabor Szabo: I click on here. I can see. Then I added these lines and I removed the dog. Okay, so this is how we can see the history of our changes. And it might be not that important for the creation of the website when you are working alone, but when you go to a project and you start working on a project with multiple people, then it's good. It's very useful to see all the history of all the changes.

106
00:24:03.400 --> 00:24:20.800
Gabor Szabo: Who made the changes. What were the changes then? These explanations, these lines, will become even more useful, because it will give you a quick hint of of what that change was actually or what was supposed to be. Why was that made?

107
00:24:21.430 --> 00:24:23.450
Gabor Szabo: Okay? So

108
00:24:24.370 --> 00:24:31.449
Gabor Szabo: I go back to the actions just to make sure that it's finished. And as you can see, this time it was 39 seconds. So it's

109
00:24:31.730 --> 00:24:41.780
Gabor Szabo: changes and very various numbers go back to the website and reload it. And let's see what happens to the numbers 1, 2, 3, 4.

110
00:24:42.510 --> 00:24:48.390
Gabor Szabo: So the one now it became 1, 2, 3. So, despite the fact that in the file there was one.

111
00:24:48.950 --> 00:24:51.209
Gabor Szabo: What was there? I don't remember

112
00:24:55.460 --> 00:24:58.140
Gabor Szabo: in the file. If I edit the file.

113
00:24:58.890 --> 00:25:11.635
Gabor Szabo: I think it was 1, 3, 4, because I removed the 2. But on the website it shows me 1, 2, 3, which is basically the right thing to do.

114
00:25:12.330 --> 00:25:34.079
Gabor Szabo: Despite the mistake I made. I usually do actually just replace it by once. Okay, all of them. I number once, and then I don't. It doesn't matter if I rearrange the things. It won't confuse me here that I have some numbering here, and then the generated page has some different numbering. So that's 1 thing

115
00:25:34.350 --> 00:25:52.470
Gabor Szabo: the other thing we did is that we put here 2 lines, and then the 3rd line after an empty row. And if you go back to the website, you can see that the 1st 2 lines are on one line. And this is the separate line. So this is how you can have separate lines, basically.

116
00:25:54.030 --> 00:25:56.800
Gabor Szabo: and no.

117
00:25:57.140 --> 00:26:11.649
Gabor Szabo: Markdown is A is a generic language that can be used in various places in a lot of places. So that's why it's very useful, because it used in various parts of Github as well, and all kind of other things.

118
00:26:11.980 --> 00:26:31.359
Gabor Szabo: and it has flavors. So there's a default language called Markdown, but there is also a Github flavored Markdown. Search for it, and then I'm going to click the link. So this is the specification, the definition of

119
00:26:31.470 --> 00:26:32.990
Gabor Szabo: of their

120
00:26:34.570 --> 00:27:03.260
Gabor Szabo: a Github flavored Markdown language, and you can read it. Of course you can search for various things. You can see the explanations of how to do various things. The numbering here, you can see. And then you can have sub list or whatever. Okay, lots of lots of things. It's very simpler than doing. HTML, but it's still, there is stuff to learn.

121
00:27:03.520 --> 00:27:07.350
Gabor Szabo: So where is my editor now?

122
00:27:07.960 --> 00:27:29.710
Gabor Szabo: Oh, no, I want I put I put it here, and I wanted to put the link also here to save it. So I am going to add it to the below the video, they're going to have a link to my website on on the git website. And and there we're going to have this information as well listed.

123
00:27:29.840 --> 00:27:55.680
Gabor Szabo: And so what else shall I show you? There are a couple of other things that might be interesting, by the way, feel free to those people who are present, and they have the advantage of they can ask questions. So just feel free to even write in the chat things that you would like to see how to do on Github pages. Okay? And with Markdown

124
00:27:55.890 --> 00:28:16.309
Gabor Szabo: a couple of things that we might want to do while you're thinking about it. One of them is creating a link. So, for example, you might, I have this page. Right? I said, that on Github Codemaven, that's where I have all the articles. And this one. This video is going to be here as well, so I am going to

125
00:28:16.700 --> 00:28:18.520
Gabor Szabo: put here a link to

126
00:28:18.660 --> 00:28:36.080
Gabor Szabo: get Maven. This is going to be the text of the link, and it's in between square brackets. And then in between regular parentheses, I put in the link where to where this page should go.

127
00:28:36.300 --> 00:28:37.370
Gabor Szabo: Okay.

128
00:28:41.670 --> 00:29:07.299
Gabor Szabo: okay, so there is this link. That's 1 thing. Another thing is going to be some picture that we might want to add. So I'm going to answer that question in a bit that I saw. I just would like to finish this one. So let's look for for some animal. What kind of animal do we like, you know?

129
00:29:07.460 --> 00:29:13.110
Gabor Szabo: And I don't know what kind of animal should I like now, this this time?

130
00:29:22.060 --> 00:29:23.420
Gabor Szabo: a big elephant.

131
00:29:25.890 --> 00:29:30.450
Gabor Szabo: Okay, let's find images. Okay? So I have images.

132
00:29:30.984 --> 00:29:34.709
Gabor Szabo: I can click on one of them view file

133
00:29:35.180 --> 00:29:47.050
Gabor Szabo: hopefully, this will work. Yeah. So at the top, you can see this is an image, real image. I take the image link of the link of the image. And then I put it in in the

134
00:29:47.960 --> 00:29:57.649
Gabor Szabo: in here exclamation, mark, then some name. Okay, so this is a big

135
00:29:58.240 --> 00:30:13.039
Gabor Szabo: an email. Okay? And then so it looks very much like a link with a square bracket. Some text in the parentheses the address of this page where the image is, but there is an exclamation mark at the beginning.

136
00:30:13.290 --> 00:30:26.060
Gabor Szabo: So I put commit the changes, add link and image. I explain it, and I clicked already on the green button. And so it's going to be there now. It's

137
00:30:26.940 --> 00:30:40.010
Gabor Szabo: the action is building now, while it's building. I try to answer that question. So how does Github know that we are creating Github pages? Isn't it just normal repo with a readme? Md, well.

138
00:30:40.290 --> 00:30:41.790
Gabor Szabo: yes and no.

139
00:30:42.350 --> 00:30:43.370
Gabor Szabo: Yeah.

140
00:30:43.510 --> 00:30:44.840
Gabor Szabo: And

141
00:30:45.710 --> 00:30:54.739
Gabor Szabo: in the configuration of every repository. Okay, in the settings of every repository there is a place which called pages.

142
00:30:55.040 --> 00:31:01.695
Gabor Szabo: And in these pages you can say whether it's being deployed.

143
00:31:02.700 --> 00:31:07.909
Gabor Szabo: how is it being created? So let's let me create another repository, actually,

144
00:31:09.230 --> 00:31:16.250
Gabor Szabo: to see how it works. Really works. So just, I'd create a a repository called New.

145
00:31:17.920 --> 00:31:24.930
Gabor Szabo: Where is this experimental red Bull? Okay.

146
00:31:25.330 --> 00:31:29.409
Gabor Szabo: I add the readme file. And I edit.

147
00:31:29.610 --> 00:31:32.979
Gabor Szabo: okay, so let's see what happens with this one.

148
00:31:33.760 --> 00:31:40.940
Gabor Szabo: Actually the thing. The fun thing about this presentation is that I I have been doing. I did it a couple of times already, and every time

149
00:31:41.620 --> 00:31:50.389
Gabor Szabo: every time is a little different, partially because Github changes the ui and the features and whatsoe. So I got to the settings. Go to the pages.

150
00:31:50.670 --> 00:32:05.890
Gabor Szabo: and here it says deploy from branch, and it says none. So this basically is the setting when it's turned off when it's not Github pages. And if I go back to the one that

151
00:32:05.990 --> 00:32:25.129
Gabor Szabo: I was editing in this one. You can, it says, deploy from branch, and it says from the main branch and from the root folder, and there it will find the readme file. Okay? So the difference is basically that because of the name of this repository, because it has this special name.

152
00:32:25.300 --> 00:32:46.820
Gabor Szabo: Because of this, it automatically configured it to be generated to generate the Github pages. Okay, you. We can also change this one. Okay, actually, let me. Let me show you. So I can also change this one to saying, Okay, from the main branch. This rep only has a main branch and the route, and I can save it.

153
00:32:47.950 --> 00:32:53.090
Gabor Szabo: and then it will also generate a Github page. You can see it's building.

154
00:32:53.480 --> 00:33:02.159
Gabor Szabo: and then I'm going to show you in a bit what the the result is. In the meanwhile, in the meantime, the other one already finished building. Okay.

155
00:33:02.360 --> 00:33:08.720
Gabor Szabo: hopefully, actions and go back. Control. R

156
00:33:08.940 --> 00:33:18.869
Gabor Szabo: is so you can see that there is this link to get Maven. If I click on it, then I get to get Maven. So this is how I add the link. And this is the big elephant here.

157
00:33:19.030 --> 00:33:41.056
Gabor Szabo: Okay, now, we could also upload an image so we could download this file or you can have a file on your on your in your folder, and then you can upload it to your repository, and then you can serve it from the repository. How can you do this? Well, if you click here and

158
00:33:42.550 --> 00:33:55.159
Gabor Szabo: let's go. Let's 1st create a new page. Okay? So I'm first, st I would like just to create a new page. So this is the main page. The read me empty. But we can have more pages. So let's create a new file.

159
00:33:56.190 --> 00:33:58.200
Gabor Szabo: which is going to be called

160
00:33:59.210 --> 00:34:06.260
Gabor Szabo: other.md. Because I don't have better idea how to call it okay. And I put here just

161
00:34:06.600 --> 00:34:12.219
Gabor Szabo: this is the title of the other page.

162
00:34:12.400 --> 00:34:19.079
Gabor Szabo: Okay, nothing very interesting. I click on this one. And then again, I commit it.

163
00:34:19.540 --> 00:34:25.910
Gabor Szabo: Okay, so now it's going to generate it, and they will see where it it goes.

164
00:34:26.560 --> 00:34:29.270
Gabor Szabo: In the meantime we can go back to where we were

165
00:34:29.909 --> 00:34:33.930
Gabor Szabo: with the other one. Okay, so this one is the experimental repo.

166
00:34:34.770 --> 00:34:35.500
Gabor Szabo: I

167
00:34:35.630 --> 00:34:53.420
Gabor Szabo: copy the the name, so I won't have to. So I won't make a typo there. Okay, so this is called in in my user is called experimental repo, a random and basically any arbitrary name there, any repository. And then I can go to my real website.

168
00:34:53.690 --> 00:35:01.589
Gabor Szabo: Add this name here slash experimental repo. And this is where you can see the

169
00:35:01.710 --> 00:35:06.560
Gabor Szabo: content of that site. So here this

170
00:35:08.320 --> 00:35:27.069
Gabor Szabo: has nothing in there, only the this readme file is nothing besides the name, but you can see its content under the same website, under the same address with the name of the Repository, the specific repository edit here. So I'm going to put it

171
00:35:28.680 --> 00:35:36.749
Gabor Szabo: here, and I may probably going to give some explanation. I'm also adding it here, just in case you would like to see it.

172
00:35:36.910 --> 00:35:49.669
Gabor Szabo: Okay? So if yeah, I'll going to should get there, too. But here we go back actions.

173
00:35:49.850 --> 00:35:57.379
Gabor Szabo: This was already built. So the other page is also here, so I can go and type in other.

174
00:35:58.560 --> 00:36:05.490
Gabor Szabo: And now you can see the other page. So it is and address

175
00:36:07.610 --> 00:36:22.160
Gabor Szabo: inside my repository. Okay, you can see it's very similar. Both are very similar. One is just a page inside my main repository, and the other one is just another random repository.

176
00:36:22.740 --> 00:36:36.580
Gabor Szabo: So that's it. I think. One final thing, probably I would like 2 final things I would like to show, and one of them is a, let's go back to this other website, the git dot code meevant.com

177
00:36:37.377 --> 00:36:44.539
Gabor Szabo: so you might ask, how this? How does this work that I have this other address. So this one.

178
00:36:44.830 --> 00:36:56.639
Gabor Szabo: it's host, is hosted in the repository, which is actually has the same name as the website. It's it doesn't need to be okay. I only use the same name because it's easier for me.

179
00:36:57.500 --> 00:37:09.220
Gabor Szabo: What is important is that it also configured to use to create pages. So I go to the pages configuration of it. But instead of

180
00:37:09.450 --> 00:37:14.789
Gabor Szabo: and I show the other one as well, so we can see those, and they can compare the 2.

181
00:37:15.880 --> 00:37:23.030
Gabor Szabo: So this experimental thing, and also my default, page says, deploy from branch.

182
00:37:23.150 --> 00:37:34.719
Gabor Szabo: And then it says, where to deploy from this means basically to use the default. Jackie Processor. Okay, and it has

183
00:37:35.660 --> 00:37:37.000
Gabor Szabo: all kind of things

184
00:37:37.740 --> 00:38:00.210
Gabor Szabo: on this website. It says, instead of the from the deploy branch, it has used use Github actions. So actually, you could. You saw that the other one also is using github actions behind the scene. But for historical reason, it says, deploy from branch, and there are also all kinds of other things as well. But this is what happens there. So it uses Jackyl.

185
00:38:00.370 --> 00:38:22.609
Gabor Szabo: This one uses another processor which I configure, which is the Md. Book processor markdown book with Md. Book. It's called and you can see the Source code and how it's it's generated. We don't have to. We don't go into that because it's way beyond our need.

186
00:38:22.800 --> 00:38:38.159
Gabor Szabo: What is relevant. What is interesting? What might be interesting to you is that if you have a domain name you can put, you need to map your domain, name to Github pages so the world will know to arrive to Github pages.

187
00:38:38.590 --> 00:38:42.250
Gabor Szabo: And you can. You need to tell that this specific

188
00:38:43.250 --> 00:39:00.550
Gabor Szabo: repository 2 is the one that's that should serve that should be served when someone arrives to this address. So the pages generated from the Git code Maven should be served when someone arrives to this address.

189
00:39:00.600 --> 00:39:10.690
Gabor Szabo: and that's it. And then you can also say that use https, so it will be a secure address. This is only nice to have. It's not really not

190
00:39:10.690 --> 00:39:35.210
Gabor Szabo: a requirement to my students at the Institute or anyone else, you need to buy a domain name or basically rent a domain name in order to have this. But then, instead of having the Github address the Github I/O address, you will have your own address, which means that if a year from now you decide that you would like to move it to some other

191
00:39:36.078 --> 00:39:44.440
Gabor Szabo: service, and you move from Github pages to some other place, because your needs are beyond what Github can provide you.

192
00:39:45.370 --> 00:39:57.470
Gabor Szabo: Then you can just move this address to this other place, and no one really needs to know that you moved to some other place because the address this git dot code maven

193
00:39:58.110 --> 00:40:09.400
Gabor Szabo: git.codemaven.com will remain the same if you just point to a different service this different server. So it has that that advantage?

194
00:40:11.020 --> 00:40:17.269
Gabor Szabo: That's it. Any questions, any any issue that I would that you would like me to show?

195
00:40:23.170 --> 00:40:41.809
Gabor Szabo: If not, then I finish this as usual by changing the the website. So because I will, I am sure that I'm going to need to use this. Should I do this? No, I won't do this. I'll do it.

196
00:40:44.390 --> 00:41:13.380
Gabor Szabo: Sorry. I think, that I need to continue this presentation later on. But I will need to. I I do change the I'm going to change this address. So because I'm going to use, I might be able to use. I might need to use this address again to do a similar demonstration. I really like to move this repositories to some other name, so it will remain for you that you will be able to look at the repository. But

197
00:41:14.459 --> 00:41:26.609
Gabor Szabo: it won't take up this address. So what I do now is I rename this repository. So I come to this repository. I go to the settings again.

198
00:41:26.790 --> 00:41:32.940
Gabor Szabo: I say, rename it to Github pages.

199
00:41:33.290 --> 00:41:40.070
Gabor Szabo: and I never remember how to call it so. I'm need to find how my other domains are called

200
00:41:40.290 --> 00:41:47.650
Gabor Szabo: so repositories. Other repositories are called sorry Github

201
00:41:50.270 --> 00:41:58.110
Gabor Szabo: here. Okay, so this was another demo. I did. And this year this is how I where I saved this. So I'm going to

202
00:41:58.240 --> 00:42:06.629
Gabor Szabo: rename it to this one just with the current date. So the date is March. Well for us.

203
00:42:07.130 --> 00:42:22.360
Gabor Szabo: Okay, not for the people in New Zealand for us. It's March is the second march, and I click on rename. And I just need to save this. I'll click on rename. So what now happens is that if I go back to the website.

204
00:42:22.830 --> 00:42:32.689
Gabor Szabo: well, I have to wait till it's being processed right? So it's now generating the website, but because the name of the repository

205
00:42:32.690 --> 00:42:54.430
Gabor Szabo: is not the the one that I told you to to use, not the default one. Okay, so not the one that is called Myusernamegithubio. Because of that, this website is going to disappear. Okay? Because remove the repository from behind it. So I just need to wait till the processing is finished.

206
00:42:55.260 --> 00:42:56.190
Gabor Szabo: Hey?

207
00:42:57.530 --> 00:43:03.290
Gabor Szabo: Yeah, I know from New Zealand you use advanced technology. And so for you, it's already

208
00:43:04.160 --> 00:43:05.610
Gabor Szabo: the 3rd of March.

209
00:43:06.480 --> 00:43:07.520
Gabor Szabo: Hello!

210
00:43:08.940 --> 00:43:10.380
Gabor Szabo: How is the future?

211
00:43:11.040 --> 00:43:13.740
Gabor Szabo: So it's working working here.

212
00:43:14.210 --> 00:43:27.949
Gabor Szabo: If you were okay, it's done. Okay. So if I go back to the website and reload it. Now, it's a game gun. But if I put here the the address, the new address. Okay. So this Github pages demo

213
00:43:28.450 --> 00:43:31.280
Gabor Szabo: oof second of March.

214
00:43:32.020 --> 00:43:49.629
Gabor Szabo: and I load that page. That is where you can find the page. So you can find it. It's always there, even if I don't have the main website. And so also this experimental one, the one that we use the experimental. I'm going to remove this one actually, but the

215
00:43:49.810 --> 00:43:56.099
Gabor Szabo: and the other one will stay. So also. This one is here. So I I put the address of this

216
00:43:56.620 --> 00:44:07.209
Gabor Szabo: new website here, and I also going to put it here. And I'm going to link to the repository as well. So where is the repository? Let me find the repository.

217
00:44:07.580 --> 00:44:12.140
Gabor Szabo: this one, this is the repository.

218
00:44:16.150 --> 00:44:22.639
Gabor Szabo: This is where where it's being, where I saved it. And I think that's it. So

219
00:44:24.470 --> 00:44:25.879
Gabor Szabo: more than an hour.

220
00:44:27.440 --> 00:44:40.090
Gabor Szabo: Yeah, I know 1 1 thing that I really should should have shown you is how to upload the file. Okay, I'll I'll I'll still show this. So if you would. If you have an image.

221
00:44:40.880 --> 00:44:44.679
Gabor Szabo: Okay, the problem with this elephant

222
00:44:44.810 --> 00:44:55.050
Gabor Szabo: and the way we added it is that we are loading it from a different website. So if the owner of that website decides to remove the elephant, remove this image.

223
00:44:55.270 --> 00:45:00.590
Gabor Szabo: then our website will be broken. It will have an image.

224
00:45:02.090 --> 00:45:15.209
Gabor Szabo: Oh, okay, there is another question. I'll answer that one as well. But let me finish with the elephant. So if they remove the elephant the image from their website, then my website is going to be broken because it will show that there is a

225
00:45:15.350 --> 00:45:18.749
Gabor Szabo: place of for an image, but it's it's gone

226
00:45:18.900 --> 00:45:29.450
Gabor Szabo: worse than that. If they replace the elephant with something that I really don't want to show on my website. Okay? Then

227
00:45:30.150 --> 00:45:40.859
Gabor Szabo: I won't until I actually look at the page. So it automatically will start using the the new image. Okay, I won't have control over it. So it's much better to.

228
00:45:41.260 --> 00:46:00.360
Gabor Szabo: And besides, you have some copyright issues. Okay? So that's another thing. But let's say you fix the copyright issues. Okay? Who owns the image? So? But if you have your own images, okay, whatever that you would like to show, then what you can do is, you have it on your computer and then you come here.

229
00:46:00.360 --> 00:46:12.969
Gabor Szabo: Click on plus upload files. Then it will open a file selector and then you can select the file, upload the file, and just make sure it's much better if the file name

230
00:46:13.420 --> 00:46:34.720
Gabor Szabo: has only Latin letters and numbers like this, so you won't use spaces. You won't use Hebrew or Arabic, or whatever Korean letters, because it's it's much harder to to have the link, so makes the file name simple, and then you can.

231
00:46:34.940 --> 00:46:55.049
Gabor Szabo: just the same way you can embed the image. But now it's embedded from your website. So you have full control over the image and it won't disappear suddenly. Okay, so that's how you can add that image. Now there was a question, how can I remove the username link at the top.

232
00:46:55.170 --> 00:46:56.150
Gabor Szabo: so

233
00:46:56.410 --> 00:47:06.830
Gabor Szabo: that that needs a slightly longer answer. But I should have done this as well. So I'm going to do that. Show it. Now. Actually, I need to

234
00:47:07.040 --> 00:47:09.450
Gabor Szabo: and need to

235
00:47:10.050 --> 00:47:22.309
Gabor Szabo: cheat a little bit, because I never remember how to do this. But it's not not a big issue. So I have another website, which is called, I think it's called github.com.

236
00:47:22.500 --> 00:47:34.090
Gabor Szabo: which is a very defaultish website on Github, and I use it primarily to play around with this, and it is actually

237
00:47:34.200 --> 00:47:38.410
Gabor Szabo: on. And and here, yeah.

238
00:47:38.510 --> 00:47:45.989
Gabor Szabo: it is on github.com subgob, and it's called real. This is the repository. Okay.

239
00:47:46.240 --> 00:47:51.770
Gabor Szabo: I'll I'll put the link here so you can. You can find it as well if you really want.

240
00:47:52.240 --> 00:47:55.449
Gabor Szabo: This is the repository of that website.

241
00:47:56.520 --> 00:47:59.300
Gabor Szabo: And the interesting part is this one

242
00:47:59.730 --> 00:48:04.530
Gabor Szabo: that we have this config file where I can

243
00:48:04.970 --> 00:48:11.159
Gabor Szabo: put all kind of configurations. So the fact that it it showed up slightly.

244
00:48:11.480 --> 00:48:15.529
Gabor Szabo: It it was a slightly better looking website, github.

245
00:48:16.130 --> 00:48:29.470
Gabor Szabo: subgoop.com. Okay, so it just it has these colors. And whatever is because it uses the Jekyll theme caiman. There are various themes that you can use, and then

246
00:48:30.028 --> 00:48:41.240
Gabor Szabo: you can do whatever you like. Okay, so I'm going to copy this, and it's underscore config, Yaml. So I go back to the Repository

247
00:48:41.590 --> 00:48:49.689
Gabor Szabo: if I can find it, and I create the file, create new file.

248
00:48:51.720 --> 00:49:05.250
Gabor Szabo: A put this here Github Repo Github, Page, Demo, Github, page, and underscore

249
00:49:06.060 --> 00:49:19.369
Gabor Szabo: config dot Yml, Yml or Yaml is a format. Okay? That has key value pairs. And and they are using this for configuration. I commit the changes.

250
00:49:20.580 --> 00:49:25.750
Gabor Szabo: Commit them, really. And then we wait. Okay, so

251
00:49:26.170 --> 00:49:36.419
Gabor Szabo: this allows me one way to 1 1 part of the configuration. Still using the default. Jackie generator.

252
00:49:36.620 --> 00:49:40.290
Gabor Szabo: Other things that maybe I have here. I'm not sure.

253
00:49:41.832 --> 00:50:07.369
Gabor Szabo: Yes, in the assets I can also add more style sheets, and you can read about. You can create your own template. So how the web page looks. That will that involves a lot more understanding of HTML, but you can. You can. You will learn it this time. Okay, so

254
00:50:08.120 --> 00:50:16.480
Gabor Szabo: you can. You can find all kind of other things like this. Actually, I think I even had some slides for this

255
00:50:16.890 --> 00:50:19.459
Gabor Szabo: which I don't remember where I put now.

256
00:50:21.420 --> 00:50:23.880
Gabor Szabo: so I won't be able to show.

257
00:50:26.640 --> 00:50:31.400
Gabor Szabo: Let's try to find them slides.

258
00:50:31.870 --> 00:50:40.230
Gabor Szabo: Go with me then, Github pages.

259
00:50:40.500 --> 00:50:51.019
Gabor Szabo: I think I originally, I think. Yes, I wanted to use these slides, and I forgot about them to go over all the parts.

260
00:50:53.340 --> 00:50:59.600
Gabor Szabo: so I'll put the link to this, the slides here. So in case you will still want to

261
00:51:00.860 --> 00:51:03.779
Gabor Szabo: go over them, because, oh.

262
00:51:08.690 --> 00:51:16.640
Gabor Szabo: they should be the address. Yes. So I'm putting going to put here the address. These are the slides that I forgot to use now today.

263
00:51:16.810 --> 00:51:18.690
Gabor Szabo: Okay, lovely.

264
00:51:18.940 --> 00:51:30.370
Gabor Szabo: Anyway, if I go over the slides, this is created with Md. Book, and then

265
00:51:31.550 --> 00:51:38.460
Gabor Szabo: these are more, some more markdown things. I wanted to show you that some of them. I I didn't, may explain.

266
00:51:39.330 --> 00:51:40.810
Gabor Szabo: And

267
00:51:44.740 --> 00:51:49.980
Gabor Szabo: here here explanations about the layout and a little bit more about themes.

268
00:51:50.980 --> 00:51:53.399
Gabor Szabo: the configuration file I just used.

269
00:51:54.590 --> 00:52:01.019
Gabor Szabo: You can have these titles per each page and Javascript code.

270
00:52:01.390 --> 00:52:05.659
Gabor Szabo: But what I'm looking for is, oh, this one, the last page, I think

271
00:52:05.770 --> 00:52:12.889
Gabor Szabo: some examples. So here. These are mostly my websites, not all of them that use

272
00:52:13.250 --> 00:52:26.420
Gabor Szabo: static websites. Basically, they are somehow generated. Most of them are not by Jekyll, but by various tools I built. So for that, you need the programming knowledge.

273
00:52:27.130 --> 00:52:33.119
Gabor Szabo: One of the best ones is this one, or I think the best ones is a

274
00:52:34.190 --> 00:52:46.380
Gabor Szabo: a translator for the ladino language. Okay, so you type in Ladino, and it will translate to all kind of other languages, or you can type in some other language, and then it will translate it to

275
00:52:46.650 --> 00:52:48.090
Gabor Szabo: Ladino, and

276
00:52:48.270 --> 00:53:01.870
Gabor Szabo: and so on. So these are. These are examples. You can find various examples in various programming languages. And I need to update this because things have changed since I created this this page.

277
00:53:02.050 --> 00:53:27.440
Gabor Szabo: So what we were doing here is we were trying to look at this one. Yes, okay. So you can see now that your what you asked for, how can I remove the username link on the top? Well, I removed it with that configuration. There are all kind of other configurations that you you can do. And and you'll have to

278
00:53:27.660 --> 00:53:31.379
Gabor Szabo: play around basically any other questions.

279
00:53:39.220 --> 00:54:01.559
Gabor Szabo: If not, then well, please, I'll share all this stuff if you enjoyed the video or enjoyed the presentation, then please also check out the video later on and and like it and follow my channel. So you will get other videos when when I share them. If you watch the video and enjoyed it. Then please click on the like button, and also follow the channel to

280
00:54:01.680 --> 00:54:10.439
Gabor Szabo: to get notified when you, when I have a new videos, and if you'd like to join us in the in the live presentation.

281
00:54:10.560 --> 00:54:12.340
Gabor Szabo: That would be even better.

282
00:54:12.460 --> 00:54:14.480
Gabor Szabo: So thank you for.

283
00:54:15.640 --> 00:54:24.619
Gabor Szabo: Thank you for watching, and thank you for being here especially, and thank you for your questions. And I'm finishing this video. Bye, bye.

