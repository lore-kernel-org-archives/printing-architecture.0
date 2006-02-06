Return-Path: <till.kamppeter@gmx.net>
Message-ID: <43E7217F.6040905@gmx.net>
Date: Mon, 06 Feb 2006 11:14:23 +0100
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Printing Summit memo (for tomorrow sc
	meeting)
References: <43E704F5.6040003@fxpsc.co.jp>
In-Reply-To: <43E704F5.6040003@fxpsc.co.jp>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Osamu MIHARA <mihara.osamu@fxpsc.co.jp>
Cc: "desktop_printing@osdl.org" <desktop_printing@osdl.org>, printing-architecture@freestandards.org, printing-sc@freestandards.org

[ I cross-post also to the desktop_printing list, to get also
  opinions of Printing Summit participants and OSDL people ]

See my comments below.

   Till

Osamu MIHARA wrote:
> Hi,
> 
> Here I compile opinions of member in FSG/OP Japan.
> Unfortunately, I cannot attend tomorrow meeting, but please discuss what
> we should do for the printing summit.
> 
> ================
> 
> Memorandum - OSDL DTL Printing Summit 2006
> 
> In this memorandum, we are trying to summarize our opinion and stance
> for OSDL DTL Printing Summit as OpenPrinting WG Japan, and propose them
> to OpenPrinting Steering Committee and Chair (Mr. Norm Jacobson).
> 
> $$$ Background $$$
> 
> a. The Portland meeting regarding Desktop Linux has been held in Dec.
> last year in Oregon sponsored by OSDL.  In the meeting, current status
> and problems about desktop printing in Linux were discussed and, as a
> result, "Printing Summit" conference was proposed.  However, it seems
> that following are obscure.
> 
> - The purpose and scope of the activity of DTL.
> - The purpose of assumed target of Printing Summit 2006

The Printing Summit does not deal only with APIs, subjects are also user
interfaces, usability, hardware support, PDF instead of PostScript as
print job transfer format, and more, see agenda on

http://groups.osdl.org/apps/group_public/download.php/1952/printingsummit.pdf

> - Relationship with FSG/OP.
> 

FSG OpenPrinting is one of the groups invited to participate. There will
be a session about the implementation of the APIs.

Especially for the change from PostScript to PDF as job transfer format
we need

 * Job tickets as embedding of option settings/code like in PostScript
is not supported by PDF.

 * Vector driver API from japanese OpenPrinting group to modularize
built-in GhostScript drivers (PCL 6/XL, Epson EPL non-L series, ...), so
that they can be used by other renderers like XPDF (or Cairo).

> b. In the past, Printing Summits has been held twice in 2000 and 2001,
> and people working for various printing projects has discussed about
> problems and solutions in printing environment.  AS a conclusion,
> OpenPrinting WG has been established as one of the work group of Free
> Standards Group in order to study printing APIs for the next generation
> of Linux environment.
> 

And these APIs will be made use of by what we will talk about on the
Printing Summit.

> c. On the other hand, it seems that, from the impression of the agenda,
> existing printing systems, such as Foomatic, are focused and set as
> subjects in the coming Printing Summit,  which is similar to
> LSM2004/2005.  We are afraid that there is a gap between activities,
> purpose and positioning of FSG/OP to defining standard API and the
> objective of the Summit, furthermore, it also has difference between
> objective of OSDL DTL group to promote Linux as a desktop system.
> 

The Printing Summit will deal with BOTH usability and UI subjects AND
with internal infrastructure of the print process. OpenPrinting APIs
have impact on both parts: ISVs have stable APIs for the printing part
of their desktop applications (JTAPI, PAPI), so this improves the
chances for ISVs supporting Linux. Driver APIs make it easier for
hardware vendors to supply drivers, ...

> d. The purpose of FSG/OP is to study and standardize APIs between
> sub-components of printing system, not to develop software in general
> meaning.  It is for enabling integration of a printing system, combining
> each sub-components, such as spooler, driver and applications, gluing by
> standardized printing API.
>

Implementation of the APIs will be a subject of the Printing Summit, we
do not require from the FSG/OP group to implement them.

> $$$ Positioning of OSDL DTL Printing Summit in FSG/OP and Plan for the
> Summit $$$
> 
> We recognize the Summit as a opportunity to introduce our achievement
> and problems we have, by revising the information we have shown in last
> Printing Summit/LSM.
> 
> Presentation #1: Update the presentation of LSM2004 and present it to
> introduce FSG/OPs purpose, activity and achievement. (Glen Patrie)
>   - Architecture
>   - PAPI/JTAPI - Approved specs.
>   - Driver/PCM - on going specs.
>   - others to be defined
> 

Great, probably several participants of the event are not aware of the
work of FSG/OP.

> Presentation #2: Explain each implementation by Japan team under the
> agency fund.  (To be assigned)
>   - Vector Driver
>   - PDF Renderer
> 

This is expecially important for our plans to use PDF as job format, but
also for hardware support.

> Also explain about next implementation plan
>   - PAPI
>   - JTAPI
> 
> Demonstration (possibly a video): (To be assigned)
>   - Printing on Laser Printers using vector driver
> 

Great.

> Introduction of the new API (To be assigned)
>   - PCM
> 
> We would like to discuss above plan in the next SC meeting to get
> consensus and start preparation for the Summit.  Possible we would ask
> Norm to pre-announce the contents of the presentation (upload to
> ftp.pwg.org).

