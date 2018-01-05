Return-Path: <kurt.pfeifle@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:reply-to:from:date:message-id:subject:to;
	bh=h7F4kAl66tmQOFvPqn7llQIOclrqYNxKptocIKTqh3s=;
	b=GpRXzjhzCviogPGNqUn4W8l0mfE9Ogvtv1QZjJ6kUPex5xK7Y+LXefQtnyBam5gkfG
	pqo3X4zevvwRaItv6UNyd5TKj93ik1h/0FTZKVAqwWXAibSfSr0yCbwfTExsIXBaiMtU
	eM9cKrHFqNPZK7OyC4aDMvH+xAI/cvn/ZFlfct66loLBqb8Mi/O1f7dQ8yIdsX8IFGwm
	Map0G50R/gxSIa2Lx72cx88/dK58sctG5hR68yQd61BpqceanzdseSQck52iu+IUPFvz
	sAnzs4metuSPLmJajdUNiQK3UAnll/UzAzYaz1RFyIPYIqrhqltEglWRhQjSVBNUESMi
	XXjA==
MIME-Version: 1.0
Reply-To: kurt.pfeifle@gmail.com
From: Kurt Pfeifle <kurt.pfeifle@googlemail.com>
Date: Fri, 5 Jan 2018 21:27:35 +0100
Message-ID: <CAK+62wjU31nO-ajb5cgUCFg2cxa8Z-8kcdrH-FB6QSVW8obR1Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113da3b0cdc43f05620d49c2"
Subject: [Printing-architecture] [Announcement] IPP Sample Tutorial (using
	an AppImage)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

--001a113da3b0cdc43f05620d49c2
Content-Type: text/plain; charset="UTF-8"

-------------------------------------------------------------------------
Attn., cross-posting ahead about this

               https://asciinema.org/a/155588

I've sent the same message to the "cups" / "cups-devel" lists too.
-------------------------------------------------------------------------

Just right for the start of 2018 I want to introduce two little things to
you all. I created...

*  ...a prototype of an 'AppImage' package for the IPP Sample software
   together with...
*  ...a short mini-tutorial introducing some of the IPP Sample utilities.

I. AppImage
===========

An AppImage is a cross-distro Linux packaging method which follows the
philosophy of "One App == One File".

Imagine a macOS ".app" AppDir (application directory) which holds all the
required files for the application at runtime that are not provided by the
base system in the default installation. A Linux AppImage provides a
similar structure -- but with the added improvement of keeping everything
in a single SquashFS-compressed image. This saves disk space and makes
managing the file trivially easy. When executed, the AppImage gets mounted
automatically and its payload application gets invoked by an embedded
"AppRun". Apple and Mac users will most likely feel very comfortable with
handling AppImages.

The AppImage technology is not a competitor to the Snap and Flatpak
packaging, but it is a different thing altogether:

+  It is not and does not want to be a package manager.
+  It does not need any specific preparation for the target system in
   order to work.
+  It does not require any extra framework or runtime environment to be
   present in order to function.
+  It does not need "installation".
+  It does not need root privileges for preparing it to work on a system
   -- runs completely in user space.
+  Not being a "package", it simply is an executable which directly runs
   on almost any recent Linux distro from the last 3 years.
+  It can run from any location (USB thumb drives -- even from remote
   shares).
+  It can run different versions of the same software without conflict.
+  It usually saves disk space (IPP Sample "installed" the traditional
   way occupies about 22 MByte on disk; my equivalent AppImage takes only
   10 MByte)
+  It does not mess with a sytem's core libraries and leaves them alone
   and untouched, leaving $PackageManager in firm control over them.
+  It is easy to get rid of again, should you not like it (just delete
   that One File).

AppImages are an ideal package format for "bleeding edge" software which
developers want to get into the hands of end-users fast: since they cut
short any detour around Linux distribution packager middle-men, and since
the source code maintainers have direct control about what's contained in
an AppImage, developers also can more easily support and debug stuff when
communicating with their users: after all, every user, independent of
$WhateverDistro they use, have the same AppImage. They also can easily
swap the AppImage for a bug-fixed one (after all, it's only "One File").

Moreover, end-users do not endanger their system and its core libraries
which firmly remains under the control of their distro package manager.

I can hardly imagine any simpler and more elegant method for distributing
any software from developers to its users. Thinking of it, an
"installation-less" software package is the perfect match for
"driver-less" printing :-)

The AppImage project now has more than 13 years of development under its
belt (though the name is relatively new). AppImages have become pretty
popular in the last 6 months. Meanwhile even Linus Torvalds uses it for an
(almost not-known) end-user GUI application he started a few years ago
(which is a logging, reporting and planning software for hobby and
professional divers called "Subsurface"). He switched to AppImage because
he famously thinks that "Linux sucks" when it comes to the desktop eco
system created by the many competing Linux distro packaging formats and
their library naming crazyness. Another prominent AppImage user is
Microsoft -- they build an AppImage to provide their PowerShell v6.0.0rc
for various Linux distros.

With THIS AppImage I "pushed the envelope" a bit:

1.  AppImages originally were designed for packaging desktop GUI
    applications. However, I packaged CLI software with it. This works
    even pretty well -- as you will see if you decide to give my IPP
    Sample AppImage a spin.

2.  While AppImages usually embed ONE executable, I stuffed SEVERAL into
    THIS one: you can invoke them as 'sub-commands' to the shell
    'ippsample', similar to how 'busybox' works:

        ippsample ipptool   [ipptool args ...]
        ippsample ippproxy  [ippproxy args ...]
        ippsample ippfind   [ippfind args ...]
        ippsample ippserver [ippserver args ...]

This is implemented by way of a custom "AppRun" script I wrote for this
AppImage. It also added a few convenience parameters, which may be used:

    --listtest    List all '.test' files embedded in AppImage
    --listtestdoc List all documents which may be used for tests
    --listman     List all manpages embedded
    --listhtml    List all HTML docs embedded
    --listexe     List all executables ('sub-commands') which can be invoked
    --listreadme  List all embedded README and other text files
    --listdir     List all directories making up the AppImage
    --listfile    List all files which make up the AppImage

Additional options then are:

    --man <manpage-name>    Display named manual page in terminal
    --html <HTML-doc-name>  Show named HTML doc in default browser
    --readme <README-name>  Display named README in terminal

Every (recent) AppImage supports these generic CLI parameters:

    --appimage-help     List other CLI params with short description
    --appimage-extract  Extract AppImage into the AppDir 'squashfs-root'

This last option, after extraction, lets you hack on my AppRun script
should you feel an itch for this :-)

II. Mini-Tutorial
=================

My tutorial comes in the shape of an "ASCIInema" asciicast, running about
7 minutes. It should serve as an introductionary HOWTO for the IPP Sample
utilities, as well as a short intro into IPP in general.

Since it uses an AppImage, it can be reproduced immediately after
download, by almost any Linux user who is interested to play with IPP
Sample software. You can watch it here:

*  https://asciinema.org/

Two usage tipps:

1.  You can pause or scroll back and then replay a scene it any time if it
    was passing by too fast.
2.  You can copy'n'paste whatever is interesting for you directly from the
    terminal window.

III. Self-promotion
===================

My AppImage is automatically built by Travis CI from a forked
istopwg/ippsample repository on GitHub. If you like it well enough, I can
prepare a pull request for the official istopwg/ippsample repo, and a
working AppImage will automatically be built and published upon each push
("continuous" release), or upon each officially tagged release, or both.

I'm planning to add a few more functions in future releases for user
convenience to play with this AppImage. Mainly, these will be to provide
several working samples of several pre-defined print queues having
different extended properties, which then can then be used with
'-C config-dir' invocations of 'ippserver'.

The download location of my current 'xperimental' AppImage is here:

*  https://github.com/KurtPfeifle/ippsample/releases/

Please do not miss to read the text-style supplement to the tutorial on
the asciinema.org website. I'd like you to check (and tell me about) if I
have any factual errors in it.

URL to ASCIIcast one more time: https://asciinema.org/a/155588

Cheers, Kurt

P.S.:
-----

1. Also please tell me about any other issues you may encounter [1] --
   unless it is a problem with the IPP Sample software itself [2].

2. I promise to not take offense if you consider both, my ASCIIcast and the
   AppImage, as two things which put some more weight behind my request from
   10 weeks ago to provide *official* AppImage releases by the PWG    ;-)
   (see issue on GitHub: https://github.com/istopwg/ippsample/issues/56)

----

[1]:  https://github.com/KurtPfeifle/ippsample/issues
[2]:  https://github.com/istopwg/ippsample/issues

--001a113da3b0cdc43f05620d49c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>-----------------------------------------------------=
--------------------</div><div>Attn., cross-posting ahead about this</div><=
div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<=
a href=3D"https://asciinema.org/a/155588">https://asciinema.org/a/155588</a=
></div><div><br></div><div>I&#39;ve sent the same message to the &quot;cups=
&quot; / &quot;cups-devel&quot; lists too.</div><div>----------------------=
---------------------------------------------------</div><div><br></div><di=
v>Just right for the start of 2018 I want to introduce two little things to=
</div><div>you all. I created...</div><div><br></div><div>*=C2=A0 ...a prot=
otype of an &#39;AppImage&#39; package for the IPP Sample software</div><di=
v>=C2=A0 =C2=A0together with...</div><div>*=C2=A0 ...a short mini-tutorial =
introducing some of the IPP Sample utilities.</div><div><br></div><div>I. A=
ppImage</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><di=
v>An AppImage is a cross-distro Linux packaging method which follows the</d=
iv><div>philosophy of &quot;One App =3D=3D One File&quot;.</div><div><br></=
div><div>Imagine a macOS &quot;.app&quot; AppDir (application directory) wh=
ich holds all the</div><div>required files for the application at runtime t=
hat are not provided by the</div><div>base system in the default installati=
on. A Linux AppImage provides a</div><div>similar structure -- but with the=
 added improvement of keeping everything</div><div>in a single SquashFS-com=
pressed image. This saves disk space and makes</div><div>managing the file =
trivially easy. When executed, the AppImage gets mounted</div><div>automati=
cally and its payload application gets invoked by an embedded</div><div>&qu=
ot;AppRun&quot;. Apple and Mac users will most likely feel very comfortable=
 with</div><div>handling AppImages.</div><div><br></div><div>The AppImage t=
echnology is not a competitor to the Snap and Flatpak</div><div>packaging, =
but it is a different thing altogether:</div><div><br></div><div>+=C2=A0 It=
 is not and does not want to be a package manager.</div><div>+=C2=A0 It doe=
s not need any specific preparation for the target system in</div><div>=C2=
=A0 =C2=A0order to work.</div><div>+=C2=A0 It does not require any extra fr=
amework or runtime environment to be</div><div>=C2=A0 =C2=A0present in orde=
r to function.</div><div>+=C2=A0 It does not need &quot;installation&quot;.=
</div><div>+=C2=A0 It does not need root privileges for preparing it to wor=
k on a system</div><div>=C2=A0 =C2=A0-- runs completely in user space.</div=
><div>+=C2=A0 Not being a &quot;package&quot;, it simply is an executable w=
hich directly runs</div><div>=C2=A0 =C2=A0on almost any recent Linux distro=
 from the last 3 years.</div><div>+=C2=A0 It can run from any location (USB=
 thumb drives -- even from remote</div><div>=C2=A0 =C2=A0shares).</div><div=
>+=C2=A0 It can run different versions of the same software without conflic=
t.</div><div>+=C2=A0 It usually saves disk space (IPP Sample &quot;installe=
d&quot; the traditional</div><div>=C2=A0 =C2=A0way occupies about 22 MByte =
on disk; my equivalent AppImage takes only</div><div>=C2=A0 =C2=A010 MByte)=
</div><div>+=C2=A0 It does not mess with a sytem&#39;s core libraries and l=
eaves them alone</div><div>=C2=A0 =C2=A0and untouched, leaving $PackageMana=
ger in firm control over them.</div><div>+=C2=A0 It is easy to get rid of a=
gain, should you not like it (just delete</div><div>=C2=A0 =C2=A0that One F=
ile).</div><div><br></div><div>AppImages are an ideal package format for &q=
uot;bleeding edge&quot; software which</div><div>developers want to get int=
o the hands of end-users fast: since they cut</div><div>short any detour ar=
ound Linux distribution packager middle-men, and since</div><div>the source=
 code maintainers have direct control about what&#39;s contained in</div><d=
iv>an AppImage, developers also can more easily support and debug stuff whe=
n</div><div>communicating with their users: after all, every user, independ=
ent of</div><div>$WhateverDistro they use, have the same AppImage. They als=
o can easily</div><div>swap the AppImage for a bug-fixed one (after all, it=
&#39;s only &quot;One File&quot;).</div><div><br></div><div>Moreover, end-u=
sers do not endanger their system and its core libraries</div><div>which fi=
rmly remains under the control of their distro package manager.</div><div><=
br></div><div>I can hardly imagine any simpler and more elegant method for =
distributing</div><div>any software from developers to its users. Thinking =
of it, an</div><div>&quot;installation-less&quot; software package is the p=
erfect match for</div><div>&quot;driver-less&quot; printing :-)</div><div><=
br></div><div>The AppImage project now has more than 13 years of developmen=
t under its</div><div>belt (though the name is relatively new). AppImages h=
ave become pretty</div><div>popular in the last 6 months. Meanwhile even Li=
nus Torvalds uses it for an</div><div>(almost not-known) end-user GUI appli=
cation he started a few years ago</div><div>(which is a logging, reporting =
and planning software for hobby and</div><div>professional divers called &q=
uot;Subsurface&quot;). He switched to AppImage because</div><div>he famousl=
y thinks that &quot;Linux sucks&quot; when it comes to the desktop eco</div=
><div>system created by the many competing Linux distro packaging formats a=
nd</div><div>their library naming crazyness. Another prominent AppImage use=
r is</div><div>Microsoft -- they build an AppImage to provide their PowerSh=
ell v6.0.0rc</div><div>for various Linux distros.</div><div><br></div><div>=
With THIS AppImage I &quot;pushed the envelope&quot; a bit:</div><div><br><=
/div><div>1.=C2=A0 AppImages originally were designed for packaging desktop=
 GUI</div><div>=C2=A0 =C2=A0 applications. However, I packaged CLI software=
 with it. This works</div><div>=C2=A0 =C2=A0 even pretty well -- as you wil=
l see if you decide to give my IPP</div><div>=C2=A0 =C2=A0 Sample AppImage =
a spin.</div><div><br></div><div>2.=C2=A0 While AppImages usually embed ONE=
 executable, I stuffed SEVERAL into</div><div>=C2=A0 =C2=A0 THIS one: you c=
an invoke them as &#39;sub-commands&#39; to the shell</div><div>=C2=A0 =C2=
=A0 &#39;ippsample&#39;, similar to how &#39;busybox&#39; works:</div><div>=
<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ippsample ipptool=C2=A0 =C2=A0[i=
pptool args ...]</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ippsample ippproxy=
=C2=A0 [ippproxy args ...]</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ippsample =
ippfind=C2=A0 =C2=A0[ippfind args ...]</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ippsample ippserver [ippserver args ...]</div><div><br></div><div>This =
is implemented by way of a custom &quot;AppRun&quot; script I wrote for thi=
s</div><div>AppImage. It also added a few convenience parameters, which may=
 be used:</div><div><br></div><div>=C2=A0 =C2=A0 --listtest=C2=A0 =C2=A0 Li=
st all &#39;.test&#39; files embedded in AppImage</div><div>=C2=A0 =C2=A0 -=
-listtestdoc List all documents which may be used for tests</div><div>=C2=
=A0 =C2=A0 --listman=C2=A0 =C2=A0 =C2=A0List all manpages embedded</div><di=
v>=C2=A0 =C2=A0 --listhtml=C2=A0 =C2=A0 List all HTML docs embedded</div><d=
iv>=C2=A0 =C2=A0 --listexe=C2=A0 =C2=A0 =C2=A0List all executables (&#39;su=
b-commands&#39;) which can be invoked</div><div>=C2=A0 =C2=A0 --listreadme=
=C2=A0 List all embedded README and other text files</div><div>=C2=A0 =C2=
=A0 --listdir=C2=A0 =C2=A0 =C2=A0List all directories making up the AppImag=
e</div><div>=C2=A0 =C2=A0 --listfile=C2=A0 =C2=A0 List all files which make=
 up the AppImage</div><div><br></div><div>Additional options then are:</div=
><div><br></div><div>=C2=A0 =C2=A0 --man &lt;manpage-name&gt;=C2=A0 =C2=A0 =
Display named manual page in terminal</div><div>=C2=A0 =C2=A0 --html &lt;HT=
ML-doc-name&gt;=C2=A0 Show named HTML doc in default browser</div><div>=C2=
=A0 =C2=A0 --readme &lt;README-name&gt;=C2=A0 Display named README in termi=
nal</div><div><br></div><div>Every (recent) AppImage supports these generic=
 CLI parameters:</div><div><br></div><div>=C2=A0 =C2=A0 --appimage-help=C2=
=A0 =C2=A0 =C2=A0List other CLI params with short description</div><div>=C2=
=A0 =C2=A0 --appimage-extract=C2=A0 Extract AppImage into the AppDir &#39;s=
quashfs-root&#39;</div><div><br></div><div>This last option, after extracti=
on, lets you hack on my AppRun script</div><div>should you feel an itch for=
 this :-)</div><div><br></div><div>II. Mini-Tutorial</div><div>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><div>My tutoria=
l comes in the shape of an &quot;ASCIInema&quot; asciicast, running about</=
div><div>7 minutes. It should serve as an introductionary HOWTO for the IPP=
 Sample</div><div>utilities, as well as a short intro into IPP in general.<=
/div><div><br></div><div>Since it uses an AppImage, it can be reproduced im=
mediately after</div><div>download, by almost any Linux user who is interes=
ted to play with IPP</div><div>Sample software. You can watch it here:</div=
><div><br></div><div>*=C2=A0 <a href=3D"https://asciinema.org/">https://asc=
iinema.org/</a></div><div><br></div><div>Two usage tipps:</div><div><br></d=
iv><div>1.=C2=A0 You can pause or scroll back and then replay a scene it an=
y time if it</div><div>=C2=A0 =C2=A0 was passing by too fast.</div><div>2.=
=C2=A0 You can copy&#39;n&#39;paste whatever is interesting for you directl=
y from the</div><div>=C2=A0 =C2=A0 terminal window.</div><div><br></div><di=
v>III. Self-promotion</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</div><div><br></div><div>My AppImage is automatically built=
 by Travis CI from a forked</div><div>istopwg/ippsample repository on GitHu=
b. If you like it well enough, I can</div><div>prepare a pull request for t=
he official istopwg/ippsample repo, and a</div><div>working AppImage will a=
utomatically be built and published upon each push</div><div>(&quot;continu=
ous&quot; release), or upon each officially tagged release, or both.</div><=
div><br></div><div>I&#39;m planning to add a few more functions in future r=
eleases for user</div><div>convenience to play with this AppImage. Mainly, =
these will be to provide</div><div>several working samples of several pre-d=
efined print queues having</div><div>different extended properties, which t=
hen can then be used with</div><div>&#39;-C config-dir&#39; invocations of =
&#39;ippserver&#39;.</div><div><br></div><div>The download location of my c=
urrent &#39;xperimental&#39; AppImage is here:</div><div><br></div><div>*=
=C2=A0 <a href=3D"https://github.com/KurtPfeifle/ippsample/releases/">https=
://github.com/KurtPfeifle/ippsample/releases/</a></div><div><br></div><div>=
Please do not miss to read the text-style supplement to the tutorial on</di=
v><div>the <a href=3D"http://asciinema.org">asciinema.org</a> website. I&#3=
9;d like you to check (and tell me about) if I</div><div>have any factual e=
rrors in it.</div><div><br></div><div>URL to ASCIIcast one more time: <a hr=
ef=3D"https://asciinema.org/a/155588">https://asciinema.org/a/155588</a></d=
iv><div><br></div><div>Cheers, Kurt</div><div><br></div><div>P.S.:</div><di=
v>-----</div><div><br></div><div>1. Also please tell me about any other iss=
ues you may encounter [1] --</div><div>=C2=A0 =C2=A0unless it is a problem =
with the IPP Sample software itself [2].</div><div><br></div><div>2. I prom=
ise to not take offense if you consider both, my ASCIIcast and the</div><di=
v>=C2=A0 =C2=A0AppImage, as two things which put some more weight behind my=
 request from</div><div>=C2=A0 =C2=A010 weeks ago to provide *official* App=
Image releases by the PWG=C2=A0 =C2=A0 ;-)</div><div>=C2=A0 =C2=A0(see issu=
e on GitHub: <a href=3D"https://github.com/istopwg/ippsample/issues/56">htt=
ps://github.com/istopwg/ippsample/issues/56</a>)</div><div><br></div><div>-=
---</div><div><br></div><div>[1]:=C2=A0 <a href=3D"https://github.com/KurtP=
feifle/ippsample/issues">https://github.com/KurtPfeifle/ippsample/issues</a=
></div><div>[2]:=C2=A0 <a href=3D"https://github.com/istopwg/ippsample/issu=
es">https://github.com/istopwg/ippsample/issues</a></div><div><br></div></d=
iv>

--001a113da3b0cdc43f05620d49c2--
