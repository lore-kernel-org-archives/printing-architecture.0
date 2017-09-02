Return-Path: <sahilarora.535@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=z5BXa67dbWzxE6o763hVloRKqSrMCg8VLOtfhW5q40w=;
	b=dXT934ptTto04RqbMwrTaesouP3kYXvBuesDMeNkbCqIojN3IMFHkmIHD0sJ1iLpXW
	V6j2bVCzZs0giWFQ7DLgi3mijBZSC3Ii77Q3tp+evtU8sBreiD0EN9prdH6J9WMhX278
	MJZ0fU5OB024pfpCiixI8bqWUr7rfCTjLle4MDV5xChg4hpM0acFOc2A500zBkWeo35j
	142qLGb9ppaPWHyWF5YU55yuSzXiPat4yX0UvnS6wUopYDOAhXfQIrEj+EVe/oyiY1r1
	61QpLU+XnyFKUj7WWmoz5S2bhEFCulRra4+ZGElfl0mRY6oafnG4hKu5t+Q7n8Nf4znW
	biEA==
MIME-Version: 1.0
References: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
	<m3a82ehvnu.fsf@carbon.jhcloos.org>
In-Reply-To: <m3a82ehvnu.fsf@carbon.jhcloos.org>
From: Sahil Arora <sahilarora.535@gmail.com>
Date: Sat, 02 Sep 2017 01:22:04 +0000
Message-ID: <CA+3yCNK0nsuUCcRbBcs6vSwAOaTjC4QbdTB75pAtQaLcbk1C3w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114a8fca2d7b0505582ab5cd"
Subject: Re: [Printing-architecture] OpenPrinting code repositories in GIT
	format
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: Nilanjana Lodh <nilanjanalodh@gmail.com>, Aveek Basu <aveek.basu@lexmark.com>, Jeff Licquia <licquia@linuxfoundation.org>, Jeff Licquia <jeff@licquia.org>, Open Printing <printing-architecture@lists.linux-foundation.org>, Abhijeet Dubey <dubey.abhijeet09@gmail.com>

--001a114a8fca2d7b0505582ab5cd
Content-Type: text/plain; charset="UTF-8"

Hi there,
Github vs Gitlab vs Bugzilla vs others is a very important problem
considering the fact that changing version control systems is very
difficult, as we are facing now. Even as I was doing my GSoC project with
OpenPrinting this year, I felt it easier to use Git rather than any other
version control system(VCS).

Here are some points which I think are noteworthy:
1. Most of the modern IDEs and Code Editors support git out of the box. Not
only that, people are now shifting to git aware shells like zsh and fish.
In this case, using git will make the life of a developer far more easier
than any other VCS or bug tracking system.
2. Both Github and Gitlab support continuous integration, which I think is
missing in other tools. It will make the life of a maintainer extremely
easy once these continuous integration / continuous delivery pipelines are
integrated with the code base for the projects we would be working in the
future.

I believe platforms which run on git will be more future proof and
developer friendly than any other platform for code / bug tracking. My
personal preference would be gitlab since provides more features out of the
box even on the free version than github, but it would not matter if it's
github or gitlab unless and until it is git.

Thanks.
--
Sahil Arora

--001a114a8fca2d7b0505582ab5cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>Hi there,<br>=
</div>Github vs Gitlab vs Bugzilla vs others is a very important problem co=
nsidering the fact that changing version control systems is very difficult,=
 as we are facing now. Even as I was doing my GSoC project with OpenPrintin=
g this year, I felt it easier to use Git rather than any other version cont=
rol system(VCS).<br><br></div>Here are some points which I think are notewo=
rthy:<br></div></div>1. Most of the modern IDEs and Code Editors support gi=
t out of the box. Not only that, people are now shifting to git aware shell=
s like zsh and fish. In this case, using git will make the life of a develo=
per far more easier than any other VCS or bug tracking system.<br></div>2. =
Both Github and Gitlab support continuous integration, which I think is mis=
sing in other tools. It will make the life of a maintainer extremely easy o=
nce these continuous integration / continuous delivery pipelines are integr=
ated with the code base for the projects we would be working in the future.=
<br><br></div>I believe platforms which run on git will be more future proo=
f and developer friendly than any other platform for code / bug tracking. M=
y personal preference would be gitlab since provides more features out of t=
he box even on the free version than github, but it would not matter if it&=
#39;s github or gitlab unless and until it is git.<br></div><br></div>Thank=
s.<br>--<br></div>Sahil Arora<br><div><div><div><table class=3D"inbox-inbox=
-fatitem" border=3D"0"><tbody><tr class=3D"inbox-inbox-athing" id=3D"inbox-=
inbox-12056035"><td class=3D"inbox-inbox-votelinks" valign=3D"top"></td><td=
 class=3D"inbox-inbox-title"></td></tr></tbody></table></div></div></div></=
div>

--001a114a8fca2d7b0505582ab5cd--
