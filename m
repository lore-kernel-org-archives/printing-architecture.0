From: "Hal V. Engel" <hvengel@astound.net>
Date: Tue, 2 Jun 2009 11:41:12 -0700
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4A25348F.20300@gmail.com>
In-Reply-To: <4A25348F.20300@gmail.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200906021141.13029.hvengel@astound.net>
Subject: Re: [Printing-architecture] Last OP Meeting - Mon/Tue - 1/2 June
	2009 - The Recording
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On Tuesday 02 June 2009 07:17:51 am Till Kamppeter wrote:
> Hi,
>
> I have uploaded the recording of the last OpenPrinting meeting to the
> OpenPrinting server:
>
> http://www.openprinting.org/download/meetingnotes/op-telecons/OP-Meeting-20
>090601.mp3
>
> In general, recorded meetings I will upload to
>
> http://www.openprinting.org/download/meetingnotes/
>
>     Till
>
> P. S.: The MP3 is 18 MB long, 53 minutes of talking.

ICC profile location/directory structure was talked about at the meeting. 

OpenICC recommends basing the location of ICC profiles on the XDG Base 
Directory Specification.   This is what is currently implemented in Oyranos.  

The current OpenICC specification for this can be found here: 

http://www.oyranos.org/wiki/index.php?title=OpenIccDirectoryProposal

also see:

http://bugs.freestandards.org/show_bug.cgi?id=77

This specification was initially promulgated in 2005 and has been through a 
number of revisions since then and is subject to additional changes going 
forward.   It should be possible to extend this to include printer specific 
requirements if this is needed.  For example one system wide location from 
this specification is

/usr/share/color

and all profiles there must be located in

/usr/share/color/icc

But the specification allows for things like:

/usr/share/color/icc/printer

and it is possible to do something like:

/usr/share/color/icc/printer/Epson

For printer profiles for Epson printers.  

or

/usr/share/color/icc/printer/Epson/R2400

or

/usr/share/color/icc/printer/GutenPrint-5.2/Epson_R2400

or even

/usr/share/color/icc/printer/GutenPrint-5.2/Epson/R2400

But presently no one is using anything beyond:

/usr/share/color/icc

That is everyone is currently using a fairly flat directory structure since 
most systems have a very limited number of profiles (at most a few dozen) and 
there does not appear to be any reason to go farther.  However on a system 
that is used as a print server with a large number of connected printers with 
dozens or hundreds of printer profiles an extended directory structure may 
make sense.  The specification allows for this but does not require it nor 
does it contain any details for what this extended directory structure would 
look like beyond the base <prefix>/share/color/icc/printer directory.

It might make sense to look at this in connection with the GSoC OpenICC 
Oyranos printer project.  This is also probably something that should be 
settled before CM is added to the pdf2raster CUPS filter so that CUPS can be 
updated to handle this correctly.

Hal


