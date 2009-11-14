Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: text/plain; charset=utf-8
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <A388F76E-FFCF-49A4-94CB-A3DC103838DA@apple.com>
Date: Sat, 14 Nov 2009 05:10:21 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <1753203E-E616-401D-81B5-359D706D245B@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
	<4AF96B6A.7030307@gmail.com>
	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>
	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
	<2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>
	<4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>
	<3D6E9452-F2A5-4F43-AFD6-4CDF0655BE2A@colorremedies.com>
	<A388F76E-FFCF-49A4-94CB-A3DC103838DA@apple.com>
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, openicc <openicc@lists.freedesktop.org>, Till Kamppeter <till.kamppeter@gmail.com>

On Nov 14, 2009, at 12:13 AM, Michael Sweet wrote:
> That's the kicker - most inkjet drivers use vendor color matching by =
default, and usually with vendor-specific "enhancements" that don't get =
turned off when you tell the driver to go into ColorSync mode.  We file =
bugs with the vendors all the time for this... :(

I understand, vendors regularly get things wrong.

> The API for setting up an identity transform isn't public but *is* =
available through developer technical support. Basically this hasn't =
been included in public documentation because even the "experts" writing =
profiling software have used the API incorrectly (for various reasons =
the API is semi-complicated), and we don't want to encourage the use of =
device color on Mac OS X except when it is actually needed (which is =
basically only when printing a target or doing application color =
management...)

a.) Sounds like it's too complicated.
b.) Sounds like it's too complicated for the documentation Apple is =
willing to provide.
c.) Vendors are still getting things wrong.


> ... and thus more likely to be used.  It is hard to turn off ColorSync =
on purpose - there are very few scenarios that actually require it.

Sure. Any scenario involving calibration, characterization, or =
application prematching, requires it. That would be a few scenarios. But =
they are rather mission critical scenarios for those who depend on it.

It doesn't seem like making ColorSync so hard to turn off has really =
achieved anything, but lots of problems over the past 5 or so years, for =
professionals who depend on printing, especially to inkjet printers.


> The problem is that DeviceRGB was being used for everything, not just =
for those cases that needed it, so it was basically impossible to know =
what the intent was and get consistent output from applications.

That was an opt in system of color management. The default was =
DeviceRGB. I am not proposing that model. I'm proposing simplifying the =
opt out mechanism, and making it robust. Right now it's the year 2009 =
and this is as bad and inconsistent as it has ever been.

> Epson (and all of the other printer vendors) work closely with Apple =
engineering, but there are still problems that slip through our combined =
testing.  The problem I described has come and gone for specific drivers =
many times, and often re-appears in new drivers the first time we get an =
update from them - we reject any that we catch, but as you can imagine =
we can't test every driver and printer so problems *do* slip through.

Well if Apple didn't operate like the KGB, as though everything is such =
a huge fricking secret, and clearly and thoroughly documented how things =
are supposed to work, it would at least make it easier to identify what =
is incorrect behavior, and whose bugs these are.=20

>=20
>> So, presently we're unable to reliably print profile targets from =
Photoshop, using No Color Management (in Photoshop) and Off (No Color =
Adjustement) in a wide assortment of newer Epson drivers. What happens =
is, I get a completely borked profile target in printed form. Inspection =
of the PDF spool file indicates source=E2=89=A0destination, and thus =
ColorSync is going to come riding in to convert the job.
>=20
> We are working with both Adobe and Epson on this issue...

Michael, yes, I have no doubt about that. The problem is that these =
sorts of color problems with printing are recurring themes. Epson is not =
the only one who has had problems, although they very well may be the =
worst offender. But we don't have these kinds of problems on Windows. =
That should be a WTF moment for Apple. Sane people have started to =
wonder, rationally, if there is something wrong with the architecture =
when there are so many recurring problems of this sort, through multiple =
major revisions of the operating system. We've experienced color related =
problems with Tioga drivers too.

> DeviceRGB (like what we went through in 10.4 and earlier) only led to =
more problems since all output was uncalibrated.

There is a very rational, workable medium between totally uncalibrated, =
which is not what I'm advocating, and forcing everything to be ICCBased. =
It is fundamentally inappropriate for =
calibration/characterization/prematch data to be ICCBased. That is a =
serious systemic problem, and a cause for many of the problems we've =
been having.

DeviceRGB + an OutputIntent is not the same thing as what you had with =
10.3 and earlier. It is not uncalibrated. And I'm not suggesting most =
applications would have such PDF spool files. Just the ones that =
explicitly call a particular "calibration API".

Presently, it is possible for PDF spool files to appear with an =
OutputIntent of None, which I find equally baffling to the lack of =
DeviceRGB. In my view the PDF spool file is formed exactly backwards. =
OutputIntent should be required, as it is in all PDF/X. That is the =
implicit source for device data, enabling the soft proofing of even =
application prematched data - or even retargeting to a different output =
device, if necessary.


Chris Murphy=
