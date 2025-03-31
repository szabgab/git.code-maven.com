# Using Git on Windows in VS Code

{% embed youtube id="kV1sJLf4vb0" file="2025-03-31-using-git-on-windows-in-vs-code.mp4" %}

* [Download git](https://git-scm.com/downloads/) and install it. Make sure to change the default editor to be "Notepad". You will thank me later.

* In the **File Explorer** go to the `View` menu and make sure the heck-boxes to **show file extenstion** and **show hidden files** are checked.

* Create a file call `.gitconfig` (and not `.gitignore` as I did it first) in your home directory which is `c:\Users\Foo Bar`, if your name is Foo Bar.

The file hould look like this:

```ini
[user]
   name = Foo Bar
   email = foo@bar.com
```

* Clone the repository using the `https` address to a local folder that has only latin letters and underscore in its name.




## Transcript

1
00:00:02.440 --> 00:00:07.940
Gabor Szabo: Hello, and welcome to the Codema Event Channel. My name is Gabor. I'm teaching

2
00:00:08.060 --> 00:00:31.820
Gabor Szabo: python, rust, git and things like this various companies. And in this video, we are going to see how to edit a Github Repository. So repository, which is located on Github. But how to do it locally using git locally and actually using visual studio code. That's what you can see on the screen. And we are doing this whole thing on windows.

3
00:00:32.090 --> 00:00:54.800
Gabor Szabo: So if you might remember, we had a video earlier where we were building Github pages, a website on Github pages using Markdown. And it was my own sort of personal website. But at the end of the video I renamed it to be called Github Pages Demo and I'm clicking on it. What you can see here is now the video about that.

4
00:00:55.510 --> 00:01:03.659
Gabor Szabo: And this is the the location of this repository. And if I want to visit it, actually, I think if I click here.

5
00:01:03.810 --> 00:01:14.649
Gabor Szabo: I forgot to do this earlier, but if I click on this one I can tell it to use the Github pages, URL, and then it will automatically select the URL.

6
00:01:14.900 --> 00:01:40.100
Gabor Szabo: And then here I can click on this one and we'll find the page. So that was the page. And it's not on my main site. But it's a subdirectory. And so we're going to edit this. We won't write programs, at least not at the beginning. We are just going to write some more markdown files. But we would like to make it locally. So we'll learn a little bit about local development.

7
00:01:40.430 --> 00:02:09.790
Gabor Szabo: So for this, we will need basically, okay, what we can do is we can start by trying to clone this repository. So here I'm already logged in into this into Github. But I'm going to use now the Https cloning method. And the reason I'm using it because that requires only my username and my password versus the Ssh. Which needs a lot more configuration, and in the long run it's probably better the Ssh version.

8
00:02:09.860 --> 00:02:27.039
Gabor Szabo: But for now I would like to prefer to show the Https version. So I clicked. Here, I take the address of this repository. Basically the way I came here, I clicked on this code. And now I'm going to the editor, the Visual Studio Code, which is already installed on my windows machine

9
00:02:27.820 --> 00:02:35.070
Gabor Szabo: and on the left hand side there is this icon which is the source control thing.

10
00:02:35.610 --> 00:02:41.999
Gabor Szabo: And now I'm trying to clone the repository from

11
00:02:42.270 --> 00:02:47.130
Gabor Szabo: Github to my own computer. Basically downloading. There's the word is cloning.

12
00:02:47.170 --> 00:02:56.390
Gabor Szabo: Now. I haven't installed git local yet. So that's why it says, download git for windows. If I click on this one hopefully, it will open

13
00:02:56.430 --> 00:03:09.080
Gabor Szabo: the website. It asked me if I want to open the website. So it's opening it. Actually, I already had it open. But it's on the Git scm website. And I need to download a

14
00:03:09.080 --> 00:03:34.219
Gabor Szabo: probably because I'm on windows. So I'm going to download it for 64 bit on windows, because that's a 64 bit machine. I mean, these days, basically, every machine is 64 bits. Actually, I don't even need to download it any, because I already did it. I just have to find the download folder. So I have it downloaded. I downloaded last week. This is the file so I can double click on it and install it.

15
00:03:35.190 --> 00:03:55.290
Gabor Szabo: It must me. And that steps through the installation. Because if there's 1 place that I need to make some changes, so here I just click on next. Unfortunately, I don't think that I can. I know how to enlarge the the fonts here so far. I just accepted the defaults next

16
00:03:55.870 --> 00:04:16.200
Gabor Szabo: next, and here. This window is where I recommend that you make some changes because well, maybe not while using the Vs code. But later on you might need this feature. So in some cases git opens an editor for yourself, and the default editor is called Vim, which is a

17
00:04:16.640 --> 00:04:32.739
Gabor Szabo: fantastic editor, but it needs like 2 years to get used to it, so I don't recommend you get started with it now. So instead of that, and this is the default of what you have here. So instead of this, I'll check here, and I will pick the use, notepad.

18
00:04:33.080 --> 00:04:50.569
Gabor Szabo: because, notepad, if you are on windows, Notepad is there all the time, and and we probably won't encounter this issue and the next, the rest are just clicking next, next, next, nothing, nothing else. Okay. So this was the only thing that I, where I made changes

19
00:04:51.840 --> 00:05:01.589
Gabor Szabo: and go to the installation. And so it's now installing. So nobody's on your windows system. And we won't really need this

20
00:05:01.690 --> 00:05:25.320
Gabor Szabo: right, not in this video. But maybe later on you'll encounter cases. And I really, really don't want you to get into vim without knowing it, because then you will be one of those millions of people who needs to know how to get out from vim. And this is one of the most popular questions on Stack overflow. Anyway, this is installing. And

21
00:05:25.760 --> 00:05:39.039
Gabor Szabo: one thing I note, I saw here that once you install it, you need to reload, so I guess I will be able to reload this with this button. Okay? So it finished the installation. I clicked on finish

22
00:05:39.450 --> 00:05:58.820
Gabor Szabo: and shows me some information about the release of git for windows. Okay, I don't really need this fine. I will have a link to this place where you can download. Git from under the video. But, as you could see, I just clicked here on this blue

23
00:05:58.820 --> 00:06:17.600
Gabor Szabo: thingy button. Yeah. So now I guess I can reload it with that link. And so visual studio had to be reloaded in order to find the installation of git, and it found it, because now I have 2, I know it, because now I have 2 blue buttons, and I can enlarge this one.

24
00:06:17.610 --> 00:06:33.989
Gabor Szabo: And so now I could open a folder. If I already have locally a git repository, then I could open that folder, but I don't have it yet. So now I need to clone the repository. I click on the clone. And here I paste that URL that I copied from

25
00:06:34.160 --> 00:06:39.100
Gabor Szabo: Github. So just to remind you again, I go back to Github.

26
00:06:39.860 --> 00:06:42.169
Gabor Szabo: If I can find this here.

27
00:06:43.420 --> 00:07:01.559
Gabor Szabo: Yeah, this one. Okay, this repository. I clicked on the green button. I picked the https and I copied this address. Okay, so this is the way I'm going to clone the repository click on Clone. I put the repository and then say, Okay, clone from Github.

28
00:07:02.895 --> 00:07:10.370
Gabor Szabo: Okay, whatever it says, there's no credentials. I hope that it won't be a problem in this video.

29
00:07:14.670 --> 00:07:23.303
Gabor Szabo: Let me try it again, Clone. From okay. Sorry. I I guess I had to click on the

30
00:07:23.630 --> 00:07:45.260
Gabor Szabo: upper link. So I go back for a second clone repository. I clicked here and earlier, I said, clone from Github. And now I clicked on this one so, and this is apparently the right one. And now it tells me, okay, please, it opens the file explorer and basically lets me find a location where I would like it to be cloned locally on my computer.

31
00:07:45.260 --> 00:08:12.209
Gabor Szabo: So I usually like to. So I don't recommend that you put it in your home directory, especially if you have a space in your name, or if you have a letter that is not the Latin letters, because that can confuse all kind of applications here. So what I do usually do, and if, when I work on windows is that I go to my C folder there I have a folder, or if I don't, then I create one which is called work.

32
00:08:12.628 --> 00:08:21.260
Gabor Szabo: can I enlarge this one? No, so just trust me if you can't see it. Well, it's called work here and in there. There. I have my projects.

33
00:08:21.960 --> 00:08:37.640
Gabor Szabo: and I think that's it. I can just select. Now select the repository destination. Okay, so this work folder is the repository destination. There are all these things here, but what this will do is we'll create a new folder.

34
00:08:38.330 --> 00:08:51.759
Gabor Szabo: so it will create a folder using the name of this repository. Would you like to open the Cloned Repository? Okay, that's the pop-up here. And yes, I would like to open it.

35
00:08:51.760 --> 00:09:18.649
Gabor Szabo: And basically it's open. It opens now the folder in the Vs code. Now, what you need to know about Vs code, if you don't know it yet, that it likes to deal with folders, and in inside the folder there are going to be files or there are files, and then it knows how to relate between those files. So that's why, instead of opening a single file, we start by opening a folder, and that's what it asked me to whether, if I would like to open this folder.

36
00:09:18.650 --> 00:09:25.350
Gabor Szabo: and that's what it did. So now it opened the folder. I'll show you also in the file, explorer, so you can see what happened.

37
00:09:25.440 --> 00:09:29.630
Gabor Szabo: And so here I can come to the C. Folder. C.

38
00:09:29.690 --> 00:09:56.990
Gabor Szabo: Disk work, and, as you can see, there is a new folder here which is the name of the Repository, the last part of the repository without my username, and so on. Now, in order to clone a repository like this, I didn't really need to be logged into github because I use the Https method, and because this repository is public, so I could access it.

39
00:09:57.700 --> 00:10:23.090
Gabor Szabo: Anyone could do this cloning, pushing back to this repository. It's not available for everyone. It's only available for people who are authenticated and who have the rights. And we'll have to get to that point in a bit, but for now you just see that there is this folder, and then here are the files. So this is the file explorer shows me. But I don't really need that now, because I can work with visual studio code.

40
00:10:23.390 --> 00:10:30.260
Gabor Szabo: And let's see now, what do we need to edit? So if I go back to the website.

41
00:10:30.370 --> 00:10:56.349
Gabor Szabo: And you might remember or not from the previous video. This is the website. And so this is the readme file. This comes from the readme file, where there is some stuff in there animals, there is this elephant, and I don't know what else. Okay, so this is in the readme file. So I'm opening the readme file. And you can see the content here. And only only thing I'm going to put here is

42
00:10:58.170 --> 00:11:10.269
Gabor Szabo: windows. Okay? So I'll just add the new entry, a title saying, Just windows, and I'm saving it. So this is what I added on my windows machine locally.

43
00:11:10.380 --> 00:11:14.790
Gabor Szabo: Now, what you can see notice here that here you got a on the

44
00:11:15.290 --> 00:11:44.960
Gabor Szabo: on the left hand side, where we had the cloning, where we have this icon of the version control, there is suddenly a blue mark. Let me try to to go back and remove these lines. Okay, if I save now. Okay, remove those lines, and the blue mark disappeared on the left hand side, because now the file is exactly the same as it was when I cloned it. I put these lines back, and once I save it. Okay, it already notices that there is some change.

45
00:11:45.170 --> 00:11:50.209
Gabor Szabo: And so now I need to. Besides saving it locally, I need to

46
00:11:50.730 --> 00:12:16.360
Gabor Szabo: commit the changes to git. So now I could. I can open this this part, and it shows me that there is one file that has changed, and now I have to save it sort of into git, and the word we use is commit to git. Okay. And so I. It already offers me to commit it. I'll click on the commit button, and

47
00:12:16.890 --> 00:12:27.599
Gabor Szabo: it tells me there are no stage changes. So the thing is that behind the scene git actually needs 2 steps in order to

48
00:12:28.060 --> 00:12:51.239
Gabor Szabo: saved in order to commit some files. The 1st step is to mark them as being staged, and then I need to commit them, and it has all kind of advantages, but we mostly disregard it, for now, because it makes life a little bit easier if it is disregarded. So it but that's what visual studio code tells me. So it says, There, there are no

49
00:12:53.030 --> 00:13:02.958
Gabor Szabo: staged changes to commit. Okay, and do you want to stage them and then say, Okay, yes, sure. So do the staging, and also the committing

50
00:13:03.620 --> 00:13:18.620
Gabor Szabo: and then now it complains. Okay, so it tells me that I need to add the configuration. I didn't configure git yet. All right. I just downloaded and installed it, and I didn't configure it, so I need to make some configuration to git.

51
00:13:19.080 --> 00:13:35.659
Gabor Szabo: That's what this error message is about. Okay, git basically wants to know my name and my email address. So when I commit into into git, it will be able to record it. And I'm going to open the git

52
00:13:35.880 --> 00:13:41.130
Gabor Szabo: log. It wants to open the git log. It's interesting. Why, I'm not sure

53
00:13:41.330 --> 00:13:47.629
Gabor Szabo: this is not what I wanted to show you. Okay, so let's try it again.

54
00:13:48.130 --> 00:14:11.189
Gabor Szabo: Commit. Okay, learn more. Okay? Basically, it needs the username and the user email. And I need to learn how to do this from visual studio code, because I don't know. So it needs to have a file in my home directory, which is called dot git config. Now on Linux and Mac. It uses this sign, the Tilde sign.

55
00:14:11.300 --> 00:14:16.909
Gabor Szabo: Okay, okay, let's met. Let me go here, on windows?

56
00:14:17.670 --> 00:14:20.550
Gabor Szabo: It explains that it's called the git config file.

57
00:14:20.780 --> 00:14:40.169
Gabor Szabo: This is the name of the file that I need to create. This is a 1 time thing that I need to do for git to prepare. And it needs to be in. You see, users and my username. Okay? So I need to create that file. I'm going to go with my file explorer to

58
00:14:40.460 --> 00:14:41.530
Gabor Szabo: see

59
00:14:41.730 --> 00:14:50.897
Gabor Szabo: users and my home directory. And here I'm going to create a new file. Okay? So new file, new.

60
00:14:52.870 --> 00:15:02.000
Gabor Szabo: text document. Okay? And it needs to be called dot git ignore, get ignore?

61
00:15:02.670 --> 00:15:04.550
Gabor Szabo: Okay it.

62
00:15:04.870 --> 00:15:13.083
Gabor Szabo: Because I changed the extension windows. Complaints. Don't worry about it. Okay, fine. I'm changing the file and

63
00:15:13.970 --> 00:15:26.709
Gabor Szabo: it can. I can see this file and this. This is something that you might need to make some changes on windows. So in the file, explorer, if you haven't done it yet. There is this view, menu at the top.

64
00:15:26.870 --> 00:15:46.649
Gabor Szabo: and there are 2 checkboxes here. One of them is to show file name extensions, so if I remove that, then it will hide the extensions. Apparently this gitignore file is still shown, so it's fine, so you will see it. But in any case I would recommend that you click on these 2 checkboxes.

65
00:15:46.960 --> 00:16:00.900
Gabor Szabo: So I have the file, and I'm going to open it, and I can open it with any editor. I'll just click on the edit and it opened it with notepad. That's fine, and let's go back to the documentation here. That explains me what I need to do.

66
00:16:02.040 --> 00:16:07.540
Gabor Szabo: and I need to, and it doesn't show it to me.

67
00:16:16.870 --> 00:16:23.875
Gabor Szabo: so I'm going to copy, paste it, and I don't. I don't find it here, so it gives me all kind of

68
00:16:24.320 --> 00:16:41.920
Gabor Szabo: ways to run this on the command line. But I wanted to avoid that. Okay, so that's why I'm not doing this. Let's see if it if it can show if it has the how it looks like. But it doesn't have it. So I'm going to open it in my

69
00:16:42.090 --> 00:16:49.520
Gabor Szabo: be under computer and then copy. I'm going to copy it from there just a second

70
00:16:50.640 --> 00:16:53.249
Gabor Szabo: while I'm copying it from the other window.

71
00:16:53.950 --> 00:17:03.230
Gabor Szabo: and I'm going to show it to you. Then, of, obviously, okay. So these are the lines that I'm going to copy now, hopefully, I'll be able to copy here.

72
00:17:11.079 --> 00:17:14.030
Gabor Szabo: And even if I can't copy a

73
00:17:14.220 --> 00:17:22.980
Gabor Szabo: no, I couldn't copy. So I just copied manually. So it it needs to say, user in square brackets. Let's can I enlarge this one?

74
00:17:23.359 --> 00:17:33.699
Gabor Szabo: Yes, fine. So it needs to say, square bracket users, and there. Here I have some indentation, and I need to put here my name, and my name is Gabel Sabo.

75
00:17:34.290 --> 00:17:38.639
Gabor Szabo: And I need to put his my email. And this say, email.

76
00:17:38.970 --> 00:17:43.790
Gabor Szabo: right? And here I put my email, subgov

77
00:17:44.270 --> 00:18:00.548
Gabor Szabo: sub gov.com. And then I save this file. Okay, control. S, save this file. Now, I'll show you something. How where it's going to end up before before you actually do this. So if I go back to this browser and

78
00:18:01.160 --> 00:18:13.050
Gabor Szabo: go back to the repository. And I look at the commits I made earlier. Okay? So that when I created this video apparently a month ago. So in each commit it, can you can see who is the author

79
00:18:13.180 --> 00:18:19.800
Gabor Szabo: and basically, let me. I don't know if if it will show you show me.

80
00:18:21.390 --> 00:18:22.150
Gabor Szabo: Huh?

81
00:18:22.290 --> 00:18:25.010
Gabor Szabo: Okay, maybe Github hides this now.

82
00:18:25.260 --> 00:18:44.330
Gabor Szabo: anyway, in each commit. If I if I look at the commit itself. Well, now it only shows the changes, but I could probably look at the the header of it, and then it will show my name and my email address. So it will be in this git repository. And then

83
00:18:44.810 --> 00:18:50.389
Gabor Szabo: and that's how it will also know who is who made the commit, anyway.

84
00:18:50.730 --> 00:19:04.169
Gabor Szabo: So put here your name and your email address and save it. And hopefully, I made it correctly. Now I can go back to the editor and try to do the commit again. Because now I made this configuration.

85
00:19:04.560 --> 00:19:12.899
Gabor Szabo: So I clicked on config. Make sure your configure username. It still doesn't know about it. Strangely.

86
00:19:13.310 --> 00:19:19.010
Gabor Szabo: Okay, why, open git log again. Get status.

87
00:19:23.820 --> 00:19:25.750
Gabor Szabo: Okay? It doesn't

88
00:19:29.290 --> 00:19:36.629
Gabor Szabo: user email name. Okay, this is what what I want. This is what I made. So I probably

89
00:19:36.740 --> 00:19:41.589
Gabor Szabo: it did. Some made some incorrect git

90
00:19:42.310 --> 00:19:46.890
Gabor Szabo: because get so no one told me.

91
00:19:47.130 --> 00:19:53.750
Gabor Szabo: While I was editing I created the file called Git Ignore, which is a totally. It's also plays. It's just a

92
00:19:54.010 --> 00:20:01.659
Gabor Szabo: error I made. There is also a file called Git Ignore, which is used. We're not using that. We need to call it. Git

93
00:20:02.060 --> 00:20:05.550
Gabor Szabo: config this file. Okay, I'll

94
00:20:05.830 --> 00:20:16.379
Gabor Szabo: copy the name now. It will also windows also complain again and let me copy the name here, so we can see it. Okay, so this is how it's called dot git config.

95
00:20:16.650 --> 00:20:23.600
Gabor Szabo: Okay, I'll also include it in in the in the video. Okay, so let's try it again commit.

96
00:20:24.340 --> 00:20:35.649
Gabor Szabo: And now it's happy. Okay? So I had to make just the right filing. That's fine. I like to make errors, because then it makes it more human, even though some people are annoyed anyway.

97
00:20:36.180 --> 00:21:05.110
Gabor Szabo: So now it asked me to give a commit message. If you remember from the previous video that when we were committing a change on the website on Github. It also asked me to to write some commit message. It already filled in. Some things here is just empty. It's not empty, but all the things that start with a hash mark will be ignored. So here I just have to add a few words just to explain what I'm doing. So I

98
00:21:05.240 --> 00:21:08.220
Gabor Szabo: add a line on

99
00:21:08.350 --> 00:21:23.450
Gabor Szabo: windows. Okay, so that's what I'm doing. Of course, if you are trying it on Mac or Linux. Then you can. You don't have to write it on the line on windows. So I just edited this file, and now I can save the file with control S, and close the file.

100
00:21:23.510 --> 00:21:30.260
Gabor Szabo: And once I do that, then get the the git client locally makes this commit.

101
00:21:30.300 --> 00:21:55.199
Gabor Szabo: Okay, so now I made this change saved it basically to get locally on my computer. But it's still not on Github. So in order to get it to Github, I need to synchronize. So basically, there are 2 commands. Either I push out to Github or I pull down from Github. Okay, so Github is the remote repository. So now I have.

102
00:21:55.270 --> 00:22:00.860
Gabor Szabo: Now, I have 2. Basically, I have 2 copies of my repository. Right? I have the one that is on Github

103
00:22:01.390 --> 00:22:23.050
Gabor Szabo: that I used earlier in the previous video, and then I cloned it locally, which made a local copy of the whole history of all the changes you can even see here all the changes shown. And so now I have local copy, and locally, I made a change. So locally, I have an additional commit here which doesn't exist on Github. Yet

104
00:22:23.190 --> 00:22:29.079
Gabor Szabo: we call this what we have on my computer, local and what we have on Github. We call it remote.

105
00:22:29.190 --> 00:22:34.509
Gabor Szabo: That's sort of the general name because of it. Of course it's removed. So now we need to.

106
00:22:35.130 --> 00:22:52.889
Gabor Szabo: In the basic terms of git, we need to push out the changes. But what visual studio code does. It? Calls it synchronizing the change which will actually 1st try to pull down any changes made on Github, which are none this time, and then we'll try to push it out.

107
00:22:53.400 --> 00:23:08.310
Gabor Szabo: If we didn't have visual studio code I would do the same manually. But now I'm trying to just click on it, and they'll try to synchronize it. And now we'll see if my previous attempts were

108
00:23:09.010 --> 00:23:36.779
Gabor Szabo: well, okay. So it managed to do this, apparently. And it's unfortunate, actually, because I wanted to show you how you have to authenticate here. So at this point, you so the story is that I already tried this, and apparently I haven't removed the authentication, so it already recognized me. If I go to the Git Repository here and I update it now, so refresh it. Control. R.

109
00:23:36.910 --> 00:23:58.270
Gabor Szabo: You will see that it there is this. Add the line on windows. So it was pushed out to get hub to github. You can also see this yellowish or brownish circle, meaning that the actions are working. Okay, and it already finished. So it's already a green, apparently. Okay.

110
00:23:58.390 --> 00:24:07.159
Gabor Szabo: right? That's that's just finished. So the website was updated. So let's go to the website. And I, if I refresh this

111
00:24:07.490 --> 00:24:16.079
Gabor Szabo: and scroll down to the end, then you can see windows. Okay, that is the line that I added locally and then push it out to Github.

112
00:24:16.880 --> 00:24:17.980
Gabor Szabo: And

113
00:24:18.290 --> 00:24:41.129
Gabor Szabo: and that's it. Okay. So now, back to the authentication part, because this will. Probably it is synchronizing, probably won't work automatically for you. So in order to be able to push out to synchronize, basically but to push out to Github. I need to be authenticated with Github. So Github needs to know that it's me.

114
00:24:41.140 --> 00:24:48.900
Gabor Szabo: My name is my username is subdop. So that's me, and it needs to know that I have the rights to push to this repository.

115
00:24:49.080 --> 00:24:50.180
Gabor Szabo: And

116
00:24:50.630 --> 00:24:56.809
Gabor Szabo: now I have the but for now that needs to mean. Know who I am? Who is the one who is pushing from here?

117
00:24:56.830 --> 00:25:20.350
Gabor Szabo: Okay, so when you click on sync, it will open you a pop up, and they'll ask you to authenticate, and there you'll have to click on it, and it will open open the browser, and then it will let you authenticate through your browser you will need to be able. You will probably need, to type in your username and password of Github in order to authenticate, and then.

118
00:25:20.350 --> 00:25:27.899
Gabor Szabo: after a couple of clicks, you will be able to. It will. It will tell you that. Okay, fine. It remembers now your password.

119
00:25:27.990 --> 00:25:32.843
Gabor Szabo: and then it will move, work smoothly. So

120
00:25:33.930 --> 00:25:37.449
Gabor Szabo: and this is what basically what happened here. So let me get

121
00:25:37.570 --> 00:25:44.139
Gabor Szabo: started more or less. Again, from the point that I

122
00:25:44.400 --> 00:26:05.769
Gabor Szabo: close this window now, okay, I don't need this visual studio code anymore. I already have cloned it locally. And so next day, okay, so let's see if we finish the day. So now I would like to make some more changes. Actually, I would like to add the file and make some more changes. So I go to my file explorer, let's say.

123
00:26:06.390 --> 00:26:08.140
Gabor Szabo: go to this project.

124
00:26:08.740 --> 00:26:16.059
Gabor Szabo: I mean, actually, I could open. I don't even need to go to the file explorer. Okay, I can just start Vs code.

125
00:26:16.160 --> 00:26:33.949
Gabor Szabo: Okay? So I'll just click on the windows key. I start Vs code and Vs code remembers the last opened folder that you had, and even the open file. Now, in case you were working on a different project, or you don't have it open, you can always come to file

126
00:26:33.950 --> 00:26:48.300
Gabor Szabo: open folder, file your file the folder where you cloned this repository locally and open it, or if you know that you've already opened it earlier. You can go to the open recent. And here you have all kind of

127
00:26:48.300 --> 00:27:02.350
Gabor Szabo: projects that you opened recently, apparently in various courses, various projects. I already use this, and it still remembers. And I need probably I need to find a way to remove all this from history. So next time I make a video. It won't show up

128
00:27:02.480 --> 00:27:16.040
Gabor Szabo: anyway. For me, it's already open. So now I can create, let's say, a new file. So let's create a new file. I think I right click, create a new file. It's called.

129
00:27:16.430 --> 00:27:23.270
Gabor Szabo: hello.md, okay, it's going to be a markdown file. And I just say, Here.

130
00:27:23.760 --> 00:27:43.810
Gabor Szabo: Hello! And from the window, from the there's actually the other file. Okay, fine from the. Read me. I wanted to link to it. And do I have a link to other. Let's search for the other keyword. No. So let's I think this is the way to Link. We'll find it out. So this is the

131
00:27:44.080 --> 00:27:50.560
Gabor Szabo: Hello, file. And I need to put here the name of the file.

132
00:27:51.210 --> 00:27:58.870
Gabor Szabo: Okay, so this is, you remember that this is how you link to some external here at the top to some external page. Fine.

133
00:27:59.280 --> 00:28:13.229
Gabor Szabo: But here, how to how we can link to an internal page. So another page. And we created this other page. This is just an another file. Okay. So now we would like to. We have them locally, and we would like to

134
00:28:13.470 --> 00:28:40.689
Gabor Szabo: add to git. Now, you can actually see that there are 2 number 2 here, because there were 2 changes that locally that are not in git yet one changes change to a file. The other one is an additional of a file. Now, you could actually play here with only committing one of them, or only committing part of them, or all kind of interesting things, but for now we just do everything at once. So we commit the whole thing again.

135
00:28:40.870 --> 00:28:56.580
Gabor Szabo: When I clicked on, commit it told me that there is nothing staged yet, so I just click on. Yes, just go ahead. Stage it. It opens again. This editor where I put in the commit message. So I put the commit message, which is

136
00:28:57.080 --> 00:28:57.659
Gabor Szabo: good,

137
00:28:58.370 --> 00:29:04.309
Gabor Szabo: New file? Okay. And I need to save this and close it here.

138
00:29:04.530 --> 00:29:30.730
Gabor Szabo: Okay? And once I did this, it made the comic locally, and here it has the local change. I can actually click here on on things and see the local changes. See the changes okay? And and what changed when and so on. It's very interesting, very useful, locally. But now again, I would like to sync the changes. So I just click it. I don't have to handle all the authentication that

139
00:29:31.660 --> 00:29:39.890
Gabor Szabo: you probably have to do it the 1st time, and I can go to the Git Repository, and

140
00:29:41.240 --> 00:29:54.600
Gabor Szabo: here it you can see it's yellowish moving, because the actions now is the Github actions. So it's building up the page, as we learned in the earlier video.

141
00:29:55.850 --> 00:29:57.770
Gabor Szabo: And and that's it.

142
00:29:57.810 --> 00:30:01.479
Gabor Szabo: Okay? So now, if you are part of my

143
00:30:01.510 --> 00:30:14.879
Gabor Szabo: course in the basement Institute, then the assignment was to create. The 1st assignment was to create a website that you can could have done on Github.

144
00:30:14.880 --> 00:30:37.120
Gabor Szabo: and the second one was actually writing some Python code and pushing it out to a repository. So for that, you need to create a new repository. Okay, that's if you want to have a separate repository for your assignments, so you create your new repository and then clone. But when you create the new repository.

145
00:30:37.120 --> 00:31:03.480
Gabor Szabo: add to add a readme file to it, so let me show before I go there. Okay, before I go there, just let's see this one. So you can see that this finished the building of the page, so I can come to this welcome page. I need to reload it again, and, as you can see, here is the link to Hello, and let's see if this works. Indeed, when I clicked on it, it went to the Hello page. Okay, that I created. So now you could see

146
00:31:03.490 --> 00:31:17.560
Gabor Szabo: how I could add, make some changes to one file, add a new file. And this is the same. If I want to add the folder, I just create a folder, add the filing into. And then when I I just

147
00:31:17.650 --> 00:31:25.849
Gabor Szabo: commit the changes, and then I synchronize them and it uploads it. Okay, so if you need to create a new repository

148
00:31:27.230 --> 00:31:35.739
Gabor Szabo: then and and work on it. Then probably what you would like is to do create a new repository, and in the repository.

149
00:31:36.290 --> 00:31:44.779
Gabor Szabo: You give it, of course, a name. You probably want to make it public if it's in the course and add the readme file. So it will have some content.

150
00:31:44.780 --> 00:32:06.939
Gabor Szabo: Actually, this git ignore that I mistakenly made earlier here. It suggests me to make that file. It's for each repository. I can create one, and it will be useful later. We'll see it. Not now. Okay, it's not not that urgent. Okay. So once you create this repository with whatever assignments or whatever name you would like to use

151
00:32:06.990 --> 00:32:24.699
Gabor Szabo: with a readme file. Then you will be able to clone it to your computer locally, and then there you can start writing a python. File your Hello, world, or whatever put it in a folder, synchronize and sync it out, and

152
00:32:24.980 --> 00:32:26.200
Gabor Szabo: and then

153
00:32:26.910 --> 00:32:47.039
Gabor Szabo: especially to my students. But even if you're just watching the video on Youtube, and you made some changes and would like me to review it then. Okay, so if you are, if you are just from the Internet, not from the course. Then you can come to the this repository specifically and open an issue.

154
00:32:47.210 --> 00:33:04.959
Gabor Szabo: And in this issue you can say, Okay, new issue. You can say, where is this repository that you would like me to review? And if you are a student in my course, then you already know, where is this repository that you should use, which is part of the course?

155
00:33:05.642 --> 00:33:06.789
Gabor Szabo: So that's it.

156
00:33:07.350 --> 00:33:12.070
Gabor Szabo: You open the issue, and then that's how I will know. Where is your?

157
00:33:12.430 --> 00:33:42.080
Gabor Szabo: Where are your files? Where are your repositories? I think that's the basics basically of using git locally. There are a lot more things you could do. I think, as I mentioned that, for example, you can click here, and then you can see the actual changes. So in this change I added these lines, and if I go back to this one, which I apparently did a long time a month ago, then it shows that these lines were added, and this line was removed.

158
00:33:42.150 --> 00:33:56.640
Gabor Szabo: and all kind of other things. So you can use this to see locally what changes were made when, and I guess also you could see by whom. Yes, so I put the mouse and waited a second, and it shows me that

159
00:33:56.640 --> 00:34:13.439
Gabor Szabo: it's Gabor Sabo that's me. Who edited. When was it changed? What was my commit message then? And so on. Okay, so you don't need to do it on Github. If you have a local clone of your whole repository and a lot more things to to do.

160
00:34:14.296 --> 00:34:15.770
Gabor Szabo: Locally. In

161
00:34:16.219 --> 00:34:27.130
Gabor Szabo: one more thing, maybe I add one line, add a line. Okay? So I just added a line to this file, and then I can come here

162
00:34:28.219 --> 00:34:48.280
Gabor Szabo: and see, yeah, right? So I just clicked on the file in the let me show you. So inside, let me close this one. Okay, I have the file edited and I clicked open the menu for the source control and then click on the file itself. And it shows me the actual change.

163
00:34:48.620 --> 00:35:09.160
Gabor Szabo: Okay, so in just notice, this is this is just showing the modifications that I added this line. Okay, so even before you make the commit, you can actually look at. Okay, what did I change? It's especially useful if you made some changes, then you left for 2 weeks vacation. And then you came back and

164
00:35:09.370 --> 00:35:26.900
Gabor Szabo: you have some local changes. And you don't remember anymore what you did. And you would like to know? Okay, what did? What were the changes I made and forgot to commit and and push out so that could be also useful. Okay, you don't need to go through 2 weeks vacation for that. I can do this in 10 min. I can forget things. So anyway.

165
00:35:27.800 --> 00:35:37.570
Gabor Szabo: that's it, I think. The basics of of using git locally and

166
00:35:37.990 --> 00:35:49.449
Gabor Szabo: with a Github project and pushing out changes. So that's it. If you watch the video and enjoyed it. Then please like it and follow the channel

167
00:35:49.600 --> 00:35:52.209
Gabor Szabo: and see you at one of the upcoming videos.

168
00:35:52.360 --> 00:35:53.470
Gabor Szabo: Bye-bye.

