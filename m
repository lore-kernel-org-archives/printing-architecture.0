From: "Hal V. Engel" <hvengel@astound.net>
Date: Wed, 22 Oct 2008 10:15:28 -0700
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>
	<200810201403.26403.hvengel@astound.net>
	<200810210026.m9L0Qnd5008431@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810210026.m9L0Qnd5008431@dsl092-065-009.bos1.dsl.speakeasy.net>
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Message-Id: <200810221015.29301.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc] Looking
	ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: gimp-print-devel@lists.sourceforge.net, printing-architecture@lists.linux-foundation.org

On Monday 20 October 2008 17:26:49 Robert Krawitz wrote:
>    From: "Hal V. Engel" <hvengel@astound.net>
>    Date: Mon, 20 Oct 2008 14:03:25 -0700
>
>    On Monday 20 October 2008 09:37:40 Michael R Sweet wrote:
>    > If we
>    > also want to profile the individual color channels and modify the
>    > RGB-to-DeviceN and CMYK-to-DeviceN mappings, I recommend having a
>    > printer command (using the same interface we add for status
>    > monitoring and head alignment) that prints the linearization target(=
s)
>    > instead, with enough parameters to satisfy Robert. :)
>
>    This would be ideal but would require some work by the driver supplier=
s.
>
> Right -- and that's what we (Gutenprint) need requirements for.

I wish I had more expertise in this specific area so that I could provide=20
those requirements at some level of detail.  I think for the most part that=
=20
the GutenPrint Epson drivers are now well positioned for this but I don't k=
now=20
that for sure.  I know that Graeme Gill started working on a set of utiliti=
es=20
to create linearization corrections but I think he got side tracked with ot=
her=20
work.  Graeme at one time worked for a RIP vendor and he is the open source=
=20
subject matter expert in this area.=20

>
> Actually, for printing linearization targets you really don't want any
> of the fancy options.  The elaborate options are more for unmanaged
> environments or for people who have funky inks or papers.  You'd use
> Raw or Density color correction mode, either with CMYK or DeviceN
> input (which is also confusingly enough called Raw, but in a different
> context).
>
> We currently have a test pattern generator that can do a lot of this
> stuff, but it could also be done through the CUPS interface.
>
>    > I'd then also suggest that we add support for user profiles and/or
>    > drivers, such that a user could "install" XML files that would be
>    > "merged" with the standard/base files included with Gutenprint to
>    > determine which drivers, media types, ink sets, etc. are available.
>
>    Clearly something like this is needed both to support the
>    calibration and profiling process and to expose this in the UI and
>    to allow admins to control printer setup for users.
>
> We do have STP_DATA_PATH.  It won't really let you merge data in quite
> this way; you'd have to copy the file from the system path into the
> user path.  Then there's the matter of getting the PPD files in sync
> with this (you might add new media types to the customized data file),
> and getting an arbitrary file through CUPS somehow.
>
>    > All that would be necessary after that would be an application
>    > that prints the targets, measures then, generates the profiles,
>
>    We already have much of this for the ICC profile part but we
>    currently do not have anything for handing the
>    calibration/linearization part.
>
> This seems to be one of the sticky areas.

Agreed but there is lots of other work to be done to get the printing work=
=20
flow to use ICC profiles.  Since this should be the highest priority CM=20
related printing project I think that we should not be too concerned about=
=20
calibration/linearization issues until that is in place.

>
>    > and
>    > installs them so they can be used by Gutenprint.  (Yes, I am aware
>    > that this is probably the most difficult part of the
>    > implementation...)
>
>    Yes It is probably the most involved part of this and I think it
>    will be some time before we can tackle the
>    calibration/linearization part of this.  I think the focus should
>    be on making the printing work flow and UI function correctly with
>    RGB and CMYK ICC profiles since we already have software to handle
>    the creation of these profiles and to implement
>    calibration/linearization and device-N support after basic ICC
>    profile support is in place.  I think it should be possible to have
>    this all working correctly with ICC profiles, at least with
>    development versions of the various software systems involved, with
>    in the next 6 to 12 months.
>
> That sounds like you're taking a longer-term view about Gutenprint and
> aren't looking for any short-term changes.  Is that correct?

=46rom a color management perspective that is correct.  I think the current=
=20
focus should be on getting the rest of the printing work flow so that it us=
es=20
ICC profiles in the *toraster filters (at least with PDF input files).  Thi=
s=20
would make basic CM ubiquitous and driver independent.   That would still=20
leave lots of related work for those that support the drivers.  For example=
,=20
as ICC profile support was being added to the printing work flow printer=20
vendors and driver authors would need to think about things like what defau=
lt=20
ICC profiles would ship with the drivers and issues related to this with PP=
D=20
files, for example incorrect paths for cupsICCProfile settings, would need =
to=20
be fixed.  =20

On the other hand there is no reason that work on instrument driven=20
calibration/linearization couldn't be going on in parallel since these are =
not=20
dependent on each other and in the end we do want both capabilities.  But I=
=20
think this is a lower priority.=20

Calibration/linearization would involve work at the driver/GutenPrint level=
=20
but it sounds to me like the work that was done on the Epson drivers to mak=
e=20
things data driven rather than hard coded has positioned those drivers to m=
ake=20
that work possible although there may be more things that need to be done. =
=20
It also sounds like this same work needs to be done with other GutenPrint=20
drivers like the Canon driver.  Perhaps getting all of the drivers into the=
=20
same state should be the current focus of GutenPrint with respect to color=
=20
management. =20

=46rom my point of view I want to avoid trying to take steps that are so bi=
g=20
that it causes significant resistance (IE. I don't want to overwhelm the te=
ams=20
working on the printing related stuff) and I would like to see this broken=
=20
down into a series of smaller easier to accomplish steps that each build on=
=20
the previous steps.=20

Hal

