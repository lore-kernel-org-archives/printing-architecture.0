Return-Path: <daniel_prichard@yahoo.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1614345396; bh=AI2yTIyqITp5bxTuLPxeYe/juiEP9EmrrRoyHRZv4Fg=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=nH2aTO0YyKghfh57DU1PLT1mCSQtSTzxVvOHi1lLXoHX4688ehgdLEvzrzprurfjRm5f9amwqKFC/+Ez2HhkCeIDdnXj91YfQIbCJGqIXhaT1OLOkngpD9CxtsB2GXRQ4S7hk2gaBPXyGkgK43fDN68XnaxoV7NmRQ2Nhx0tPnG1JN+4A+d/8bjIycldJNuCpRYYzjmd8ccN8H+GSRZqSKdLAHvCIIZzhy5yFtZcXXBN41/i2ZAXFylw/JwAQ23N5dVhn7tGkTs0ct6No5E94UF4g54zHlayDPFUYExDH72ZvULJIV+Gj1xVbQycbTP3lzBcqwrulPsdN6MFDBlzLg==
Date: Fri, 26 Feb 2021 13:16:30 +0000 (UTC)
From: Daniel Prichard <daniel_prichard@yahoo.com>
Message-ID: <1469025507.631561.1614345390186@mail.yahoo.com>
In-Reply-To: <mailman.1.1614340802.25662.printing-architecture@lists.linux-foundation.org>
References: <mailman.1.1614340802.25662.printing-architecture@lists.linux-foundation.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_631560_766933891.1614345390179"
Subject: Re: [Printing-architecture] Printing-architecture Digest, Vol 206,
	Issue 16
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

------=_Part_631560_766933891.1614345390179
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I have a couple questions as a user.=C2=A0 (I have no special expertise ot=
her than having installed various printers on different distributions in di=
fferent ways over the years.). Please feel free to disregard my email if it=
 is not helpful.
First, take the following example.=C2=A0 I have several computers and non-I=
PP everywhere/Airprint/Mopria, etc. network printers (e.g., old HP Laserjet=
) in my house.=C2=A0 As I understand it, each computer could install a prin=
ter application for these printers that effectively shares them as IPP Ever=
ywhere printers.=C2=A0 I'm assuming that this would mean that the printer a=
pplication could be made available for printing on iOS/Android.=C2=A0 But d=
oes that mean that one printer application would show up for each computer,=
 so that there are multiple copies of the same printer application availabl=
e to mobile?=C2=A0 And would these printer applications also show up on the=
 other computers?=C2=A0 (For example, Debian currently gives me notificatio=
ns that it has found and installed one particular network printer..=C2=A0 W=
ould I be getting these notices for printer applications installed on other=
 computers?) I suppose that the printer applications could be installed on =
only one computer, but then it would need to be on all the time for other c=
omputers to print to it.=C2=A0 Or is it anticipated that printer applicatio=
ns will only be made available locally?=C2=A0 Will there be a way to make p=
rinter applications available on the local network on an individual basis?=
=C2=A0 Or would it be all or nothing?=C2=A0 I realize that there are settin=
gs in the CUPS configuration files currently to make shared printers emulat=
ing AirPrint available locally (and that there are various views about whet=
her this particular type of sharing should be supported).=C2=A0 But my unde=
rstand is that such files would no longer be available to edit if this func=
tionality is in a container.
Second, would it be possible for the printer applications to have assigned =
ports in a range so they can be easily found?=C2=A0 There could also be ano=
ther range that is first come first served.=C2=A0 I realize that this would=
 require coordination, and that there may be technical reasons why it would=
 not work.
Thanks!
    On Friday, February 26, 2021, 07:00:10 AM EST, printing-architecture-re=
quest@lists.linux-foundation.org <printing-architecture-request@lists.linux=
-foundation.org> wrote: =20
=20
 Send Printing-architecture mailing list submissions to
=C2=A0=C2=A0=C2=A0 printing-architecture@lists.linux-foundation.org

To subscribe or unsubscribe via the World Wide Web, visit
=C2=A0=C2=A0=C2=A0 https://lists.linuxfoundation.org/mailman/listinfo/print=
ing-architecture

or, via email, send a message with subject or body 'help' to
=C2=A0=C2=A0=C2=A0 printing-architecture-request@lists.linux-foundation.org

You can reach the person managing the list at
=C2=A0=C2=A0=C2=A0 printing-architecture-owner@lists.linux-foundation.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of Printing-architecture digest..."


Today's Topics:

=C2=A0 1. Re: Automatic printer setup with Printer=C2=A0=C2=A0=C2=A0 Applic=
ations
=C2=A0 =C2=A0 =C2=A0 (Till Kamppeter)
=C2=A0 2. Re: Automatic printer setup with Printer Applications
=C2=A0 =C2=A0 =C2=A0 (Till Kamppeter)
=C2=A0 3. Re: Automatic printer setup with Printer Applications
=C2=A0 =C2=A0 =C2=A0 (Johannes Meixner)
=C2=A0 4. Re: Automatic printer setup with Printer Applications
=C2=A0 =C2=A0 =C2=A0 (Johannes Meixner)


----------------------------------------------------------------------

Message: 1
Date: Thu, 25 Feb 2021 22:51:28 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org"
=C2=A0=C2=A0=C2=A0 <printing-architecture@lists.linux-foundation.org>, Jai =
Luthra
=C2=A0=C2=A0=C2=A0 <luthrajaiji@gmail.com>
Subject: Re: [Printing-architecture] Automatic printer setup with
=C2=A0=C2=A0=C2=A0 Printer=C2=A0=C2=A0=C2=A0 Applications
Message-ID: <f6f434cd-f9ea-6943-f1ef-4db0cf7cf762@gmail.com>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed

On 25/02/2021 16:30, Michael Sweet wrote:
>> Or if you do not want to call an external executable via command line, d=
o IPP with libcups to create the queue (with driver selection "auto").
>=20
> The challenge there is to find the right socket to talk to... :/

Yes, DNS-SD only reveals the host/port access. As every Printer=20
Application which provides a web interface has a host/port, one could=20
use it, but calling the command is probably the most universal.

=C2=A0 =C2=A0 Till



------------------------------

Message: 2
Date: Thu, 25 Feb 2021 23:54:51 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
To: Solomon Peachy <pizza@shaftnet.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>,
=C2=A0=C2=A0=C2=A0 Jai Luthra <luthrajaiji@gmail.com>
Subject: Re: [Printing-architecture] Automatic printer setup with
=C2=A0=C2=A0=C2=A0 Printer Applications
Message-ID: <a0ebda19-80ab-48cf-9032-6d14208f3237@gmail.com>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed

On 25/02/2021 16:28, Solomon Peachy wrote:
> On Wed, Feb 24, 2021 at 03:17:27PM +0100, Till Kamppeter wrote:
>> You probably mean the USB quirks. This is to overcome hardware
>> incompatibilities.
>=20
> Yeah.=C2=A0 Not having something like this is responsible for most of the
> support headaches I get from MacOS users.
>

Seems that CUPS has this USB quirk functionality only in the=20
libusb-based incarnation of the USB backend not in the Darwin one which=20
Mac OS uses. The idea of USB quirks comes from me, as Michael put up the=20
first sketch of a libusb-based USB backend it did not work very well for=20
me and I vastly improved it, especially also investigating how the usblp=20
kernel module works and there was this USB quirk handling which I had=20
overtaken into the backend. Michael has then improved it by putting the=20
rules into an editable file.

>> For this we need support prioritization levels, like "generic" (CMD: ite=
m
>> match), "third-party" (independent driver, like Gutenprint matches the m=
odel),
>> "manufacturer" (manufacturer driver matches the model).
>=20
> "generic" is going to be so much so that I fear it will be effectively
> useless for autoconfiguration.
>=20

I agree.

> Take Epson printers -- Nearly every model produced in over 25 years
> claims to support ESCP2, but there's very little beyond "print basic
> ASCII text" that one can ultimately rely on.=C2=A0 You need a more specif=
ic
> model family (dot matrix, mono-only inkjet, X color inkjet, etc) on top
> of that in order to be remotely useful for raster printing.
>=20

In the PostScript Printer Application this works better. A generic=20
PostScript PPD file works with practically all PostScript printers, it=20
only misses support of many printer features, like more than 2 or 3=20
trays, exotic paper sizes, finishers, ...

> In other words, an application shouldn't claim "support" for a printer
> unless there's an explicit, positive match; everything else will require
> some sort of user/admin intervention/configuration.
>=20

In the PostScript Printer Application this would mean printers for which=20
there is a corresponding PPD file for exactly this model.

> I'm beginning to come around to the notion that we shouldn't even bother
> to create an automagic "figure out which printer application supports
> the printer just plugged in" mechanism, because it's going to take a
> _lot_ of work, it's nearly entirely an exercise in working around legacy
> baggage, and as Michael put it, we're not likely to ever see more than
> half a dozen printer applications anyway, and all of those will be
> focused around legacy models.
>=20

Only for the users not being completely lost with a legacy printer,=20
should we have at least some simple tool which detects printers and=20
lists them and checks installed Printer Applications whether they=20
support it, with an "Add" button for auto-adding it, and also a button=20
for the printer entry which does searches like "Acme LaserStar 1000+"=20
and "Acme Printer" on the Snap Store? (As long as we have no=20
hardware-signature-based search, Printer Applications supporting a few=20
models could list them in their store listing's description, and a=20
manufacturer's Printer Application always contains the manufacturer's=20
name and "printer" somewhere in its title and/or description).

If we have the DNS-SD service lister which I mentioned in other postings=20
on Printer Applications there could be besides the web interface and IPP=20
System Service buttons also an auto-add button.

> I don't see any printer makers bothering to create
> downloadable/runnable-on-end-user-systems printer applications for their
> art/speciality models (and definitely not for their legacy models) --
> instead they'll sell a little "print server" that can be bolted onto the
> printer to achieve that functionality.
>=20
> ...and that "print server" will be running legacy CUPS (and hopefully,
> eventually, PAPPL) along with out-of-band scripts that detect the
> attached printers at startup time and create/export "queues" in a
> non-dynamic manner.

OK, let's see.

=C2=A0 =C2=A0 Till


------------------------------

Message: 3
Date: Fri, 26 Feb 2021 10:17:25 +0100
From: Johannes Meixner <jsmeix@suse.de>
To: printing-architecture@lists.linux-foundation.org
Subject: Re: [Printing-architecture] Automatic printer setup with
=C2=A0=C2=A0=C2=A0 Printer Applications
Message-ID: <226dd237ebac1b695eec291314ae22e3@suse.de>
Content-Type: text/plain; charset=3DUS-ASCII; format=3Dflowed


Hello,

On 2021-02-24 18:23, Till Kamppeter wrote:
> On 24/02/2021 15:01, Johannes Meixner wrote:
>>=20
>> I took me some longer time of experience what works
>> reasonably well in practice out there in real world
>> how to auto-match based on the manufacturer & model
>> strings which is the only data that is always there.
>=20
> I go a similar way, matching by make and model
...
> What I do is taking the observed make and model,
> normalizing it to some form
...
> The names in the list of supported models
> I normalize the same way.

I did same i.e.
normalizing make and model what the system reports and
normalizing make and model in the PPDs in the same way,
then some "fuzzy match" to get a list of PPDs
that "somehow match" the reported make and model
with some "special sorting" to put the "somehow best match"
on top of that list and
finally show that list to the user so he can select one.

In automated setup case the topmost entry of that list
is used.

I vaguely described that in
https://en.opensuse.org/YaST_Printer#Driver

By the way 1:
For my general point of view about
"Automated Printer Configuration" see
https://en.opensuse.org/YaST_Printer#Automated_Printer_Configuration
versus the subsequent section
"Manual Printer Configuration with the YaST Printer Module"
therein.

By the way 2:
In practice the current "YaST Printer Module" is dead code, cf.
https://bugzilla.suse.com/show_bug.cgi?id=3D1175341#c1
I wished those who make the decisions would finally let it RIP.


Kind Regards
Johannes Meixner
--=20
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer


------------------------------

Message: 4
Date: Fri, 26 Feb 2021 11:03:34 +0100
From: Johannes Meixner <jsmeix@suse.de>
To: printing-architecture@lists.linux-foundation.org
Subject: Re: [Printing-architecture] Automatic printer setup with
=C2=A0=C2=A0=C2=A0 Printer Applications
Message-ID: <821b4df56f518b8d2cc38ce846e8cc48@suse.de>
Content-Type: text/plain; charset=3DUS-ASCII; format=3Dflowed


Hello

On 2021-02-25 15:54, Solomon Peachy wrote (excerpts):
>=20
> And much like we've seen multiple distinct models with
> identical USB VID/PIDs, I've also seen distinct models
> that share identical IEEE1284 IDs. [2]
> And then there's the iManufacturer/iModel/iSerial strings
> that may or may not match what's in the 1284 data
> or what's silkscreened onto the printer itself..
> ...Like everything else involving printing, it's a complete mess.
...
> [2] They are in the same family, but the PDL is barely incompatible..

for some (older) examples that "similar looking model names"
do not mean "same driver works" see the part about
"It is crucial to have exact model names!" in
https://en.opensuse.org/SDB:Purchasing_a_Printer_and_Compatibility

I do not agree that everything involving printing is a complete mess
but I do fully agree that model->driver matching is a complete mess
from which follows "automated printer setup is a complete mess"
so my personal conclusion is:

Stay away from automated printer setup
(unless you like complete mess ;-)

I am looking forward to the future where proper
IPP (Everywhere) printer devices provide all what is needed
(including spooling and handling many clients simultaneously)
so neither printer drivers (and their setup)
nor spooling services (and their setup)
are needed any longer.
Only clients that properly talk IPP directly to
IPP printer devices that properly provide IPP.


Kind Regards
Johannes Meixner
--=20
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer


------------------------------

Subject: Digest Footer

_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.linux-foundation.org
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture


------------------------------

End of Printing-architecture Digest, Vol 206, Issue 16
******************************************************
 =20
------=_Part_631560_766933891.1614345390179
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp7ab23758yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">I have a couple questions as=
 a user.&nbsp; (I have no special expertise other than having installed var=
ious printers on different distributions in different ways over the years.)=
. Please feel free to disregard my email if it is not helpful.</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">First, take the following example.&nbsp; I have several computers and=
 non-IPP everywhere/Airprint/Mopria, etc. network printers (e.g., old HP La=
serjet) in my house.&nbsp; As I understand it, each computer could install =
a printer application for these printers that effectively shares them as IP=
P Everywhere printers.&nbsp; I'm assuming that this would mean that the pri=
nter application could be made available for printing on iOS/Android.&nbsp;=
 But does that mean that one printer application would show up for each com=
puter, so that there are multiple copies of the same printer application av=
ailable to mobile?&nbsp; And would these printer applications also show up =
on the other computers?&nbsp; (For example, Debian currently gives me notif=
ications that it has found and installed one particular network printer..&n=
bsp; Would I be getting these notices for printer applications installed on=
 other computers?) I suppose that the printer applications could be install=
ed on only one computer, but then it would need to be on all the time for o=
ther computers to print to it.&nbsp; Or is it anticipated that printer appl=
ications will only be made available locally?&nbsp; Will there be a way to =
make printer applications available on the local network on an individual b=
asis?&nbsp; Or would it be all or nothing?&nbsp; I realize that there are s=
ettings in the CUPS configuration files currently to make shared printers e=
mulating AirPrint available locally (and that there are various views about=
 whether this particular type of sharing should be supported).&nbsp; But my=
 understand is that such files would no longer be available to edit if this=
 functionality is in a container.</div><div dir=3D"ltr" data-setdir=3D"fals=
e"><br></div><div dir=3D"ltr" data-setdir=3D"false">Second, would it be pos=
sible for the printer applications to have assigned ports in a range so the=
y can be easily found?&nbsp; There could also be another range that is firs=
t come first served.&nbsp; I realize that this would require coordination, =
and that there may be technical reasons why it would not work.</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">Thanks!</div><div><br></div>
       =20
        </div><div id=3D"ydp7951ff6ayahoo_quoted_5057113022" class=3D"ydp79=
51ff6ayahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, February 26, 2021, 07:00:10 AM EST, printing=
-architecture-request@lists.linux-foundation.org &lt;printing-architecture-=
request@lists.linux-foundation.org&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">Send Printing-architecture mailing li=
st submissions to<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a href=3D"m=
ailto:printing-architecture@lists.linux-foundation.org" rel=3D"nofollow" ta=
rget=3D"_blank">printing-architecture@lists.linux-foundation.org</a><br></d=
iv><div dir=3D"ltr"><br></div><div dir=3D"ltr">To subscribe or unsubscribe =
via the World Wide Web, visit<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; =
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"nofollow" target=3D"_blank">https://lists.linuxfoundation.=
org/mailman/listinfo/printing-architecture</a><br></div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr">or, via email, send a message with subject or body=
 'help' to<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a href=3D"mailto:p=
rinting-architecture-request@lists.linux-foundation.org" rel=3D"nofollow" t=
arget=3D"_blank">printing-architecture-request@lists.linux-foundation.org</=
a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">You can reach the p=
erson managing the list at<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a =
href=3D"mailto:printing-architecture-owner@lists.linux-foundation.org" rel=
=3D"nofollow" target=3D"_blank">printing-architecture-owner@lists.linux-fou=
ndation.org</a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">When r=
eplying, please edit your Subject line so it is more specific<br></div><div=
 dir=3D"ltr">than "Re: Contents of Printing-architecture digest..."<br></di=
v><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">To=
day's Topics:<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&nbsp;  =
1. Re: Automatic printer setup with Printer&nbsp;&nbsp;&nbsp; Applications<=
br></div><div dir=3D"ltr">&nbsp; &nbsp; &nbsp; (Till Kamppeter)<br></div><d=
iv dir=3D"ltr">&nbsp;  2. Re: Automatic printer setup with Printer Applicat=
ions<br></div><div dir=3D"ltr">&nbsp; &nbsp; &nbsp; (Till Kamppeter)<br></d=
iv><div dir=3D"ltr">&nbsp;  3. Re: Automatic printer setup with Printer App=
lications<br></div><div dir=3D"ltr">&nbsp; &nbsp; &nbsp; (Johannes Meixner)=
<br></div><div dir=3D"ltr">&nbsp;  4. Re: Automatic printer setup with Prin=
ter Applications<br></div><div dir=3D"ltr">&nbsp; &nbsp; &nbsp; (Johannes M=
eixner)<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr">--------------------------------------------------------------=
--------<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Message: 1<br=
></div><div dir=3D"ltr">Date: Thu, 25 Feb 2021 22:51:28 +0100<br></div><div=
 dir=3D"ltr">From: Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmai=
l.com" rel=3D"nofollow" target=3D"_blank">till.kamppeter@gmail.com</a>&gt;<=
br></div><div dir=3D"ltr">To: Michael Sweet &lt;<a href=3D"mailto:msweet@ms=
weet.org" rel=3D"nofollow" target=3D"_blank">msweet@msweet.org</a>&gt;<br><=
/div><div dir=3D"ltr">Cc: "<a href=3D"mailto:printing-architecture@lists.li=
nux-foundation.org" rel=3D"nofollow" target=3D"_blank">printing-architectur=
e@lists.linux-foundation.org</a>"<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nb=
sp; &lt;<a href=3D"mailto:printing-architecture@lists.linux-foundation.org"=
 rel=3D"nofollow" target=3D"_blank">printing-architecture@lists.linux-found=
ation.org</a>&gt;, Jai Luthra<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; =
&lt;<a href=3D"mailto:luthrajaiji@gmail.com" rel=3D"nofollow" target=3D"_bl=
ank">luthrajaiji@gmail.com</a>&gt;<br></div><div dir=3D"ltr">Subject: Re: [=
Printing-architecture] Automatic printer setup with<br></div><div dir=3D"lt=
r">&nbsp;&nbsp;&nbsp; Printer&nbsp;&nbsp;&nbsp; Applications<br></div><div =
dir=3D"ltr">Message-ID: &lt;<a href=3D"mailto:f6f434cd-f9ea-6943-f1ef-4db0c=
f7cf762@gmail.com" rel=3D"nofollow" target=3D"_blank">f6f434cd-f9ea-6943-f1=
ef-4db0cf7cf762@gmail.com</a>&gt;<br></div><div dir=3D"ltr">Content-Type: t=
ext/plain; charset=3Dutf-8; format=3Dflowed<br></div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">On 25/02/2021 16:30, Michael Sweet wrote:<br></div><d=
iv dir=3D"ltr">&gt;&gt; Or if you do not want to call an external executabl=
e via command line, do IPP with libcups to create the queue (with driver se=
lection "auto").<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"ltr">=
&gt; The challenge there is to find the right socket to talk to... :/<br></=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Yes, DNS-SD only reveals th=
e host/port access. As every Printer <br></div><div dir=3D"ltr">Application=
 which provides a web interface has a host/port, one could <br></div><div d=
ir=3D"ltr">use it, but calling the command is probably the most universal.<=
br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&nbsp; &nbsp; Till<br>=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
"><br></div><div dir=3D"ltr">------------------------------<br></div><div d=
ir=3D"ltr"><br></div><div dir=3D"ltr">Message: 2<br></div><div dir=3D"ltr">=
Date: Thu, 25 Feb 2021 23:54:51 +0100<br></div><div dir=3D"ltr">From: Till =
Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com" rel=3D"nofollow" =
target=3D"_blank">till.kamppeter@gmail.com</a>&gt;<br></div><div dir=3D"ltr=
">To: Solomon Peachy &lt;<a href=3D"mailto:pizza@shaftnet.org" rel=3D"nofol=
low" target=3D"_blank">pizza@shaftnet.org</a>&gt;<br></div><div dir=3D"ltr"=
>Cc: Open Printing &lt;<a href=3D"mailto:printing-architecture@lists.linux-=
foundation.org" rel=3D"nofollow" target=3D"_blank">printing-architecture@li=
sts.linux-foundation.org</a>&gt;,<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nb=
sp; Jai Luthra &lt;<a href=3D"mailto:luthrajaiji@gmail.com" rel=3D"nofollow=
" target=3D"_blank">luthrajaiji@gmail.com</a>&gt;<br></div><div dir=3D"ltr"=
>Subject: Re: [Printing-architecture] Automatic printer setup with<br></div=
><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; Printer Applications<br></div><div dir=
=3D"ltr">Message-ID: &lt;<a href=3D"mailto:a0ebda19-80ab-48cf-9032-6d14208f=
3237@gmail.com" rel=3D"nofollow" target=3D"_blank">a0ebda19-80ab-48cf-9032-=
6d14208f3237@gmail.com</a>&gt;<br></div><div dir=3D"ltr">Content-Type: text=
/plain; charset=3Dwindows-1252; format=3Dflowed<br></div><div dir=3D"ltr"><=
br></div><div dir=3D"ltr">On 25/02/2021 16:28, Solomon Peachy wrote:<br></d=
iv><div dir=3D"ltr">&gt; On Wed, Feb 24, 2021 at 03:17:27PM +0100, Till Kam=
ppeter wrote:<br></div><div dir=3D"ltr">&gt;&gt; You probably mean the USB =
quirks. This is to overcome hardware<br></div><div dir=3D"ltr">&gt;&gt; inc=
ompatibilities.<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"ltr">&=
gt; Yeah.&nbsp; Not having something like this is responsible for most of t=
he<br></div><div dir=3D"ltr">&gt; support headaches I get from MacOS users.=
<br></div><div dir=3D"ltr">&gt;<br></div><div dir=3D"ltr"><br></div><div di=
r=3D"ltr">Seems that CUPS has this USB quirk functionality only in the <br>=
</div><div dir=3D"ltr">libusb-based incarnation of the USB backend not in t=
he Darwin one which <br></div><div dir=3D"ltr">Mac OS uses. The idea of USB=
 quirks comes from me, as Michael put up the <br></div><div dir=3D"ltr">fir=
st sketch of a libusb-based USB backend it did not work very well for <br><=
/div><div dir=3D"ltr">me and I vastly improved it, especially also investig=
ating how the usblp <br></div><div dir=3D"ltr">kernel module works and ther=
e was this USB quirk handling which I had <br></div><div dir=3D"ltr">overta=
ken into the backend. Michael has then improved it by putting the <br></div=
><div dir=3D"ltr">rules into an editable file.<br></div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr">&gt;&gt; For this we need support prioritization l=
evels, like "generic" (CMD: item<br></div><div dir=3D"ltr">&gt;&gt; match),=
 "third-party" (independent driver, like Gutenprint matches the model),<br>=
</div><div dir=3D"ltr">&gt;&gt; "manufacturer" (manufacturer driver matches=
 the model).<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"ltr">&gt;=
 "generic" is going to be so much so that I fear it will be effectively<br>=
</div><div dir=3D"ltr">&gt; useless for autoconfiguration.<br></div><div di=
r=3D"ltr">&gt; <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I agre=
e.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&gt; Take Epson pri=
nters -- Nearly every model produced in over 25 years<br></div><div dir=3D"=
ltr">&gt; claims to support ESCP2, but there's very little beyond "print ba=
sic<br></div><div dir=3D"ltr">&gt; ASCII text" that one can ultimately rely=
 on.&nbsp; You need a more specific<br></div><div dir=3D"ltr">&gt; model fa=
mily (dot matrix, mono-only inkjet, X color inkjet, etc) on top<br></div><d=
iv dir=3D"ltr">&gt; of that in order to be remotely useful for raster print=
ing.<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"ltr"><br></div><d=
iv dir=3D"ltr">In the PostScript Printer Application this works better. A g=
eneric <br></div><div dir=3D"ltr">PostScript PPD file works with practicall=
y all PostScript printers, it <br></div><div dir=3D"ltr">only misses suppor=
t of many printer features, like more than 2 or 3 <br></div><div dir=3D"ltr=
">trays, exotic paper sizes, finishers, ...<br></div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">&gt; In other words, an application shouldn't claim "=
support" for a printer<br></div><div dir=3D"ltr">&gt; unless there's an exp=
licit, positive match; everything else will require<br></div><div dir=3D"lt=
r">&gt; some sort of user/admin intervention/configuration.<br></div><div d=
ir=3D"ltr">&gt; <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">In th=
e PostScript Printer Application this would mean printers for which <br></d=
iv><div dir=3D"ltr">there is a corresponding PPD file for exactly this mode=
l.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&gt; I'm beginning =
to come around to the notion that we shouldn't even bother<br></div><div di=
r=3D"ltr">&gt; to create an automagic "figure out which printer application=
 supports<br></div><div dir=3D"ltr">&gt; the printer just plugged in" mecha=
nism, because it's going to take a<br></div><div dir=3D"ltr">&gt; _lot_ of =
work, it's nearly entirely an exercise in working around legacy<br></div><d=
iv dir=3D"ltr">&gt; baggage, and as Michael put it, we're not likely to eve=
r see more than<br></div><div dir=3D"ltr">&gt; half a dozen printer applica=
tions anyway, and all of those will be<br></div><div dir=3D"ltr">&gt; focus=
ed around legacy models.<br></div><div dir=3D"ltr">&gt; <br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">Only for the users not being completely=
 lost with a legacy printer, <br></div><div dir=3D"ltr">should we have at l=
east some simple tool which detects printers and <br></div><div dir=3D"ltr"=
>lists them and checks installed Printer Applications whether they <br></di=
v><div dir=3D"ltr">support it, with an "Add" button for auto-adding it, and=
 also a button <br></div><div dir=3D"ltr">for the printer entry which does =
searches like "Acme LaserStar 1000+" <br></div><div dir=3D"ltr">and "Acme P=
rinter" on the Snap Store? (As long as we have no <br></div><div dir=3D"ltr=
">hardware-signature-based search, Printer Applications supporting a few <b=
r></div><div dir=3D"ltr">models could list them in their store listing's de=
scription, and a <br></div><div dir=3D"ltr">manufacturer's Printer Applicat=
ion always contains the manufacturer's <br></div><div dir=3D"ltr">name and =
"printer" somewhere in its title and/or description).<br></div><div dir=3D"=
ltr"><br></div><div dir=3D"ltr">If we have the DNS-SD service lister which =
I mentioned in other postings <br></div><div dir=3D"ltr">on Printer Applica=
tions there could be besides the web interface and IPP <br></div><div dir=
=3D"ltr">System Service buttons also an auto-add button.<br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">&gt; I don't see any printer makers bot=
hering to create<br></div><div dir=3D"ltr">&gt; downloadable/runnable-on-en=
d-user-systems printer applications for their<br></div><div dir=3D"ltr">&gt=
; art/speciality models (and definitely not for their legacy models) --<br>=
</div><div dir=3D"ltr">&gt; instead they'll sell a little "print server" th=
at can be bolted onto the<br></div><div dir=3D"ltr">&gt; printer to achieve=
 that functionality.<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"l=
tr">&gt; ...and that "print server" will be running legacy CUPS (and hopefu=
lly,<br></div><div dir=3D"ltr">&gt; eventually, PAPPL) along with out-of-ba=
nd scripts that detect the<br></div><div dir=3D"ltr">&gt; attached printers=
 at startup time and create/export "queues" in a<br></div><div dir=3D"ltr">=
&gt; non-dynamic manner.<br></div><div dir=3D"ltr"><br></div><div dir=3D"lt=
r">OK, let's see.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">&nbs=
p; &nbsp; Till<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr">------------------------------<br></div><div dir=3D"ltr=
"><br></div><div dir=3D"ltr">Message: 3<br></div><div dir=3D"ltr">Date: Fri=
, 26 Feb 2021 10:17:25 +0100<br></div><div dir=3D"ltr">From: Johannes Meixn=
er &lt;<a href=3D"mailto:jsmeix@suse.de" rel=3D"nofollow" target=3D"_blank"=
>jsmeix@suse.de</a>&gt;<br></div><div dir=3D"ltr">To: <a href=3D"mailto:pri=
nting-architecture@lists.linux-foundation.org" rel=3D"nofollow" target=3D"_=
blank">printing-architecture@lists.linux-foundation.org</a><br></div><div d=
ir=3D"ltr">Subject: Re: [Printing-architecture] Automatic printer setup wit=
h<br></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; Printer Applications<br></di=
v><div dir=3D"ltr">Message-ID: &lt;<a href=3D"mailto:226dd237ebac1b695eec29=
1314ae22e3@suse.de" rel=3D"nofollow" target=3D"_blank">226dd237ebac1b695eec=
291314ae22e3@suse.de</a>&gt;<br></div><div dir=3D"ltr">Content-Type: text/p=
lain; charset=3DUS-ASCII; format=3Dflowed<br></div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr"><br></div><div dir=3D"ltr">Hello,<br></div><div dir=3D"=
ltr"><br></div><div dir=3D"ltr">On 2021-02-24 18:23, Till Kamppeter wrote:<=
br></div><div dir=3D"ltr">&gt; On 24/02/2021 15:01, Johannes Meixner wrote:=
<br></div><div dir=3D"ltr">&gt;&gt; <br></div><div dir=3D"ltr">&gt;&gt; I t=
ook me some longer time of experience what works<br></div><div dir=3D"ltr">=
&gt;&gt; reasonably well in practice out there in real world<br></div><div =
dir=3D"ltr">&gt;&gt; how to auto-match based on the manufacturer &amp; mode=
l<br></div><div dir=3D"ltr">&gt;&gt; strings which is the only data that is=
 always there.<br></div><div dir=3D"ltr">&gt; <br></div><div dir=3D"ltr">&g=
t; I go a similar way, matching by make and model<br></div><div dir=3D"ltr"=
>...<br></div><div dir=3D"ltr">&gt; What I do is taking the observed make a=
nd model,<br></div><div dir=3D"ltr">&gt; normalizing it to some form<br></d=
iv><div dir=3D"ltr">...<br></div><div dir=3D"ltr">&gt; The names in the lis=
t of supported models<br></div><div dir=3D"ltr">&gt; I normalize the same w=
ay.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I did same i.e.<br=
></div><div dir=3D"ltr">normalizing make and model what the system reports =
and<br></div><div dir=3D"ltr">normalizing make and model in the PPDs in the=
 same way,<br></div><div dir=3D"ltr">then some "fuzzy match" to get a list =
of PPDs<br></div><div dir=3D"ltr">that "somehow match" the reported make an=
d model<br></div><div dir=3D"ltr">with some "special sorting" to put the "s=
omehow best match"<br></div><div dir=3D"ltr">on top of that list and<br></d=
iv><div dir=3D"ltr">finally show that list to the user so he can select one=
.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">In automated setup c=
ase the topmost entry of that list<br></div><div dir=3D"ltr">is used.<br></=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I vaguely described that in=
<br></div><div dir=3D"ltr"><a href=3D"https://en.opensuse.org/YaST_Printer#=
Driver" rel=3D"nofollow" target=3D"_blank">https://en.opensuse.org/YaST_Pri=
nter#Driver</a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">By the=
 way 1:<br></div><div dir=3D"ltr">For my general point of view about<br></d=
iv><div dir=3D"ltr">"Automated Printer Configuration" see<br></div><div dir=
=3D"ltr"><a href=3D"https://en.opensuse.org/YaST_Printer#Automated_Printer_=
Configuration" rel=3D"nofollow" target=3D"_blank">https://en.opensuse.org/Y=
aST_Printer#Automated_Printer_Configuration</a><br></div><div dir=3D"ltr">v=
ersus the subsequent section<br></div><div dir=3D"ltr">"Manual Printer Conf=
iguration with the YaST Printer Module"<br></div><div dir=3D"ltr">therein.<=
br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">By the way 2:<br></div=
><div dir=3D"ltr">In practice the current "YaST Printer Module" is dead cod=
e, cf.<br></div><div dir=3D"ltr"><a href=3D"https://bugzilla.suse.com/show_=
bug.cgi?id=3D1175341#c1" rel=3D"nofollow" target=3D"_blank">https://bugzill=
a.suse.com/show_bug.cgi?id=3D1175341#c1</a><br></div><div dir=3D"ltr">I wis=
hed those who make the decisions would finally let it RIP.<br></div><div di=
r=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Kind Regard=
s<br></div><div dir=3D"ltr">Johannes Meixner<br></div><div dir=3D"ltr">-- <=
br></div><div dir=3D"ltr">SUSE Software Solutions Germany GmbH<br></div><di=
v dir=3D"ltr">Maxfeldstr. 5 - 90409 Nuernberg - Germany<br></div><div dir=
=3D"ltr">(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer<br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">------------=
------------------<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Mes=
sage: 4<br></div><div dir=3D"ltr">Date: Fri, 26 Feb 2021 11:03:34 +0100<br>=
</div><div dir=3D"ltr">From: Johannes Meixner &lt;<a href=3D"mailto:jsmeix@=
suse.de" rel=3D"nofollow" target=3D"_blank">jsmeix@suse.de</a>&gt;<br></div=
><div dir=3D"ltr">To: <a href=3D"mailto:printing-architecture@lists.linux-f=
oundation.org" rel=3D"nofollow" target=3D"_blank">printing-architecture@lis=
ts.linux-foundation.org</a><br></div><div dir=3D"ltr">Subject: Re: [Printin=
g-architecture] Automatic printer setup with<br></div><div dir=3D"ltr">&nbs=
p;&nbsp;&nbsp; Printer Applications<br></div><div dir=3D"ltr">Message-ID: &=
lt;<a href=3D"mailto:821b4df56f518b8d2cc38ce846e8cc48@suse.de" rel=3D"nofol=
low" target=3D"_blank">821b4df56f518b8d2cc38ce846e8cc48@suse.de</a>&gt;<br>=
</div><div dir=3D"ltr">Content-Type: text/plain; charset=3DUS-ASCII; format=
=3Dflowed<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><d=
iv dir=3D"ltr">Hello<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">O=
n 2021-02-25 15:54, Solomon Peachy wrote (excerpts):<br></div><div dir=3D"l=
tr">&gt; <br></div><div dir=3D"ltr">&gt; And much like we've seen multiple =
distinct models with<br></div><div dir=3D"ltr">&gt; identical USB VID/PIDs,=
 I've also seen distinct models<br></div><div dir=3D"ltr">&gt; that share i=
dentical IEEE1284 IDs. [2]<br></div><div dir=3D"ltr">&gt; And then there's =
the iManufacturer/iModel/iSerial strings<br></div><div dir=3D"ltr">&gt; tha=
t may or may not match what's in the 1284 data<br></div><div dir=3D"ltr">&g=
t; or what's silkscreened onto the printer itself..<br></div><div dir=3D"lt=
r">&gt; ...Like everything else involving printing, it's a complete mess.<b=
r></div><div dir=3D"ltr">...<br></div><div dir=3D"ltr">&gt; [2] They are in=
 the same family, but the PDL is barely incompatible..<br></div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">for some (older) examples that "similar lo=
oking model names"<br></div><div dir=3D"ltr">do not mean "same driver works=
" see the part about<br></div><div dir=3D"ltr">"It is crucial to have exact=
 model names!" in<br></div><div dir=3D"ltr"><a href=3D"https://en.opensuse.=
org/SDB:Purchasing_a_Printer_and_Compatibility" rel=3D"nofollow" target=3D"=
_blank">https://en.opensuse.org/SDB:Purchasing_a_Printer_and_Compatibility<=
/a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I do not agree tha=
t everything involving printing is a complete mess<br></div><div dir=3D"ltr=
">but I do fully agree that model-&gt;driver matching is a complete mess<br=
></div><div dir=3D"ltr">from which follows "automated printer setup is a co=
mplete mess"<br></div><div dir=3D"ltr">so my personal conclusion is:<br></d=
iv><div dir=3D"ltr"><br></div><div dir=3D"ltr">Stay away from automated pri=
nter setup<br></div><div dir=3D"ltr">(unless you like complete mess ;-)<br>=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I am looking forward to t=
he future where proper<br></div><div dir=3D"ltr">IPP (Everywhere) printer d=
evices provide all what is needed<br></div><div dir=3D"ltr">(including spoo=
ling and handling many clients simultaneously)<br></div><div dir=3D"ltr">so=
 neither printer drivers (and their setup)<br></div><div dir=3D"ltr">nor sp=
ooling services (and their setup)<br></div><div dir=3D"ltr">are needed any =
longer.<br></div><div dir=3D"ltr">Only clients that properly talk IPP direc=
tly to<br></div><div dir=3D"ltr">IPP printer devices that properly provide =
IPP.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div di=
r=3D"ltr">Kind Regards<br></div><div dir=3D"ltr">Johannes Meixner<br></div>=
<div dir=3D"ltr">-- <br></div><div dir=3D"ltr">SUSE Software Solutions Germ=
any GmbH<br></div><div dir=3D"ltr">Maxfeldstr. 5 - 90409 Nuernberg - German=
y<br></div><div dir=3D"ltr">(HRB 36809, AG Nuernberg) GF: Felix Imendoerffe=
r<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">------------------------------<br></div><div dir=3D"ltr"><br></div=
><div dir=3D"ltr">Subject: Digest Footer<br></div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">_______________________________________________<br></div=
><div dir=3D"ltr">Printing-architecture mailing list<br></div><div dir=3D"l=
tr"><a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" rel=
=3D"nofollow" target=3D"_blank">Printing-architecture@lists.linux-foundatio=
n.org</a><br></div><div dir=3D"ltr"><a href=3D"https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture" rel=3D"nofollow" target=3D"_b=
lank">https://lists.linuxfoundation.org/mailman/listinfo/printing-architect=
ure</a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr">------------------------------<br></div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">End of Printing-architecture Digest, Vol 206, Issue 1=
6<br></div><div dir=3D"ltr">***********************************************=
*******<br></div></div>
            </div>
        </div></body></html>
------=_Part_631560_766933891.1614345390179--

