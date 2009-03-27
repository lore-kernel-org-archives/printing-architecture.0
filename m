MIME-Version: 1.0
In-Reply-To: <49CC1430.2080603@gmail.com>
References: <49CB60C5.8010608@bredband.net> <49CBD444.704@gmail.com>
	<49CBE96B.8000202@bredband.net> <49CC1430.2080603@gmail.com>
Date: Thu, 26 Mar 2009 19:28:47 -0500
Message-ID: <b801b6f40903261728h14e8b675m464f6cade51f5c96@mail.gmail.com>
From: Alex Wauck <alex.wauck@gmail.com>
Content-Type: multipart/alternative; boundary=0016364ece9ee9d99e04660ed0dc
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

--0016364ece9ee9d99e04660ed0dc
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

>
> Yes, my original idea was to have one student finishing the two dialogs
> and another patching the applications (see ideas list), but it is no
> problem for example if one student does the GTK dialog and patches the
> GTK apps and the second does the KDE dialog and patches the KDE apps.
> And if we get only applications for the dialog stuff and nothing for
> JTAPI, drivers and whatever we offered, we can even put a third student
> onto the dialog. We also can move around work tasks during the GSoC
> (this we did last year as it turned out that Lars got the CPDAPI quickly
> together, so he did also the GTK version of the dialog which the other
> student on the CPD was supposed to do, but the the Qt dialog turned out
> to be more work than expected).


Interesting.  I don't recall being expected to do the GTK dialog.  At any
rate, it should be easier to do other implementations now that we have an
existing implementation.  I would say the hardest part is the interface to
CUPS.  Since CUPS has a semi-object-oriented C API, producing an idiomatic
Qt interface for it is decidedly non-trivial.  Someone familiar with GLib
may find it easier to think in that way, and hence have an easier time with
it.

The next hardest part is making the custom widgets (like the option grid)
and making them look good.  I'm not much of an artist, so I tried to reuse
existing widgets as much as possible, but that didn't look the way Peter
wanted it too.  I still haven't produced a widget that looks right.  The
spec says that the widget toolkit's native grid widget should be used, but
Qt's grid widget is not designed for such use and would look really weird.

Lastly, I ran into a very strange QGraphicsView layout issue that seemed to
occur on every computer except for mine.  Hopefully, there won't be any of
that this year.

Alex

--0016364ece9ee9d99e04660ed0dc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"borde=
r-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-le=
ft: 1ex;">Yes, my original idea was to have one student finishing the two d=
ialogs<br>

and another patching the applications (see ideas list), but it is no<br>
problem for example if one student does the GTK dialog and patches the<br>
GTK apps and the second does the KDE dialog and patches the KDE apps.<br>
And if we get only applications for the dialog stuff and nothing for<br>
JTAPI, drivers and whatever we offered, we can even put a third student<br>
onto the dialog. We also can move around work tasks during the GSoC<br>
(this we did last year as it turned out that Lars got the CPDAPI quickly<br=
>
together, so he did also the GTK version of the dialog which the other<br>
student on the CPD was supposed to do, but the the Qt dialog turned out<br>
to be more work than expected).</blockquote><div><br>Interesting.=A0 I don&=
#39;t recall being expected to do the GTK dialog.=A0 At any rate, it should=
 be easier to do other implementations now that we have an existing impleme=
ntation.=A0 I would say the hardest part is the interface to CUPS.=A0 Since=
 CUPS has a semi-object-oriented C API, producing an idiomatic Qt interface=
 for it is decidedly non-trivial.=A0 Someone familiar with GLib may find it=
 easier to think in that way, and hence have an easier time with it.<br>
</div></div><br>The next hardest part is making the custom widgets (like th=
e option grid) and making them look good.=A0 I&#39;m not much of an artist,=
 so I tried to reuse existing widgets as much as possible, but that didn&#3=
9;t look the way Peter wanted it too.=A0 I still haven&#39;t produced a wid=
get that looks right.=A0 The spec says that the widget toolkit&#39;s native=
 grid widget should be used, but Qt&#39;s grid widget is not designed for s=
uch use and would look really weird.<br>
<br>Lastly, I ran into a very strange QGraphicsView layout issue that seeme=
d to occur on every computer except for mine.=A0 Hopefully, there won&#39;t=
 be any of that this year.<br><br>Alex<br>

--0016364ece9ee9d99e04660ed0dc--
