From: "Hal V. Engel" <hvengel@astound.net>
Date: Fri, 24 Oct 2008 11:34:04 -0700
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>
	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>
	<4901C12D.7010200@fakenhamweb.co.uk>
In-Reply-To: <4901C12D.7010200@fakenhamweb.co.uk>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200810241134.05394.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: gimp-print-devel@lists.sourceforge.net
Cc: printing-architecture@lists.linux-foundation.org

On Friday 24 October 2008 05:35:57 Alastair M. Robinson wrote:
> Hi,
>
> peter sikking wrote:
> > For anybody to be able to help you at all, you first need to
> > set a clear vision for what the purpose of gutenprint is in
> > the printing world of today.
>
> Part of what makes this difficult is that gutenprint is at the same time
> behind-the-scenes infrastructure, and also user-facing, since the
> structure of its options system is exposed indirectly through the PPDs.
>
>  > You will have to say good bye to
> >
> > some old goals.
>
> I think one thing we may have to revisit will be the assumption that
> gutenprint's options are mapped directly to options in the printing
> dialog.  The introduction of simplified PPDs was a step in this
> direction, but the difficulty we've had in figuring out how to handle
> calibration curves and so on makes me think it may be time to go further.
>
> With the recent push to make the Epson driver more data-driven, and
> pulling previously hard-coded data into XML files, I wonder whether we
> need to consider having an administration tool, completely separate from
> the PPD-based print chain, which can be used by administrators and
> "Domain Experts" (people who know how to handle colour-management and
> calibration, but don't care about code) to fine tune things like the
> low-level ink controls, and calibration curves, which are so hard to fit
> into a user-facing print dialog.
>
> Gutenprint's "Quality" and "Media Type" options between them set a large
> number of options to hard-coded defaults - I envisage this hypothetical
> administration tool being used to *change* these defaults, and save them
>   (along with calibration curves, and ideally ICC profiles too) as files
> which could then be shared with other users.  This would solve another
> difficulty that was brought up when we first started discussing
> calibration and linearization - being able to *distribute* and share
> settings.
>
> None of this detracts from the continued ability of software which uses
> Gutenprint directly, like the advanced print plugin, or PhotoPrint, from
> continuing to offer full control, but it could potentially make life
> much more pleasant for "one-click-print" users.
>
> All the best,
> --
> Alastair M. Robinson
 
In many respects I agree with Alastair.  GutenPrint really does need a 
separate administrative interface for these more advanced functions and this 
also needs to be tied to the basic end user UI so that admins can set things 
up so that these are presented to users in an easy to understand way.   I also 
believe that the same thing is true, perhaps to a lessor extent, for all 
printer drivers.  At this point I think the only drivers that have the 
potential to provide user control over calibration curves is GutenPrint but at 
some point in the not too distant future we will have printing work flows that 
implement ICC profiles that could/should be used by all drivers not just those 
from GutenPrint and current UI and admin interfaces do not provide any support 
for this.  OK someone is likely to point out the cupsICCProfile settings that 
are now available in the PPD files.  But these are NOT suitable for local use 
for a number of reasons.

The basic issue that is causing so much difficultly is the static supplied by 
the driver vendor nature of the PPD files vs. the local nature of ICC profiles 
and custom printer calibration.   PPD files were not designed for local 
customization but some way of creating local persistent customization is 
exactly what needs to happen to accommodate things like color management that 
are local in nature and that need to be customized for each installation.   

As an example it is desirable to have groups of settings that are associated 
with particular ICC profiles that are some how presented to users as a 
"preset" that can be selected in the end user UI.  PhotoPrint does this 
although I think the UI for this in PhotoPrint could be improved.  This is 
something that can not be done as part of the default PPD based configuration 
since much of this is installation specific and needs to be configured by the 
local admin or an advanced user to meet local requirements.  After all only 
the local admin/users know what papers are going to be used and what settings 
were used to create the profiles for those papers and so on.  With GutenPrint 
at some point this would also include things like custom linearization data.   
These presets should be presented to users in a way that makes it easy for 
them to understand what the preset means (IE. what specific printer this is 
for, what paper to load into the printer and what profile to use for 
proofing...).  I do not think this belongs in the PPD structure although it 
might be possible to use the PPD file to divide these driver features into 
those that are intended for end users and those that are supported in the 
administrative interface.  The thing to consider is that ICC profile support 
is implemented in the *toraster CUPS filters and it is not a feature of the 
print driver.

I also agree with Peter to some extent although I don't think supporting both 
advanced and basic end users is contradictory it is just more difficult.  The 
UI needs to be easy for less advanced end users and presenting too much 
complexity in the end user UI is contrary to this goal.  At the same time I 
think that with a correctly designed administrative interface it should be 
possible for local admins and/or advanced users to configure local settings 
that hide this complexity from less advanced users who don't need or want to 
understand the underlying complexity.  In other words this has the possibility 
to make things even simpler for end users if the local admin has the where 
with all to set things up correctly.   I would go so far as to say that it 
should be possible for the local admin to hide UI settings and features that 
would normally be exposed to users by default so that there was total control 
over what was presented to local users.   The problem is that we are trying to 
do everything in one UI when in reality we have what is end user functionality 
and administrative/advanced functionality and these need to some how be 
separated but still interrelated (IE. administrative changes can/should affect 
what is seen in the end user UI).   

Hal 
