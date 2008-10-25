Message-ID: <4903A002.2000101@gmail.com>
Date: Sun, 26 Oct 2008 00:38:58 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>
	<49035AC2.5000000@fakenhamweb.co.uk>
In-Reply-To: <49035AC2.5000000@fakenhamweb.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
To: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
Cc: Robert Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Alastair M. Robinson wrote:
> Hi :)
> 
> Robert Krawitz wrote:
> 
>> When you get right down to it, Gutenprint at its core really is a
>> hardware driver (or a package of hardware drivers).  It's not an
>> application the way GIMP is -- it's a piece of infrastructure.
> 
> True - however it doesn't have the luxury enjoyed by other pieces of 
> infrastructure of being isolated from end-users.  If I go to 
> localhost:631, click on my printer and hit Set Printer Options, I see a 
> user-interface.  CUPS *presents* this user-interface, but which controls 
> I see and how they're grouped is determined by Gutenprint.  It may not 
> be an application, but there are user-facing aspects.
> 
> Incidentally, Peter, if an option exists in the PPD but isn't tagged, 
> what happens?  Will it appear in the Common Printing Dialog?
> And what happens if an APPrinterPreset specifies a value for an untagged 
> option?  Will it still be set?
>

See my specs of the PPD extensions for the Common Printing Dialog:

http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions

Untagged PPDs will use the PPD groups as tags as a fallback. So options 
will be shown in a reasonable order, But the advantage of one option 
baing able to have more than one tag is not made use of with this fallback.

Each APPrinterPreset will create a quick preset button in the left 
column of the dialog. And the button will always set all options which 
it is supposed to set, independent of tags and groups.

> I'm just wondering whether we can tag options which "fit" with the 
> Common Printing Dialog, and leave the others in the PPD but untagged?
> 

If we leave options untagged or if we have too many tags, all these 
options will fall under the last tag. So if we have many of them, the 
last tag will get very crowded. This is more intended as a legacy 
fallback, for example for manufacturer-supplied PPDs.

    Till
