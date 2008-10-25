Message-ID: <49035AC2.5000000@fakenhamweb.co.uk>
Date: Sat, 25 Oct 2008 18:43:30 +0100
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>
	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
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
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Hi :)

Robert Krawitz wrote:

> When you get right down to it, Gutenprint at its core really is a
> hardware driver (or a package of hardware drivers).  It's not an
> application the way GIMP is -- it's a piece of infrastructure.

True - however it doesn't have the luxury enjoyed by other pieces of 
infrastructure of being isolated from end-users.  If I go to 
localhost:631, click on my printer and hit Set Printer Options, I see a 
user-interface.  CUPS *presents* this user-interface, but which controls 
I see and how they're grouped is determined by Gutenprint.  It may not 
be an application, but there are user-facing aspects.

Incidentally, Peter, if an option exists in the PPD but isn't tagged, 
what happens?  Will it appear in the Common Printing Dialog?
And what happens if an APPrinterPreset specifies a value for an untagged 
option?  Will it still be set?

I'm just wondering whether we can tag options which "fit" with the 
Common Printing Dialog, and leave the others in the PPD but untagged?

> I don't mind if there are multiple applications or dialogs using
> Gutenprint.  However, I *do* mind if pressure for "one size fits all"
> results in advanced users not having controls they need.  At the same
> time, it is essential to me that users with basic needs have a simple
> print path.

I can't argue with any of that.

> One issue I do have is with the idea that modifying curves or presets
> should be thought of as an administrative role. Certainly it's
> something administrators might well do, to achieve common printing
> results across a user base, but ordinary users may also need to
> do things like this.

Well, my original phrase was "Administrators and domain experts", so 
yes, I agree that admin rights shouldn't be a neccessity for accessing 
these facilities - though it should probably be a requirement for 
actually applying changes which impact all users.  So ideally we need 
some way to store and transmit these settings on a per-user basis.


Also note that as far as I know all the software which allows 
finest-grained control of Gutenprint's options currently uses Gutenprint 
directly, and thus RIPs the page client-side. (As would our hypothetical 
calibration / linearization / tuning tool).

Robert, would the following state of affairs be acceptable in your view:

* Software which prints via the Common Printing Dialog has user-access 
to a limited subset of options, much as PPD-based software does now if 
the Simplified PPDs are used.  Additionally, if new presets, or 
modifications to existing presets (i.e. the PrintQuality / Media Type 
options) have been installed systemwide, they become available from the CPD.

* Presets can be adjusted/created and tested (via client-side ripping) 
by a regular user, but admin rights would be needed to install the 
modified data systemwide, before the updated preset would be usable from 
the CPD.

* Software which does client-side ripping (i.e. the Gutenprint GIMP 
plugin, PhotoPrint, etc.) continues to have access to the full raft of 
controls available to regular users.  Additionally, local presets 
created in the tuning tool can be used, without them having to be 
installed systemwide.

That much I think could be achieved relatively easily.  Somewhat harder 
would be making modified presets available for use within the CPD 
without needing admin rights to install them.  That, I think, would 
require a way of sending side-band information to CUPS/Gutenprint and 
having some way of storing it on the server on a per-user basis.  This 
is something that might be desirable anyway, mind you; the current 
situation with default printer settings in CUPS (a choice between 
needing root access to set them, or allowing users to change the 
defaults systemwide) isn't ideal.

All the best,
--
Alastair M. Robinson
