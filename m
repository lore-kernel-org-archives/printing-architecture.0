Return-Path: <aveekb@lexmark.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lexmark.com; s=lxk-google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iWsq/DKFUVmKOVy0lD8iGMy7leESSXPDWx5eu/bIzqg=;
	b=i6pd99du67QBXhzQ6OjYFyI5yiTtO5LSMIqgKszfZ6yXg1mQIt7QVWNrVs1MCDa13g
	C5+jgmguNuzePaeEIPa69XsOSs3HDRObsk5CnEuy7UZcr6Hh8FZTfpdvzaR5JdD6WZLm
	cW5zp4DoF45J64jvDR3B79Zhm66pUCkJ6FnmUMT2ouKphGqzhqxEQ+XnLyDFKPzKpOXK
	IuCNlTc/fgX4Z7Tm1VUqtLdeo2ifcxsaAlFDC5aX41zs3/u8WO1KBqhTuICQAWsUWcvg
	7B/X13s693tkMRvFJexyZNJF/MGwVjTcp8MlmHA6OEaoPWnfUx0CCZ97D+8Fxe4wz+qi
	8h0w==
MIME-Version: 1.0
In-Reply-To: <D634549F-FD01-482E-AE04-12B10F4198A2@apple.com>
References: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
	<D634549F-FD01-482E-AE04-12B10F4198A2@apple.com>
From: Aveek Basu <aveek.basu@lexmark.com>
Date: Thu, 31 Aug 2017 17:29:14 +0530
Message-ID: <CAMmetfT9rHKeJuK9ioZ8Oi3iUN4+2HFHW3U0Xgazv__NKTJSkw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c122f98a527da05580b618b"
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
To: Michael Sweet <msweet@apple.com>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Nilanjana Lodh <nilanjanalodh@gmail.com>, Abhijeet Dubey <dubey.abhijeet09@gmail.com>, Jeff Licquia <licquia@linuxfoundation.org>, Jeff Licquia <jeff@licquia.org>

--94eb2c122f98a527da05580b618b
Content-Type: text/plain; charset="UTF-8"

Till \ Mike,

I think if Git Lab gives us the facilities of Github like environment even
after hosting in some one's own server, probably that will be the best
option. It will be good to have Till do the admin task. In case he is not
available or is busy, I can assist him out if required.


Regards,
Aveek


On Thu, Aug 31, 2017 at 5:47 AM, Michael Sweet <msweet@apple.com> wrote:

> Till,
>
> Personally I think Github is the way to go.  Yes, it is run by a company
> but that company has many major clients (including Apple) so I think they
> are going to be around for a good long time.  Also, every Git clone of the
> repository creates a backup (should something catastrophic happen).
> Finally, the issue tracker *does* allow you to attach binary files - I
> think the only restriction is HTML files (but I'm sure they'll be happy to
> clarify that...)
>
> A third alternative is to put something like Gitlab on the
> openprinting.org VM you have - then you get the benefits of a Github-like
> environment that is hosted on your own server.  But I'd only do that if you
> are willing to do the admin tasks...
>
>
> > On Aug 30, 2017, at 6:10 PM, Till Kamppeter <till.kamppeter@gmail.com>
> wrote:
> >
> > Hi,
> >
> > with the Google Summer of Code 2017 we got three new free software
> projects added to OpenPrinting. Nilanjana Lodh (CCed) wrote two of these
> projects to improve the print dialogs of GUI applications.
> >
> > The projects do not provide any GUI, but they make it possible to
> separate the the dialog's interaction with local printing systems (like
> CUPS) or network print services (like Google Cloud Print) from the dialog
> itself using a frontend/backend architecture with the dislog being the
> frontend and for each print technology (currently CUPS, Google Cloud Print,
> ...) a backend. All print dialogs (currently GTK, Qt, LibreOffice) will use
> the same backends and so adding a print technology in the future will be
> much easier, in the ideal case the print service provider supplies the
> appropriate backend for his service.
> >
> > One of the projects is a pair of frontend and backend libraries to make
> it easy to write backends and supporting print dialogs. The libraries hide
> away the D-Bus interface between frontend and backend and the mechanisms to
> find and invoke all the backends.
> >
> > The other project is the CUPS backend without which the whole effort
> would be worthless.
> >
> > See Nilanjana's work here:
> >
> > https://nilanjanalodh.github.io/common-print-dialog-gsoc17/
> >
> > Abhijeet Dubey (also CCed) has implemented the Google Cloud Print
> backend, making Google Cloud Print available to all supporting print
> dialogs.
> >
> > His work you can find here:
> >
> > https://github.com/dracarys09/gcp-backend/wiki/1.-Google-
> Summer-of-Code-2017-%7C-Common-Printing-Dialog
> >
> > These three projects need to be hosted as pat of OpenPrinting and, as
> GIT turned to be the standard VCS in GIT format. And once thinking about
> project hosting I am also thinking about converting cups-filters from BZR
> to GIT and also move ippusbxd into OpenPrinting. ippusbxd is currently
> hosted in my personal GitHub:
> >
> > https://github.com/tillkamppeter/ippusbxd
> >
> > Now my question is how to do all this hosting to also have it somehow
> unified and not each project hosted in a different way.
> >
> > There are two approaches:
> >
> > Hosting on the OpenPrinting/Linux Foundation web site
> > -----------------------------------------------------
> >
> > Pros:
> >
> > - OpenPrinting is part of the Linux Foundation, and the LF has the
> hosting facilities, without any commercial interests.
> > - All code on the web sites of the Linux Foundation (or at least what is
> used by OpenPrinting) is free software
> > - The Bugzilla bug tracker is an established system with a lot of
> functionality, especially allows binary attachments (very important for
> printing)
> >
> > Cons:
> >
> > - A new project GIT repo needs to get created by the sys admins of the
> LF.
> > - There is a large community of GitHub users, for whom contributing to
> projects on GitHub is easy (report bugs, post pull requests, ...), but
> projects outside GitHub are not that easy (need to create LF account, ...).
> >
> >
> > Hosting on GitHub
> > -----------------
> >
> > Pros:
> >
> > - Using the de-facto standard of hosting with a large user community
> > - As a user one can easily create a new repository for a new project
> > - Pull requests allow easy contributing
> >
> > Cons:
> >
> > - Site software is proprietary
> > - Run by a commercial company which could easily cease the service
> > - The issue tracker only allows plain-text attachments. How to attach
> print sample files or similar.
> >
> > Now I would like to hear some opinions of you all on how we should host
> the OpenPrinting projects.
> >
> >   Till
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
>
>


-- 
Regards,
Aveek

--94eb2c122f98a527da05580b618b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Till \ Mike,<div><br></div><div>I think if Git Lab gives u=
s the facilities of Github like environment even after hosting in some one&=
#39;s own server, probably that will be the best option. It will be good to=
 have Till do the admin task. In case he is not available or is busy, I can=
 assist him out if required.</div><div><br></div><div><br></div><div>Regard=
s,</div><div>Aveek</div><div><br></div><div><br></div><div>On Thu, Aug 31, =
2017 at 5:47 AM, Michael Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:mswe=
et@apple.com" target=3D"_blank">msweet@apple.com</a>&gt;</span> wrote:<br><=
/div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Till,<br>
<br>
Personally I think Github is the way to go.=C2=A0 Yes, it is run by a compa=
ny but that company has many major clients (including Apple) so I think the=
y are going to be around for a good long time.=C2=A0 Also, every Git clone =
of the repository creates a backup (should something catastrophic happen).=
=C2=A0 Finally, the issue tracker *does* allow you to attach binary files -=
 I think the only restriction is HTML files (but I&#39;m sure they&#39;ll b=
e happy to clarify that...)<br>
<br>
A third alternative is to put something like Gitlab on the <a href=3D"http:=
//openprinting.org" rel=3D"noreferrer" target=3D"_blank">openprinting.org</=
a> VM you have - then you get the benefits of a Github-like environment tha=
t is hosted on your own server.=C2=A0 But I&#39;d only do that if you are w=
illing to do the admin tasks...<br>
<br>
<br>
&gt; On Aug 30, 2017, at 6:10 PM, Till Kamppeter &lt;<a href=3D"mailto:till=
.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; with the Google Summer of Code 2017 we got three new free software pro=
jects added to OpenPrinting. Nilanjana Lodh (CCed) wrote two of these proje=
cts to improve the print dialogs of GUI applications.<br>
&gt;<br>
&gt; The projects do not provide any GUI, but they make it possible to sepa=
rate the the dialog&#39;s interaction with local printing systems (like CUP=
S) or network print services (like Google Cloud Print) from the dialog itse=
lf using a frontend/backend architecture with the dislog being the frontend=
 and for each print technology (currently CUPS, Google Cloud Print, ...) a =
backend. All print dialogs (currently GTK, Qt, LibreOffice) will use the sa=
me backends and so adding a print technology in the future will be much eas=
ier, in the ideal case the print service provider supplies the appropriate =
backend for his service.<br>
&gt;<br>
&gt; One of the projects is a pair of frontend and backend libraries to mak=
e it easy to write backends and supporting print dialogs. The libraries hid=
e away the D-Bus interface between frontend and backend and the mechanisms =
to find and invoke all the backends.<br>
&gt;<br>
&gt; The other project is the CUPS backend without which the whole effort w=
ould be worthless.<br>
&gt;<br>
&gt; See Nilanjana&#39;s work here:<br>
&gt;<br>
&gt; <a href=3D"https://nilanjanalodh.github.io/common-print-dialog-gsoc17/=
" rel=3D"noreferrer" target=3D"_blank">https://nilanjanalodh.github.<wbr>io=
/common-print-dialog-gsoc17/</a><br>
&gt;<br>
&gt; Abhijeet Dubey (also CCed) has implemented the Google Cloud Print back=
end, making Google Cloud Print available to all supporting print dialogs.<b=
r>
&gt;<br>
&gt; His work you can find here:<br>
&gt;<br>
&gt; <a href=3D"https://github.com/dracarys09/gcp-backend/wiki/1.-Google-Su=
mmer-of-Code-2017-%7C-Common-Printing-Dialog" rel=3D"noreferrer" target=3D"=
_blank">https://github.com/dracarys09/<wbr>gcp-backend/wiki/1.-Google-<wbr>=
Summer-of-Code-2017-%7C-<wbr>Common-Printing-Dialog</a><br>
&gt;<br>
&gt; These three projects need to be hosted as pat of OpenPrinting and, as =
GIT turned to be the standard VCS in GIT format. And once thinking about pr=
oject hosting I am also thinking about converting cups-filters from BZR to =
GIT and also move ippusbxd into OpenPrinting. ippusbxd is currently hosted =
in my personal GitHub:<br>
&gt;<br>
&gt; <a href=3D"https://github.com/tillkamppeter/ippusbxd" rel=3D"noreferre=
r" target=3D"_blank">https://github.com/<wbr>tillkamppeter/ippusbxd</a><br>
&gt;<br>
&gt; Now my question is how to do all this hosting to also have it somehow =
unified and not each project hosted in a different way.<br>
&gt;<br>
&gt; There are two approaches:<br>
&gt;<br>
&gt; Hosting on the OpenPrinting/Linux Foundation web site<br>
&gt; ------------------------------<wbr>-----------------------<br>
&gt;<br>
&gt; Pros:<br>
&gt;<br>
&gt; - OpenPrinting is part of the Linux Foundation, and the LF has the hos=
ting facilities, without any commercial interests.<br>
&gt; - All code on the web sites of the Linux Foundation (or at least what =
is used by OpenPrinting) is free software<br>
&gt; - The Bugzilla bug tracker is an established system with a lot of func=
tionality, especially allows binary attachments (very important for printin=
g)<br>
&gt;<br>
&gt; Cons:<br>
&gt;<br>
&gt; - A new project GIT repo needs to get created by the sys admins of the=
 LF.<br>
&gt; - There is a large community of GitHub users, for whom contributing to=
 projects on GitHub is easy (report bugs, post pull requests, ...), but pro=
jects outside GitHub are not that easy (need to create LF account, ...).<br=
>
&gt;<br>
&gt;<br>
&gt; Hosting on GitHub<br>
&gt; -----------------<br>
&gt;<br>
&gt; Pros:<br>
&gt;<br>
&gt; - Using the de-facto standard of hosting with a large user community<b=
r>
&gt; - As a user one can easily create a new repository for a new project<b=
r>
&gt; - Pull requests allow easy contributing<br>
&gt;<br>
&gt; Cons:<br>
&gt;<br>
&gt; - Site software is proprietary<br>
&gt; - Run by a commercial company which could easily cease the service<br>
&gt; - The issue tracker only allows plain-text attachments. How to attach =
print sample files or similar.<br>
&gt;<br>
&gt; Now I would like to hear some opinions of you all on how we should hos=
t the OpenPrinting projects.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0Till<br>
<br>
______________________________<wbr>___________________________<br>
Michael Sweet, Senior Printing System Engineer<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Re=
gards,<div>Aveek</div></div></div>
</div></div>

--94eb2c122f98a527da05580b618b--
