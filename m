DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	bh=vZMj4VH1BVcn6jsO55+rKEDSssQJMTMUbCQDj4SGcGo=;
	b=ILjSlD3KIl9AsV6SvQDVwKpj2mksytrz78xfD9szG1VzMQ5WaA1FTB8etC8p7VsyevWNsfvpB/chEOvJPcDuf02jiVvrprP12/nKkQNS0r+WF7IgzewvnlREC95odRuE9nZJDqtn8BMOeyGPEtUc3F60AIV9criWsEiu/tRcj0U=
Message-ID: <478CA26D.406@gmail.com>
Date: Tue, 15 Jan 2008 12:09:17 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Posted OP SC Minutes - 14 Jan 2008
References: <e395be80801141602t100e2ac6u2a6a9d49de1385a5@mail.gmail.com>
	<20080115123254.E64B.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20080115123254.E64B.TORATANI.YASUMASA@canon.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Cc: printing-architecture@lists.freestandards.org, Printing-japan <printing-japan@lists.linux-foundation.org>

Thank you for the report. More inline.

TORATANI Yasumasa wrote:
> <Check Action Items>
> - ppd options conflicts of Common Printing Dialog
>     - Should check the current status and how this issue has been resolved.
>       (because this issue has already been done on the TLF-OP page)
> - IPA font issue on major applications
>     - Waiting results from IPA
> - OPVP rpc update
>     - Under testing.
> - New IPA(CJK) font announcement on the OPFC sourceforge page
>     - Should be done by the next f2f meeting
> 
> <Common Printing Dialog>
> - Comment from vendors
>     - How the common dialog shows the ppd options conflict to users?
>        (Not defined on the Peter's dialog)
>       The current common printing dialog design is fine, but because
>       the dialog has more complex features than the current GNOME
>       or KDE print dialog, showing the conflict to users easily might be
>       more difficult (If conflicts occur, message box are shown? Or
>       some conflicts mark are shown on the dialog?)

See the section "the gray zone" on

http://www.mmiworks.net/eng/publications/labels/openPrinting.html

for the common printing dialog. Conflicting choices will get grayed out 
and by clicking an icon near a grayed out choice one gets info with 
which setting this choice conflicts.

XPP and KDE Print mark conflicting settings in red.

>     - Need the new ppd keyword for grouping items
>        (Grouping keyword for each ppd options including vendor options)
> 

I have already made suggestions about how to tag the options in PPDs and 
in the Foomatic XML data and also about how to generate the quick 
settings on the left of the dialog via PPDs and Foomatic. See my 
suggestions which I e-mailed to OpenUsability people below.

> <LF OpenPrinting Meeting in Tokyo>
> - TLF-Japan suggested to have a TFL OpenPrinting f2f meeting Tokyo
>    in 11th of Mar. if we have some agenda.
>    - For instance, if the Common Printing Dialog Hacker's meeting in
>       Europe will be held before the Tokyo meeting, and if we can see
>       the prototype dialog working on PC, it can be a good agenda.

As Peter Sikking had no student in the time after the Montreal Printing 
Summit up to now, we have postpond the Hacker kick-off meeting to May. 
He will have a new student from February 1 on and this student will work 
on the spec. I will add PPD and Foomatic extensions as suggested below.

Peter also told that he will prepare something for me to show in Tokyo 
in  March.

As another agenda item I will demo automatic printer driver download 
from OpenPrinting with system-config-printer.

>    - All vendors should bring other meeting agenda at the next Japan meeting.
> 
> <pdftoraster and texttopdf>
> - Currently we do not have any development resources for these filters.
>    Under arranging, but will inform the result of it around Apr.
>

Should I perhaps ask the Linux Foundation for opening another internship 
so that a student can work on the missing CUPS filters? Who should be 
this student's supervisor then? OP Japan? Mike Sweet? Me?

    Till

--------------------------------------------------------------------

Very important is the draft specification, especially what PPD 
extensions are needed. As far as I have seen the current design, we need

- to tag the options: Every user-visible option in the PPD (with 
*OpenUI...*CloseUI) should get a line/lines added which holds one or 
more tags. Example:

*OPUITags: "
PaperHandling/Paper Handling
ResourceSaving/Resource Saving"
*End

Note that we also need to find a concept for the translation in 
multi-language PPDs ("Globalized PPD Support" on 
http://www.cups.org/documentation.php/spec-ppd.html, PPDs which come 
with CUPS 1.3.x).

For backward compatibility: If the options in a PPD are not tagged, the 
groups will be used as tags, but then the tags will act like tabs and so 
not give all their functionality.

For PPDs built from the Foomatic database, new XML markup for tagging 
the options is needed, for example:

<tags>
   <tag id="PaperHandling">
      <en>Paper Handling</en>
   </tag>
   <tag id="ResourceSaving">
      <en>Resource Saving</en>
   </tag>
</tags>

- to define the "Quick Presets": Several Foomatic-generated PPDs have an 
option named "PrintoutMode" which has usually settings like "Draft". 
"Normal Quality", "Photo", ... (Gutenprint IJS driver, HPIJS, ...). This 
option has the same intention as the "Quick Presets". It sets several 
other options to quickly set up the printer for a common printing task. 
  So I suggest that for generating the "Quick Presets" buttons the PPD 
is searched for an option named "QuickPresets" and if such an option 
does not exist it is searched for "PrintoutMode" for backward 
compatibility. The choices of this option are shown as the "Quick 
Presets" buttons and the option is not shown under the tags.

In Foomatic PPDs this option is a composite option which describes which 
of the other option it sets in which way and foomatic-rip takes care of 
the correct execution. For PPDs for PostScript printers I recommend that 
one codes up the appropriate functionality in PostScript and for CUPS 
raster drivers the handling should be done in the rastertoXXX executable.
