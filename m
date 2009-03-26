MIME-Version: 1.0
In-Reply-To: <49CB60C5.8010608@bredband.net>
References: <49CB60C5.8010608@bredband.net>
Date: Thu, 26 Mar 2009 11:25:20 -0500
Message-ID: <b801b6f40903260925v34b997b7t4bba8cd9c3591c36@mail.gmail.com>
From: Alex Wauck <alex.wauck@gmail.com>
Content-Type: multipart/alternative; boundary=001517511b20f6b5b10466080fc6
Subject: Re: [Printing-architecture] GSOC'09: Common Printing Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Per Hermansson <hermansson.per@bredband.net>
Cc: printing-architecture@lists.linux-foundation.org

--001517511b20f6b5b10466080fc6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Per,

My name is Alex Wauck, and I started the implementation of the KDE dialog
last summer.  I intend to continue to work on the project this summer.  So,
if accepted, you would likely be working with me.  If you would like to
learn Qt, this project certainly provides an opportunity for that.  The
current code for the KDE dialog needs some refactoring, and the UI needs
some refinement.  The refactoring may be too complex for someone learning
Qt, but UI refinement should be well within reach.  Also, Lars started a GTK
dialog last summer, and since you have experience with GTK, that would be a
good project for you to work on.


Except for the printing dialog and the cpdapi implementation I guess
> that some kind of abstraction is needed so that the underlying print
> method is decoupled from D-Bus in order to use the api for systems
> without D-Bus?
>

I think the solution for Qt/KDE will subclass QPrintDialog/KPrintDialog with
some way of automatically choosing the right one so that applications don't
need to know whether they are using the Common Print Dialog or a
toolkit-native dialog.  I would imagine a similar arrangement could be made
for GTK/GNOME.

Also, if two students are chosen for the project what would be a good
> measure for success in modifying other application to use the dialog?


My current goal is to have the dialog working in at least one KDE
application (probably Okular) by the end of July.  Since you have experience
with GTK, perhaps you should pick a fairly simple application (Evince?) and
plan to modify it to use the new dialog.

Finally is the cpdapi used (or experimented with) by any applications
> today that you know of?
>

Not that I know of.  I had wanted to get my dialog in KDE 4.2, but that
proved to be way too ambitious.  We have a stupidly simple test application,
but that's it.  Getting the dialog implemented in some actual applications
is a goal for this summer.

Alex

--001517511b20f6b5b10466080fc6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Per,<br><br>My name is Alex Wauck, and I started the implementation of the =
KDE dialog last summer.=A0 I intend to continue to work on the project this=
 summer.=A0 So, if accepted, you would likely be working with me.=A0 If you=
 would like to learn Qt, this project certainly provides an opportunity for=
 that.=A0 The current code for the KDE dialog needs some refactoring, and t=
he UI needs some refinement.=A0 The refactoring may be too complex for some=
one learning Qt, but UI refinement should be well within reach.=A0 Also, La=
rs started a GTK dialog last summer, and since you have experience with GTK=
, that would be a good project for you to work on.<br>
<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; p=
adding-left: 1ex;">
Except for the printing dialog and the cpdapi implementation I guess<br>
that some kind of abstraction is needed so that the underlying print<br>
method is decoupled from D-Bus in order to use the api for systems<br>
without D-Bus?<br>
</blockquote><div><br>I think the solution for Qt/KDE will subclass QPrintD=
ialog/KPrintDialog with some way of automatically choosing the right one so=
 that applications don&#39;t need to know whether they are using the Common=
 Print Dialog or a toolkit-native dialog.=A0 I would imagine a similar arra=
ngement could be made for GTK/GNOME.<br>
<br></div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid=
 rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Also, if two students are chosen for the project what would be a good<br>
measure for success in modifying other application to use the dialog?</bloc=
kquote><div>=A0</div><div>My current goal is to have the dialog working in =
at least one KDE application (probably Okular) by the end of July.=A0 Since=
 you have experience with GTK, perhaps you should pick a fairly simple appl=
ication (Evince?) and plan to modify it to use the new dialog. <br>
<br></div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid=
 rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Finally is the cpdapi used (or experimented with) by any applications<br>
today that you know of?<br>
</blockquote><div><br>Not that I know of.=A0 I had wanted to get my dialog =
in KDE 4.2, but that proved to be way too ambitious.=A0 We have a stupidly =
simple test application, but that&#39;s it.=A0 Getting the dialog implement=
ed in some actual applications is a goal for this summer.<br>
<br>Alex<br></div></div>

--001517511b20f6b5b10466080fc6--
