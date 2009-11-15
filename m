Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
Date: Sun, 15 Nov 2009 15:12:18 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <15E38B61-2C0A-4DEB-BB59-DC6459CE11E1@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF96B6A.7030307@gmail.com>
	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>
	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
	<2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>
	<4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>
	<3D6E9452-F2A5-4F43-AFD6-4CDF0655BE2A@colorremedies.com>
	<A388F76E-FFCF-49A4-94CB-A3DC103838DA@apple.com>
	<1753203E-E616-401D-81B5-359D706D245B@colorremedies.com>
	<259EDC2F-D90C-4A5E-802F-F4C97AB4A08D@apple.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
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
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, openicc <openicc@lists.freedesktop.org>

I agree with Michael on all points.

The existing user experience is broken. A different user experience =
should be employed. But I think we need to be very conscientious about =
both the next user experience and developer experience, if things are =
going to be changed yet again. A huge, huge, huge problem on OS X is =
that things keep changing. Such change + very limited documentation has =
been a huge pain point for developers, and is a contributing factor to =
their inconsistency.

And I agree with Michael, in particular, on his first two paragraphs. =
Duplicative selection of media/color mode/resolution, then having to do =
this yet again with the profile selection, makes errors possible where =
otherwise there would be none (at least not UI induced). For some time =
it has been possible to include such device condition information into =
the profile as metadata, so there should be room for an application to =
specify a printer profile, and for the system to figure out what the =
driver settings should be to replicate the print condition needed for =
that profile to be valid.

Two things that emphasize a continuing need for application prematching =
capability:

a.) Black point compensation in ColorSync has functioned incorrectly =
since it was implemented. In an ICC v2 context, BPC is required. =
Perceptual rendering is inadequate. So is it working on 10.6? I don't =
know.

b.) Only the Apple CMM is supported in the print architecture. It's not =
possible for an application to ask for another CMM be used by =
CoreGraphics for printing purposes. This means application prematching =
is a required workflow.



Chris Murphy

On Nov 15, 2009, at 12:08 AM, Michael Sweet wrote:

> On Nov 14, 2009, at 5:15 PM, Roy Harrington wrote:
>>> I humbly suggest that what you want is a utility that allows the =
user to print targets and generate/install ICC profiles for a > > =
particular combination of printer, media, and other settings. If you =
have to select a profile at print time, then the printing > > workflow =
is broken.
>>>=20
>>> ___________________________________________________
>>> Michael Sweet, Senior Printing System Engineer
>>=20
>> While a separate utility might be a useful thing, I think you are
>> missing the point of view of the higher
>> end people printing.  Most have Photoshop and print from Photoshop.
>> Most use various different papers,
>> not just printer manufacturer supplied papers.
>=20
> I think you are missing my point - if you are profiling for your own =
media and ink, then those profiles and corresponding media settings =
should be savable so that the *only* thing you do in the print dialog is =
choose that custom media/ink combination and *not* choose the media, =
ink, and profile separately.  Why complicate the user interface with =
profile controls that are only useful when you have created a custom =
profile, something that will require a separate program and UI in order =
to print the target, read it, and generate the profile in the first =
place?!?
>=20
> In short, why make the user select everything every time and clutter =
the UI with unnecessary information?
>=20
>>  So if you want to use
>> various papers and the Epson
>> driver you need to download ICC profiles from somewhere or create =
your
>> own custom ones.
>> When you print you've got to be able to select which profile will be
>> used -- during the printing process.
>> =46rom a user point of view the natural thing is to do this in =
Photoshop
>> -- its right there in the Print Preview
>> screen.  If you are doing soft-proofing you must do it in Photoshop.
>> Creating custom ICC profiles
>> is the other major difficulty -- this used to work just perfectly.
>> Why break the existing workflows?
>=20
> Why not when they are already broken?
>=20
>> The OS centric point of view that the OS will handle it means you =
have
>> to go into ColorSync Utility
>> and try to find out how to associate a custom ICC profile with a
>> device.   There's no straightforward
>> way to do this.
>=20
> I'm not arguing that Linux duplicate Apple's current ColorSync user =
experience - that much is clearly broken since users and vendors =
regularly have so many problems.
>=20
> I'm similarly not advocating a continuation of the current =
"application color management" experience because that is similarly =
broken for anyone but a professional, and even then individual driver =
and application issues make it problematic.
>=20
> Instead, I'm suggesting that a different user experience be employed: =
when printing, the user sees no color controls. Color profiles are =
auto-selected based on the print settings - users can install new =
profiles, media types, and ink sets separately as needed. These profiles =
can be "canned" profiles the user downloads from somewhere or custom =
profiles the user creates using profiling software.
>=20
> Applications that need to do their own color management (hopefully few =
and far between) can specify so using an API, which disables color =
management and profile selection so that the color data the application =
provides is treated as device color all the way through to the printer.
>=20
>> ...
>> I've asked quite explicitly via ADC what is the protocol to print =
with No Color
>> Management and Application Color Management but haven't gotten =
answers.
>> I was able to crawl through header files and find the =
AP_ColorMatchingMode
>> flag but there is no documentation.
>=20
> Whom did you talk to at ADC?
>=20
>> ...
>> I've used the bug report system.  See bug 6503221 that I submitted in =
Jan 2009.
>> After quite a few emails back and forth, all seemed to agree that =
there was a
>> problem.  "Apple and Adobe are working on it" is all since then.  It =
just
>> sits as an open issue.
>=20
> Keep in mind that when there is a problem that requires coordination =
between multiple vendors, a solution inevitably takes longer.
>=20
>> Simple question:  As an "Apple Senior Printing System Engineer" can =
you find out
>> how the No Color Management should work?
>=20
> Within Mac OS X, the only way to disable color management is to =
associate the device profile with the colors you draw with - this =
doesn't actually disable color management but *does* short-circuit it.
>=20
> However, that is only 1/2 of the equation - you also need to tell the =
driver to go into "application color matching mode", and pray that the =
driver actually implements it properly.  This is the =
kPMColorMatchingModeKey (AP_ColorMatchingMode) setting, which is =
described in the PMPrintSettingsKeys.h header along with the supported =
values: kPMVendorColorMatching or kPMApplicationColorMatching. If not =
set, ColorSync is used.
>=20
>> Thanks,
>> Roy Harrington
>>=20
>> ps:  I do a third party print driver for Epson printers and various
>> ICC profiling for this.
>> I'm familiar with the printing system from the driver point of view =
as
>> well as from
>> application point of view.
>=20
>=20
> Prior to joining Apple, I wrote and sold commercial printer drivers =
and RIPs for 13 years, and did printer software for 6 years before that =
"just for fun".  My company was a member of the ICC...
>=20
> ___________________________________________________
> Michael Sweet, Senior Printing System Engineer
>=20
>=20
>=20

