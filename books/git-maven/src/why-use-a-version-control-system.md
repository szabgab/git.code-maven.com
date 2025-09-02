# Why use a version control system (VCS)?

Before we get into learning how to use git, let's first talk about why to use a version control system at all?

Almost everyone uses version control even if they don't use a real version control system.


{% embed youtube id="kuEYCDZ20D8" file="en/git/why-use-a-version-control-system" %}

Most people will save versions of whatever they are working on.
For example if they work on a file called **wedding_vows.doc** at one point they might save it
as **wedding_vows_1.doc** and then when they get divorced and marry again they might update the original file
and now create a copy called **wedding_vows_2.doc**.

Then they go on and might have **wedding_vows_3.doc** etc.

If they have multiple files then maybe the create a copy of all the files and put them in directories called "wedding_1" and "wedding_2".

Some other people, instead of numbering the versions they attach the current date to it. So they would have a file called
**wedding_vows_2013_01_07.doc** or a folder called **wedding_2013_01_07**.


They basically create a home-made, manual version control system.


If you are writing an application then usually you'll have a lot more files and you'll have a lot more versions.
Then this home-made version control can easily get out of control.

Why reinvent the wheel if there are already excellent open source version control systems? Such as git?

## Advantages of having a Version Control System (VCS)

There are a number of advantages using a well-known VCS.

One of them is that if you'd like someone else to start working on your project you don't need to teach them about your own VCS. Most likely they already know how to use it.


### Fearless experimentation

If you are a chemist and you combine two materials, in most cases you cannot go back and separate them again.
If you are doctor and cut of a part of a patient in the hope that it will solve the problem the patient has, you cannot go back. You cannot undo it.

In programming if you overwrite a file with some changes your editor might have an undo functionality, but it is usually very limited in its history.

Using a version control system a programmer could do any experiment and safely know that s/he can go back to an earlier state, an earlier version of the code.

### Fearless deletion

In many cases I see people keep around old code saying: ok maybe we'll need it at some point. Currently we are not using this code but maybe some day
need to copy-paste from it or maybe literally we'll need to use it, so we don't delete it.

Then you accumulate a lot of, well, basically garbage.

Code that's not used that not only takes up space and compilation time, but take up a lot of brain cycles (mental energy)
when someone actually read you code an encounters this function and tries to understand it.
The person might spend a lot of time trying to figure out what does this function do till they realize that the function is not in use.
Or maybe it is in use by something else which is not in use. So it can get complicated.

If you have a version control system like git or some other version control system then you can just delete this code,
commit your changes to your version control system and at any point of time when you need it you can go back this version, look at it
copy from it pieces, or just bring back the whole piece of code in case you now need it.

### Easier (smoother) collaboration

Another thing is the easier and quite smooth collaboration with other people.

As long as you work alone you don't need collaboration, of course, but once you do collaborate, having a version control system
is extremely important.

Let's go back to the example without version control system.

You have a file. You make some changes. Another person has the same file. That person also makes some changes.

How can you now combine (merge together) the two changes?

How can you make sure that the changes of both of you are kept?

In many organization there is a shared disk and people take files from there and save it back. What if two people try to edit the file at the same file?
Either the system limits that only one person can open the file at one time, but that means people have to wait one for the other.
Or if there is no locking then if both edit and save the file then the second one wins. All the changes made by the person who saved first will be lost.

Having a version control system can make this really smooth

Of course it is not perfect and there still might be some issue. The people still have to talk to each other, but in many cases it makes it a lot smoother
to collaborate with other people. Even if they are in different time-zones, different locations

### History

One of the basic thing is that you can easily look at the history of your code base.
What changed were made, if there multiple people contributing to the source code then who made the changes.

If you are keeping a good track of why you made the change, so every time when you make a change you have some explanation why did you do that
then it's a gold mine.

Actually I rarely need to look at the history, but when you do, it's extremely important, it is extremely valuable that you can look at the history.

It is a little-bit like backups. You really rarely need to have backups when you do, if you don't have it then it is a really big issue.

So this is more or less similar to history although we'll look a lot more at the history just because we all kinds of small mistakes.

So for example, one of the mistakes that we can easily make:

You have some working code and then you make some changes, other people make some changes and check the parts that you changes.
Two weeks later someone reports that some feature stopped working.

They know it used to work. You remember it used to work, but you see that it does not work now.

You may remember that it worked two weeks ago. How can you find out what happened? Which change broke it?

Version control systems in general and git specifically have tools for it, but without having this history we really can't do anything.

Having the history you'll be able to track down which change caused this error? Why was that change made?
Usually these changes are made for some good purpose, but maybe they have some side-effects.
You will have to understand that and not just revert the change, because that will break something else.

### Which Version Control System (VCS)?

Finally, just to get to end of the slide, there are bunch of version control systems.

Some of them are proprietary so you have to buy them, many of them are open source. There is a list of them on the slide:
git, mercurial (hg), subversion (svn), cvs, rcs, ... that's just going back in history.
The most popular these days is git. Most popular by far.

It is a distributed version control system, it was created by Linus Torvalds the same person who created the Linux Operating System (actually the Linux kernel),
It is used by almost everyone. Both Open Source and corporate.

So that's what you are going to learn later on in this course.


timestamp: 2020-05-07T21:00:12
