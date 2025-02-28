# Why Git is better than Subversion for Open Source Projects


For a long time while I was still using [Subversion](https://subversion.apache.org/) I was bombarded by people wanting me to
switch to [Git](https://git-scm.com/). It took me quite some time to understand the value in it. Let me tell you my story.


I ran a mid-sized [open source project](http://padre.perlide.org/) that had around 100 contributors throughout its life.

We used Subversion on the project server as our public version control system and we
used [Trac](http://trac.edgewall.org/) as our bug tracking system. Trac had
a nice integration with Subversion. We could mention a Trac ticket number in our commit comment, or even in the comments of our code
and Trac would display our source code and our commits in a nice way (hyper)linking those bits to the relevant tickets. We could also
mention commit numbers in our bug-reports or in the comments of our bug reports and those were automatically linked to the relevant commits.

So it was all really nice.

## Why Subversion and not Git?

However the main reason we used Subversion was that when I started the project Git and GitHub were very young,
and I did not know how and why to use either of those.  Then we kept using Subversion out of inertia.

In our setup if someone wanted to contribute some code we had two choices:

1. **External contributor:** Let the person create a patch, send it to us (or attach it to a
bug report) and then wait till we apply it. We had to go through some rather painful manual process to apply the patch. If we wanted
the patch to be improved we would need to comment on the patch, the contributor would need to make changes and then we had to review
the whole change again. The contributor had to include a full change in one diff. It was not easy to send several small patches
and also to review them.
If the same contributor wanted to work on some other change that relied on the first one being accepted, s/he had to manage the
possible changes in the first patch.... A headache.
1. **Collaborator, or core contributor:** The other possibility was to give the person commit rights on our Subversion repository.
   For this first the person had to create an account on our Trac and then one of the core developers had to give commit bit.
   This of course is a huge risk.
   If the contributor has different coding style, or different quality expectations, to put it nicely, then we opened the
   whole project up for that risk.
   Taking away such rights is very unpleasant.
   I am not sure if it is possible at all without creating a huge mess and tension in the project.

In other words in this model, we had to make people "core contributors" just to make it easy for them to contribute.
We had a hard time keeping people as "external contributors" without causing them and ourselves massive pain by the process.


## Git and GitHub to the rescue

After I've started to use Git and more specifically GitHub, I understood that it had a much better model.

As [Ahmad M. Zawawi](https://github.com/azawawi) pointed out to me,
**it makes it easy to offer different rights to collaborators (core developers) and contributors of an open source project**.

Only the core developers, and in many open source projects it means only one person, need to have commit rights on the main repository
of the project.

Any other contributor can, without requesting any permission, make changes to the project and send you as many "patches" as she wants.
Each "patch" can be a series of small commits that is much easier to develop and is usually much easier to review than one large change.
In GitHub terminology, these "patches" are called "pull-requests".

The contributor can even create several changes each one depending on the other one and if you ask for some improvements in
one of the changes, Git makes is very easy for the contributors to reorganize (`rebase`) the subsequent changes.

In other words, GitHub makes it very easy for the "**drive-by contributors**" to come in, suggest some changes and leave.
Without a lot of extra administrative work.
It also makes it very easy for the more **persistent contributors** to stick around and help with the project
without you giving them any extra privileges on the project.

From the point of view of the core-developers, GitHub makes it very easy to merge a change
offered by one of the contributors ("accept a pull request" in GitHub-speak),
or to ask for some refinement in the recommended changes.

GitHub also offers integrated bug tracking with all the nice features we had in Trac and much more.

## Back to Padre

At one point [Kaare Rasmussen](https://github.com/kaare) made a huge
effort and [moved Padre to GitHub](http://blogs.perl.org/users/kaare/2014/09/padre-is-now-on-github.html),
but unfortunately that was too late for the project. By that time, most of the contributors have lost interest in the project,
and new people have not stepped in their place.

The code is still there, people are still using Padre.
There are a number of stand-alone module such as
[Parse::ErrorString::Perl](https://metacpan.org/pod/Parse::ErrorString::Perl)
and [Debug::Client](https://metacpan.org/pod/Debug::Client) that came out of the project.

Unfortunately, however, the momentum is gone.


## Conclusion

Git and GitHub are way better for Open Source development than Subversion was.


timestamp: 2016-05-13T15:30:01
