Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	message-id : references : to; s=20180706;
	bh=Fl2OnV8oH/2RFvS8WbE3T5aG98WHUrSMor6nl+tZ3Zw=;
	b=EzbAi+qkfmTnBey+EQ34y6J4hb0/69wJbdSCDe9hWwyTq0rL+Px50MF5Jf0CsEFi+I2p
	BdW27NrAMAm6L7WmLJLvtlKWRpiSxkm5GETDeX9aREEFZXXqisa4nVVFoOmvSuKfA2YW
	7VaNmzKXSG/7jRyTsIdGGD2AH5M/WgxyQIqMBP6mMiQn2qVrJ7xAR79dmXcOHNIGNsHe
	DwmhDG93Ack1KdWOipHv24neZDtJbnqPqEF0aNWHqP2JjszdUEHzrt033LIBT1j2x4lA
	G7UR6jOFY3CE+bMYWeZvahbro6c3uxCL70Ah3DbUPU7zT20mSX4DEQ2MANwxyYh7Xnsi
	qw== 
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_12evRCh5+BaawvtA7LLY8A)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <aeeb7c9d-b8b9-ade7-88a3-7d9b1e3b87c7@gmail.com>
Date: Wed, 13 Feb 2019 16:43:22 -0500
Message-id: <E151ABF4-6D7C-4A3A-87E4-42375A5A200C@apple.com>
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
	<aeeb7c9d-b8b9-ade7-88a3-7d9b1e3b87c7@gmail.com>
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_12evRCh5+BaawvtA7LLY8A)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till,

Hard to say since none of the source files have copyright statements, but the Git history and wayback machine shows it is probably Lennart Poettering:

    http://web.archive.org/web/20061010201810/http://www.avahi.org/wiki/AvahiCommunity#People


> On Feb 13, 2019, at 4:26 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> On 13/02/2019 21:34, Michael Sweet wrote:
>> Till,
>>> On Feb 13, 2019, at 1:14 PM, Till Kamppeter <till.kamppeter@gmail.com <mailto:till.kamppeter@gmail.com>> wrote:
>>> ...
>>> According to Zdenek, Michal tried this with the co-maintainership already.
>>> 
>>> Seems that Trent is refusing any cooperation or completely ignoring the project.
>>> 
>>> My suggestion is to fork the project and use one of the locations suggested by me, but who should be the upstream maintainer then.
>> Well, if you fork and put the fork under openprinting, then you can give access to the various Linux packagers of Avahi and let them merge any bug fixes, etc. there at least.  And then *if* Trent starts maintaining Avahi again and accepting pull requests you can easily get those changes back to him...
> 
> I could do so and I can imagine that the distros will adopt this, but important is that I am not able to do the full upstream maintainer work. I cannot swallow all free software projects which are somehow needed for printing to work but given up upstream.
> 
> As interim upstream maintainer of Avahi I could do things like assign commit rights to distro package maintainers, do releases, perhaps also merge pull requests, but I cannot move forward the development. Here I need contributors (for example distro packagers) who create the code (or mentor a GSoC student on an Avahi project, the slot I could provide).
> 
> By the way, who is the original author of Avahi?
> 
>   Till

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_12evRCh5+BaawvtA7LLY8A)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Till,<div class=3D""><br class=3D""></div><div class=3D"">Hard =
to say since none of the source files have copyright statements, but the =
Git history and wayback machine shows it is probably&nbsp;Lennart =
Poettering:</div><div class=3D""><br class=3D""></div><div =
class=3D"">&nbsp; &nbsp; <a =
href=3D"http://web.archive.org/web/20061010201810/http://www.avahi.org/wik=
i/AvahiCommunity#People" =
class=3D"">http://web.archive.org/web/20061010201810/http://www.avahi.org/=
wiki/AvahiCommunity#People</a></div><div class=3D""><br =
class=3D""></div><div class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Feb 13, 2019, at 4:26 PM, =
Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">till.kamppeter@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">On =
13/02/2019 21:34, Michael Sweet wrote:<br class=3D""><blockquote =
type=3D"cite" class=3D"">Till,<br class=3D""><blockquote type=3D"cite" =
class=3D"">On Feb 13, 2019, at 1:14 PM, Till Kamppeter &lt;<a =
href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">till.kamppeter@gmail.com</a> &lt;<a =
href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">mailto:till.kamppeter@gmail.com</a>&gt;&gt; wrote:<br =
class=3D"">...<br class=3D"">According to Zdenek, Michal tried this with =
the co-maintainership already.<br class=3D""><br class=3D"">Seems that =
Trent is refusing any cooperation or completely ignoring the project.<br =
class=3D""><br class=3D"">My suggestion is to fork the project and use =
one of the locations suggested by me, but who should be the upstream =
maintainer then.<br class=3D""></blockquote>Well, if you fork and put =
the fork under openprinting, then you can give access to the various =
Linux packagers of Avahi and let them merge any bug fixes, etc. there at =
least. &nbsp;And then *if* Trent starts maintaining Avahi again and =
accepting pull requests you can easily get those changes back to =
him...<br class=3D""></blockquote><br class=3D"">I could do so and I can =
imagine that the distros will adopt this, but important is that I am not =
able to do the full upstream maintainer work. I cannot swallow all free =
software projects which are somehow needed for printing to work but =
given up upstream.<br class=3D""><br class=3D"">As interim upstream =
maintainer of Avahi I could do things like assign commit rights to =
distro package maintainers, do releases, perhaps also merge pull =
requests, but I cannot move forward the development. Here I need =
contributors (for example distro packagers) who create the code (or =
mentor a GSoC student on an Avahi project, the slot I could provide).<br =
class=3D""><br class=3D"">By the way, who is the original author of =
Avahi?<br class=3D""><br class=3D""> &nbsp;&nbsp;Till<br =
class=3D""></div></div></blockquote></div><br class=3D""><div class=3D"">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: &quot;Andale Mono&quot;; =
font-variant-ligatures: normal; font-variant-east-asian: normal; =
font-variant-position: normal; line-height: normal; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none;"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Andale Mono'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing =
System&nbsp;Engineer</div></span></div></span>
</div>
<br class=3D""></div></body></html>=

--Boundary_(ID_12evRCh5+BaawvtA7LLY8A)--
