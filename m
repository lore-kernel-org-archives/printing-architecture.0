Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1465959657; x=2329873257;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4zA//sLa6BXZonT6tHZgpaa9Z/F7Kc/wHkBiuutJjvQ=;
	b=Ap68xcibppUl5xLciNpmueEa24zz5nIzBmfS9/4vTk3z1mJhwpuXjrJ33Ppa66nZ
	vhx4EJDDxC9CZswvc53HMDuyT5XZ81K7pGm3eUgEoTP9m3pOhCwd3Gd4NfSatQaK
	Ujq3iugsLoGXhk6NvX7G2PFCBMPV78ot3SaExZMpoyenfptlnZAjns5cSNPhWpt0
	YyP/0wZKFN5SAAAKSNm5XFGMbNHnCTJaX/H6ibSo0StUbZO7zgzVUXLWba/eOI84
	DCE1BtHkX304UgrWGWQbKGr3XjB90idd31A1tgku3zRHoHjX+CfsiCGwNcj/UmAV
	DgjzncXcSnGyP/7XIqHFMA==;
Sender: msweet@apple.com
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-type: multipart/alternative;
	boundary="Apple-Mail=_35F58893-DC46-45D6-BFA1-FFF80B7F0C80"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <57608ADC.9080500@canonical.com>
Date: Tue, 14 Jun 2016 23:00:56 -0400
Message-id: <C0209F64-17A0-49A5-911B-AC84BAFEAABB@apple.com>
References: <57608ADC.9080500@canonical.com>
Subject: Re: [Printing-architecture] [cups] CUPS 2.2.x drops interface
 scripts - How to create filtered queues without PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS user discussion list." <cups@cups.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_35F58893-DC46-45D6-BFA1-FFF80B7F0C80
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Jun 14, 2016, at 6:53 PM, Till Kamppeter =
<till.kamppeter@canonical.com> wrote:
>=20
> Hi,
>=20
> I have seen now the new features list of the first beta of the CUPS =
2.2.x series and one of the changes is
>=20
> 	- Interface scripts are no longer supported for security reasons
> 	  (<rdar://problem/23135640>)

Here is the original text from this (internal) bug report:

When a user adds a printer through the Web interface, it's possible to =
select a predefined model or to upload its own PPD (PostScript Printer =
Description) file, which is a file format created by vendors to describe =
the entire set of features and capabilities available for their =
printers. These files contain the PostScript code (commands) used to =
invoke features for the print job and hence, they have a preformated =
structure and known keywords.

CUPS doesn't check if the uploaded file is a valid PPD file, and =
therefore, it simply copies the file into the /etc/cups/interaces/ =
folder with 755 permissions (World executable).

As it could be seen, it was possible to upload a PDF, a txt and even an =
ELF executable into that directory through the Web interface. See =
attachment.

> System V interface scripts give a possibility to create filtered print =
queues without PPD.
>=20
> I make use of this in cups-filters. If cups-browsed discovers an IPP =
network printer (with "CreateIPPPrinterQueues Yes" in cups-browsed.conf) =
and is not able to gather enough info via IPP for making a PPD for this =
printer, it creates a queue with interface script, the script calling =
the filter sys5ippprinter which in turn calls all filters to convert the =
input format (PDF, JPEG, or PWG Raster) into the printer's native format =
(PWG Raster, PDF, PostScript, PCL-XL, or PCL 5c/e).
>=20
> By the way, PPD files are also on the way to get deprecated.

Yeah, and have been since CUPS 1.4 (7 years ago...)  Even the current =
IPP Everywhere local printer support in CUPS still uses PPDs internally =
- we want to move off PPDs, but doing so will require a concerted effort =
and proper printer support (almost there...)

> Now I have some questions about what to do:
>=20
> - How will I do non-raw (filtered) queues without PPD files?

You don't, and can't.  There is no way to safely support interface =
scripts, and they don't work like regular print queues anyways (on OS X =
they won't even show up in the Print dialog because there is no PPD), so =
interface scripts are gone for good.

What you *can* do in 2.2 (and before) is use a PPD file to point to an =
interface script (which acts as the printer/PPD filter) that was =
previously installed locally by the root user and has the correct =
permissions (owned by root, no world or group write permissions) for us =
to minimally trust the script.  That has the happy side effect of =
exposing common options for media, etc. to regular applications that =
otherwise would be unable to use the queue...

(I fully realize we are passing the security bug to the OS guys, but it =
seems safer than allowing arbitrary code to be uploaded through cupsd as =
an interface script that we run directly...)

> - Or should cups-browsed always generate PPD files, using certain
>  default values for capability info which it is not able to obtain
>  from the printer?

This would also work.

> - What were the security reasons leading to remove the interface =
script
>  support from CUPS? It seems that this got only discussed internally
>  at Apple.

See above.

> - And if there are neither interface scripts nor PPD files (probably
>  this requires all printers being IPP Everywhere), how will CUPS
>  determine which filters to run?

That isn't something that is being considered in CUPS for at least a few =
years yet...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Apple-Mail=_35F58893-DC46-45D6-BFA1-FFF80B7F0C80
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D"">Till,<div =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">On Jun =
14, 2016, at 6:53 PM, Till Kamppeter &lt;<a =
href=3D"mailto:till.kamppeter@canonical.com" =
class=3D"">till.kamppeter@canonical.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">Hi,<br class=3D""><br class=3D"">I have seen now the new =
features list of the first beta of the CUPS 2.2.x series and one of the =
changes is<br class=3D""><br class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>- Interface scripts are no longer =
supported for security reasons<br class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>&nbsp; =
(&lt;<a href=3D"rdar://problem/23135640" =
class=3D"">rdar://problem/23135640</a>&gt;)<br =
class=3D""></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">Here is the original text from this (internal) bug =
report:</div><div class=3D""><br class=3D""></div></div><blockquote =
style=3D"margin: 0 0 0 40px; border: none; padding: 0px;" class=3D""><div =
class=3D"">When a user adds a printer through the Web interface, it's =
possible to select a predefined model or to upload its own&nbsp;PPD =
(PostScript Printer Description) file, which is a file format created by =
vendors to describe the entire set of&nbsp;features and capabilities =
available for their printers. These files contain the PostScript code =
(commands) used to&nbsp;invoke features for the print job and hence, =
they have a preformated structure and known keywords.</div><div =
class=3D""><br class=3D""></div><div class=3D"">CUPS doesn't check if =
the uploaded file is a valid PPD file, and therefore, it simply copies =
the file into the&nbsp;/etc/cups/interaces/ folder with 755 permissions =
(World executable).</div><div class=3D""><br class=3D""></div><div =
class=3D"">As it could be seen, it was possible to upload a PDF, a txt =
and even an ELF executable into that directory through the&nbsp;Web =
interface. See attachment.</div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D""><blockquote type=3D"cite" =
class=3D"">System V interface scripts give a possibility to create =
filtered print queues without PPD.<br class=3D""><br class=3D"">I make =
use of this in cups-filters. If cups-browsed discovers an IPP network =
printer (with "CreateIPPPrinterQueues&nbsp;Yes" in cups-browsed.conf) =
and is not able to gather enough info via IPP for making a PPD for this =
printer, it&nbsp;creates a queue with interface script, the script =
calling the filter sys5ippprinter which in turn calls all =
filters&nbsp;to convert the input format (PDF, JPEG, or PWG Raster) into =
the printer's native format (PWG Raster, PDF, PostScript,&nbsp;PCL-XL, =
or PCL 5c/e).<br class=3D""><br class=3D"">By the way, PPD files are =
also on the way to get deprecated.<br class=3D""></blockquote><div =
class=3D""><br class=3D""></div>Yeah, and have been since CUPS 1.4 (7 =
years ago...) &nbsp;Even the current IPP Everywhere local printer =
support in CUPS still uses PPDs internally - we want to move off PPDs, =
but doing so will require a concerted effort and proper printer support =
(almost there...)</div><div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D"">Now I have some questions about what to do:<br =
class=3D""><br class=3D"">- How will I do non-raw (filtered) queues =
without PPD files?<br class=3D""></blockquote><div class=3D""><br =
class=3D""></div>You don't, and can't. &nbsp;There is no way to safely =
support interface scripts, and they don't work like regular print queues =
anyways (on OS X they won't even show up in the Print dialog because =
there is no PPD), so interface scripts are gone for good.</div><div =
class=3D""><br class=3D""></div><div class=3D"">What you *can* do in 2.2 =
(and before) is use a PPD file to point to an interface script (which =
acts as the printer/PPD filter) that was previously installed locally by =
the root user and has the correct permissions (owned by root, no world =
or group write permissions) for us to minimally trust the script. =
&nbsp;That has the happy side effect of exposing common options for =
media, etc. to regular applications that otherwise would be unable to =
use the queue...</div><div class=3D""><br class=3D""></div><div =
class=3D"">(I fully realize we are passing the security bug to the OS =
guys, but it seems safer than allowing arbitrary code to be uploaded =
through cupsd as an interface script that we run directly...)</div><div =
class=3D""><br class=3D""></div><div class=3D""><blockquote type=3D"cite" =
class=3D"">- Or should cups-browsed always generate PPD files, using =
certain<br class=3D"">&nbsp;default values for capability info which it =
is not able to obtain<br class=3D"">&nbsp;from the printer?<br =
class=3D""></blockquote><div class=3D""><br class=3D""></div>This would =
also work.</div><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">- What were the security reasons leading to remove the =
interface script<br class=3D"">&nbsp;support from CUPS? It seems that =
this got only discussed internally<br class=3D"">&nbsp;at Apple.<br =
class=3D""></blockquote><div class=3D""><br class=3D""></div>See =
above.</div><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">- And if there are neither interface scripts nor PPD files =
(probably<br class=3D"">&nbsp;this requires all printers being IPP =
Everywhere), how will CUPS<br class=3D"">&nbsp;determine which filters =
to run?<br class=3D""></blockquote><div class=3D""><br =
class=3D""></div>That isn't something that is being considered in CUPS =
for at least a few years yet...</div><div class=3D""><br =
class=3D""></div><div class=3D""><div =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing System Engineer<br =
class=3D""></div><br class=3D""></div></body></html>=

--Apple-Mail=_35F58893-DC46-45D6-BFA1-FFF80B7F0C80--
