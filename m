From: "Hal V. Engel" <hvengel@astound.net>
Date: Sun, 15 Nov 2009 12:26:49 -0800
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
In-Reply-To: <77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <200911151226.49297.hvengel@astound.net>
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
To: gimp-print-devel@lists.sourceforge.net
Cc: Roy Harrington <roy@harrington.com>, Michael Sweet <msweet@apple.com>, openicc <openicc@lists.freedesktop.org>, Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org

On Saturday 14 November 2009 09:08:17 pm Michael Sweet wrote:
> I'm not arguing that Linux duplicate Apple's current ColorSync user
>  experience - that much is clearly broken since users and vendors regularly
>  have so many problems.
> 
> I'm similarly not advocating a continuation of the current "application
>  color management" experience because that is similarly broken for anyone
>  but a professional, and even then individual driver and application issues
>  make it problematic.
> 
> Instead, I'm suggesting that a different user experience be employed: when
>  printing, the user sees no color controls. Color profiles are
>  auto-selected based on the print settings - users can install new
>  profiles, media types, and ink sets separately as needed. These profiles
>  can be "canned" profiles the user downloads from somewhere or custom
>  profiles the user creates using profiling software.
> 
> Applications that need to do their own color management (hopefully few and
>  far between) can specify so using an API, which disables color management
>  and profile selection so that the color data the application provides is
>  treated as device color all the way through to the printer.
> 

This is something that I can generally agree with.  One of the goals of the 
Oyranos project is to facilitate exactly this kind of user experience.  I also 
think this is what the CPD is intended to support in the long run.  The key 
points are:

1. A very simple printing UI that hides most things color related. 

2. In general all (non-target, non-prematched) CM is handled on the back end 
and color is managed using ICC profiles.

3. The driver vendors will specify (and supply if needed) the default profiles 
used by their device.

4. Users/admins have complete control over things like which profiles are 
installed and related settings so that the back end and how it selects and 
uses profiles can be configured by the user/admin.

5. Apps that need to do prematching or that are used to print targets will 
have a simple API available to disable back end CM for their print jobs.

Of course at present almost none of this is in place in the non-OS/X world 
(the following is FOSS specific).  

#1. The CPD with proper PPD files will do this right now but none of the 
existing PPD files are setup for this type of work flow.

#2. CUPS has the ability with proper *toraster filters to do #2.  But the 
needed open source *toraster filters still need work.

#3. This is in place on OS/X but the cupsICCProfile settings in the PPD files 
are not correct for other platforms and I am not sure if this is the best way 
to handle this requirement.

#4. At present is missing.  Trying to configure this by using/modifying the PPD 
files is at best clumsy and has lots of issues that have been touched on in 
other notes in this thread and in other threads.  The cupsICCProfile settings 
in the PPD file is simply not designed to meet this requirement. This could 
conceivably be handled by some type of interface between CUPS, Oyranos and 
user land but lots of work still needs to be done in all three areas.  Having 
a clear vision of what the pieces are and how they fit together will make it 
easier to get Oyranos, CUPS and user land tools (like Kolor Manager in KDE and 
the CPD) up to speed and should allow for creating any needed APIs in the 
various systems involved.  I think Oyranos already has most of the APIs needed 
to support user land and CUPS.  CUPS, of course, has no working interface to 
Oyranos in part because the Oyranos printer support is so new (GSoC 2009).

#5. This does not currently exist as far as I can tell either on the back end 
(IE. CUPS and friends) or in any of the existing apps that are CM aware.  On 
the other hand in the open source world there are only a handful of apps that 
are CM aware at all and only a subset of those know anything about ICC profiles 
in the printing work flow (IE. most color manage to the display only - GIMP is 
an example of a limited CM aware app).  I think if there were a simple to use 
well documented API for this that those apps that need it would be modified to 
use it fairly quickly.  Particularly since the developers of most of those 
apps are members of at least one of the email lists that are part of this 
thread.   But the issue is that there needs to be a way to do this either 
through specialized applications like PhotoPrint or by having a switch on the 
CPD if no apps with this ability are available.  That is I would consider 
having a CPD switch for this to be a transition issue that would be removed 
once we had applications available that could use the no-back end CM API call.

Hal
