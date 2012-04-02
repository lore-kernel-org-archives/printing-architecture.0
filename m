Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CD10E9.5B115290"
Date: Mon, 2 Apr 2012 08:57:49 -0700
Message-ID: <E8C3B9E653C80C48B0951F8494C049A938EEE3@EEAEX02.us.epson.net>
References: <CAN40gSuYBV51pJ3hmCrbup2XnavgCbVT5JDXqxiuRYDJk78BQw@mail.gmail.com><CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com><CAN40gSsksMRO2+r8uZ_=VPaxKRbb3GZBdd7WpmPZYGuEcqnSEQ@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EE7F@EEAEX02.us.epson.net><CAN40gSuby6vu-=7O5fPLvq_Xh1ZPZGUXBf6oDB+Y424BDkNAVw@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EED6@EEAEX02.us.epson.net>
	<CAN40gSv=_hVv92S9pBtYfBg_y_NjqwDE=syGA-hC6UOmMFUELg@mail.gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] OPS
	Preparationminutes (28 March 2012)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01CD10E9.5B115290
Content-Type: text/plain;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

Wow!  I have a different scenario.

 

I see generation of a Print Job Ticket by a Print Client as a very simple process.   Using C-Code as an example; it is nothing more that a collection of canned “printf” statement were the argument are the Print Intent values expressed in the specific Print Job Ticket “language”.   The Print Client only wants to output one Print Job Ticket format, not one of several. 

 

I see parsing Print Job Ticket by a Print Service as an equally simple process; although there is a lot of content/data checking.   The Print Service only wants to accept one Print Job Ticket format, not one of several.

 

The difficult part is when the Print Client Print Job Ticket format does not match the Print Service Print Job Ticket format - an impedance mismatch; thus, JTAPI, provides the impedance matching or a transform service. 

 

What you are outlining implies that a Print Client or Print Service internally would need to use a set of data structures and definitions that supports JTAPI, where it may better for the Print Client or Print Service to support the Print Job Ticket more directly.   This does lead to the ever pending problem of “Common”; either a Common Print Client or even a Common Print Service.  For a Common Print Client it implies what “Label” or “Name” and what “values” should be displayed.   If JTAPI definitions, values and names are to be used; then, JTAPI become useful for converting any Print Job Ticket to a common internal format for every one to use.   I like this idea.

 

The same concept applies to capabilities information which is based Print Job Ticket formats/definitions. 

============

For the GSOC the time constraint, we may only get Print Job Ticket format Foo converted to an internal structure.   We can try to both read and write of that Print Job Ticket format. 

============

Since there may be an issue using or modifying MJT (copyright, etc), I will create a very simple MIT license Print Job Ticket format for JTAPI GSOC.   Again, the goal of JTAPI this year is end-to-end code with a very well documented set of code that will be used as illustration of implementing JTAPI.   The Print Job Ticket format is not important this year.  Next year or in a separate project, a standardized Print Job Ticket format can be instantiated. 

 

Glen

 

 

________________________________

From: Ira McDonald [mailto:blueroofmusic@gmail.com] 
Sent: Monday, April 02, 2012 8:12 AM
To: Petrie, Glen; Ira McDonald
Cc: Daniel Dressler; printing-architecture@lists.linux-foundation.org; printing-summit@lists.linux-foundation.org
Subject: Re: [Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March 2012)

 

Hi Glen,

I agree with you that the *3rd* use case is a Client producing
JDF and and PrintService converting it to PJT w/ JTAPI.

But the other two use cases (I think the dominant ones)
don't involve ANY conversion:

(1) Client builds an abstract job ticket using JTAPI and says
write it out to a given format.

(2) PrintService accepts that concrete job ticket and parses
it w/ JTAPI and uses the JTAPI parsed attributes as input
to the Scheduler and Interpreter subunits to process the
job.

Your  3rd use case of conversion of formats can't be
demonstrated without at least 2 backends - it's harder,
not simpler.

For all I care there's a reference only backend that writes
out (and reads in/parses) only an internal C struct form
of a job ticket.  

Or writes out MJT, but it That intellectual property and
status issues - the spec is PWG copyrighted and it's
a whitepaper, not an approved PWG project (that is, we
CANNOT modify MJT w/out PWG permission).

WDYT?

Cheers,
- Ira



Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG IPP WG
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - TCG Embedded Systems Hardcopy SG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music/High North Inc
http://sites.google.com/site/blueroofmusic <http://sites.google.com/site/blueroofmusic> 
http://sites.google.com/site/highnorthinc <http://sites.google.com/site/highnorthinc> 
mailto:blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434





2012/4/2 Petrie, Glen <glen.petrie@eitc.epson.com>

Ira,

 

I must admit to being totally confused.   I always under the impression that JTAPI was a classic definition of a transform service and not just a job ticket interpreter for a Print Service.    I thought a transform service accepts one document format and product a different document format; which is what I thought JTAPI did.  Example, accept a JDF job ticket and produce a PWG job ticket.  

 

What you describe below is what I would call it an interpreter and, maybe, that you have considered JTAPI to be.    Then, at least to me, the existing JTAPI may not be what is needed.   What is needed is a generic JDF interpreter, a PWG:PJT interpreter, …; that is, what I called the front-end to JTAPI.

 

I always saw the use case as:  A Print Service accepts PWG:PJT but the Print Client produced JDF.   Thus, the either the Print Client or the Print Service uses the JTAPI Transform Service to transform JDF to PJT.    The Print Service would already have its own interpreter to parse PWG:PJT into what ever internal format the Print Service needed or used.   [ I had always hoped that someday we could have a defined a the internal format that everyone would use but I don’t think that will ever happen.]

 

From my use case, JTAPI would need the ability to transform many possible input public and private job ticket formats; JTAPI, itself would have an internally data structure capable of containing content from many input Job Ticket to be able to produce differing output Job Tickets.

 

I am not sure what to do now.  I may not be the best person to guide the Daniel on the first JTAPI project since I not seem to have the correct understanding.   Ira, perhaps, you should mentor Daniel on the core (the first) JTAPI project so that the actual intent is produced.  I will mentor another student for the second JTAPI project following your’s and Daniel’s lead. 

 

Glen

 

 

________________________________

From: Ira McDonald [mailto:blueroofmusic@gmail.com] 
Sent: Sunday, April 01, 2012 9:27 PM
To: Petrie, Glen; Ira McDonald
Cc: Daniel Dressler; printing-architecture@lists.linux-foundation.org; printing-summit@lists.linux-foundation.org


Subject: Re: [Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March 2012)

 

Hi Glen,

I strongly disagree - this is *not* the OP Job Ticket
Transform Service.

The first use for a client is to create a NEW job
ticket (in the abstract API) and write it out into some
concrete format (with a backend).

Clients mostly won't modify existing job tickets.

And PrintServices will just use JTAPI to parse the
job ticket once (in whatever format) and use the
values in the actual Interpreter and Scheduler
miodules.

Conversion of Job Ticket formats is the tertiary
use case.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG IPP WG
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - TCG Embedded Systems Hardcopy SG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music/High North Inc
http://sites.google.com/site/blueroofmusic <http://sites.google.com/site/blueroofmusic> 
http://sites.google.com/site/highnorthinc <http://sites.google.com/site/highnorthinc> 
mailto:blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434

 

2012/3/30 Petrie, Glen <glen.petrie@eitc.epson.com>

Ira, Daniel

 

Since there seems to be an objection with just using “op”; I don’t believe “opjt” is actually correct either.  That is, this is not the OpenPrinting Job Ticket; what it is the OpenPrinting Job Ticket Transform Service [which fits perfectly with PWG’s definition of a transform service].   So an alternate and more descriptive lettering would be either 

 

“opjtt”             = open printing job ticket transform

“opjtts”           = open printing job ticket transform service

 

<The only other suggestion is to change the formal API names (not the prefix) to say JobTicketXXXXXXX and DocObj____.  NO!>

 

Glen

 

p.s. 

Please consider that this code will ultimately be reference code; and not reference code for execution as much as for source code on how to make Job Ticket back-ends (and front-end).  Having long prefixes for variable, variable types, routine name, etc, makes the code difficult to read, understand and develop.   This is not a schema, a dtd or the like; but a set of APIs that must have a front-end and one or more back-ends.    Namespace conflicts with JTAPI as a transform service are none since that interface will be determined by the front-end..  Conflicts of actual coding of the front-end and back-ends would be very low.   Since back-ends will likely be DLLs, there are not conflicts between back-ends.   My request is that, for this project, the code must be well structured, easy to read, easy to following and strongly commented.   The goal is not the fastest or the fanciest code but code that other will read and use to develop their code.   The code is the instruction manual
 . 

 

p.s. 

As the PWG moves forward to MFD’s, the notation of a Job Ticket becomes unclear as to what service the Job Ticket is for.   So the descriptive lettering should be

 

oppjtt  openprinting print job ticket transform

oppjtts  openprinting print job ticket transform service

 

or 

 

The current JTAPIs would have to be extended to support other services.   Naming will be a real big problem then even considering the commonality among various service job tickets. 

 

p.s. 

I did not see any feedback (or I missed it) to my suggested changes to JTAPI headers to OpenPrinting names (prefixes); thus, I assume the preference is to stay to the existing FSG:JTAPI header file.   That is, by all definitions, the correct thing to do.  So I guess it make the discussion of prefix unnecessary.

 

 

gwp

 

 

 

 

 

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org [mailto:printing-architecture-bounces@lists.linux-foundation.org] On Behalf Of Ira McDonald
Sent: Wednesday, March 28, 2012 9:18 PM
To: Daniel Dressler; Ira McDonald
Cc: printing-architecture@lists.linux-foundation.org; printing-summit@lists.linux-foundation.org
Subject: Re: [Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March 2012)

 

Hi Daniel,

Comments inline below.

Cheers,
- Ira

On Wed, Mar 28, 2012 at 7:09 PM, Daniel Dressler <danieru.dressler@gmail.com> wrote:

In response to some comments in the meeting.

1. I would prefer an 'op' prefix to 'fsgjt'. I assume fsgjt means free standards group job ticket? Since the fsg does not exist anymore I think 'op' would avoid confusion. And it is shorter.

	Do we know of any namespace conflicts with other op libraries? It's been 5+ years, has this situation changed?

<ira>
The Open Printing Vector API uses 'opvp' as prefix throughout.
It's sloppy and amateur coding practice not to use a library 
specific unique prefix (e.g., 'opjt') for variables and functions.

The scope is NOT just OP libraries, but the entire universe of
code that might be linked into a vendor or third-party tool.
</ira>
 

	2. I will be attending as much of the summit as I can by phone-in, the summit takes place over my finals so I will be missing some sessions.

<ira> 
Understood - we'll be glad to have you when you can attend.
</ira>

	3. If the wiki has no history does that mean it is pointless for me to fill in the change log when making edits?

<ira>
Till can hopefully answer this one - we're not any of us happy
about the move from a full-function Wiki tool to a limited Wiki
tool by the Linux Foundation.
</ira>

Daniel

	 

	2012年3月28日13:38 Ira McDonald <blueroofmusic@gmail.com>:

	Hi, 
	
	Minutes from today's Open Printing Summit planning call are posted at:
	
	 ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-20120328.htm
	
	Note:  New FTP directory - see above
	
	- ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates
	  to GSoC projects - no website fall-backs allowed until late April
	  - OPEN
	
	- ACTION - Till - contact Ghostscript and other color management folks
	  as presenters (or send slides?)
	  - Michael Vrhel (Artifex, Ghostscript) will attend OPS
	  - OPEN
	
	- ACTION - All - Draft presentation slides/outlines for review 11 April
	  - OPEN
	
	- ACTION - Presenters - tell Till EARLY about any special requirements
	  (e.g., speakers for video, demo printers, etc.)
	  - OPEN
	
	- ACTION - Presenters - send PDF slides to Till EARLY (or upload to OP)
	  (so that participants can download slides as backup for screencast)
	  - OPEN
	
	- ACTION - Ira - draft slides for OP Plenary by 11 April
	  - OPEN
	
	Next OP Conference Calls:
	(1) April 2012 - OPS Preparation
	    - Note - US Daylight Savings Time started on Sunday 11 March 2012
	    - Note - Europe Summer Time started on Sunday 25 March 2012
	
	    - Wednesday 11 April 2012, Daytime
	      - US
	        9am in San Francisco - US PDT (Pacific Daylight Time)
	        10am in Colorado - US MDT (Mountain Daylight Time)
	        11am in Chicago - US CDT (Central Daylight Time)
	        12pm in New York - US EDT (Eastern Daylight Time)
	      - Europe
	        6pm in Berlin - CEST (Central European Summer Time)
	
	    * Main Number (Till Kamppeter, LF, leader)
	      International: +1-218-936-7999 <tel:%2B1-218-936-7999> 
	      Access Code:   491659#
	
	(2) April 2012 - Joint PWG / Open Printing Summit
	    - Note - OPS is NOT hosted by Linux Foundation Collaboration Summit
	
	    - Tuesday to Friday 24-27 April 2012 at Apple in Cupertino, CA
	      - US
	        9am in San Francisco - US PDT (Pacific Daylight Time)
	        10am in Colorado - US MDT (Mountain Daylight Time)
	        11am in Chicago - US CDT (Central Daylight Time)
	        12pm in New York - US EDT (Eastern Daylight Time)
	      - Europe
	        6pm in Berlin - CEST (Central European Summer Time)
	
	    * Main PWG Number (Mike Sweet, Apple, leader)
	      US Toll-Free:  +1-866-469-3239 <tel:%2B1-866-469-3239> 
	      International: +1-650-429-3300 <tel:%2B1-650-429-3300> 
	      Access Code:   By request to Ira McDonald (do NOT publish)
	
	(3) May 2012 - US/Europe - OP Monthly Meeting
	    - Note - Joint PWG/OPS is 24-27 April at Apple in Cupertino, CA
	    - Note - Ubuntu Developer Summit is 7-11 May in Oakland, CA
	    - Note - Ira has a conflict on 16 May
	
	    - Wednesday 23 May 2012, Daytime
	      - US
	        9am in San Francisco - US PDT (Pacific Daylight Time)
	        10am in Colorado - US MDT (Mountain Daylight Time)
	        11am in Chicago - US CDT (Central Daylight Time)
	        12pm in New York - US EDT (Eastern Daylight Time)
	      - Europe
	        6pm in Berlin - CEST (Central European Summer Time)
	
	    * Main Number (Till Kamppeter, LF, leader)
	      International: +1-218-936-7999 <tel:%2B1-218-936-7999> 
	      Access Code:   491659#
	
	Cheers,
	- Ira
	
	Ira McDonald (Musician / Software Architect)
	Chair - Linux Foundation Open Printing WG
	Secretary - IEEE-ISTO Printer Working Group
	Co-Chair - IEEE-ISTO PWG IPP WG
	Co-Chair - TCG Trusted Mobility Solutions WG
	Chair - TCG Embedded Systems Hardcopy SG
	IETF Designated Expert - IPP & Printer MIB
	Blue Roof Music/High North Inc
	http://sites.google.com/site/blueroofmusic <http://sites.google.com/site/blueroofmusic> 
	http://sites.google.com/site/highnorthinc <http://sites.google.com/site/highnorthinc> 
	mailto:blueroofmusic@gmail.com
	Winter  579 Park Place  Saline, MI  48176  734-944-0094
	Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434

	 

	_______________________________________________
	Printing-summit mailing list
	Printing-summit@lists.linux-foundation.org
	https://lists.linuxfoundation.org/mailman/listinfo/printing-summit

	 

 

 

 


------_=_NextPart_001_01CD10E9.5B115290
Content-Type: text/html;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word" xmlns:st1="urn:schemas-microsoft-com:office:smarttags" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=iso-2022-jp">
<meta name=Generator content="Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri="urn:schemas-microsoft-com:office:smarttags" name="country-region"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="place"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="Street"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="PostalCode"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="State"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="City"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="address"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Mangal;
	panose-1:0 0 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
h1
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l2 level1 lfo4;
	font-size:14.0pt;
	font-family:Cambria;
	font-weight:bold;}
h2
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:.3in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l3 level2 lfo6;
	font-size:14.0pt;
	font-family:Cambria;
	font-weight:bold;}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:blue;
	text-decoration:underline;}
p
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
p.StyleHeading1NotBoldBlack, li.StyleHeading1NotBoldBlack, div.StyleHeading1NotBoldBlack
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l2 level2 lfo4;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
p.StyleAppendix, li.StyleAppendix, div.StyleAppendix
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-align:justify;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l3 level1 lfo6;
	font-size:14.0pt;
	font-family:Cambria;
	font-weight:bold;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:Cambria;
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:1;
	mso-list-template-ids:1767813390;}
@list l0:level1
	{mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level2
	{mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:.55in;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level3
	{mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level4
	{mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level5
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:1.75in;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level6
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1
	{mso-list-id:232006760;
	mso-list-template-ids:-416383970;}
@list l1:level1
	{mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level2
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level3
	{mso-level-reset-level:level1;
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level4
	{mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level5
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:1.75in;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level6
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2
	{mso-list-id:675117133;
	mso-list-template-ids:-319017128;}
@list l2:level1
	{mso-level-style-link:"Heading 1";
	mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level2
	{mso-level-style-link:"Style Heading 1 + Not Bold Black";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level3
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level4
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level5
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level6
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level7
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3
	{mso-list-id:1691636573;
	mso-list-template-ids:1894306706;}
@list l3:level1
	{mso-level-style-link:StyleAppendix;
	mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level2
	{mso-level-style-link:"Heading 2";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.3in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level3
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level4
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level5
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level6
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level7
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=EN-US link=blue vlink=blue>

<div class=Section1>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>Wow!&nbsp; I have a different scenario.<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>I see generation of a Print Job Ticket by
a Print Client as a very simple process.&nbsp;&nbsp; Using C-Code as an
example; it is nothing more that a collection of canned “printf” statement were
the argument are the Print Intent values expressed in the specific Print Job
Ticket “language”.&nbsp;&nbsp; The Print Client only wants to output one Print
Job Ticket format, not one of several. <o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>I see parsing Print Job Ticket by a Print
Service as an equally simple process; although there is a lot of content/data
checking. &nbsp;&nbsp;The Print Service only wants to accept one Print Job
Ticket format, not one of several.<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>The difficult part is when the Print Client
Print Job Ticket format does not match the Print Service Print Job Ticket
format &#8211; an impedance mismatch; thus, JTAPI, provides the impedance matching or
a transform service. <o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>What you are outlining implies that a
Print Client or Print Service internally would need to use a set of data
structures and definitions that supports JTAPI, where it may better for the Print
Client or Print Service to support the Print Job Ticket more
directly.&nbsp;&nbsp; This does lead to the ever pending problem of “Common”;
either a Common Print Client or even a Common Print Service.&nbsp; For a Common
Print Client it implies what “Label” or “Name” and what “values” should be
displayed. &nbsp;&nbsp;If JTAPI definitions, values and names are to be used;
then, JTAPI become useful for converting any Print Job Ticket to a common
internal format for every one to use. &nbsp;&nbsp;I like this idea.<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>The same concept applies to capabilities
information which is based Print Job Ticket formats/definitions. <o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>============<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>For the GSOC the time constraint, we may
only get Print Job Ticket format Foo converted to an internal structure.&nbsp;&nbsp;
We can try to both read and write of that Print Job Ticket format. <o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>============<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>Since there may be an issue using or modifying
MJT (copyright, etc), I will create a very simple MIT license Print Job Ticket
format for JTAPI GSOC.&nbsp;&nbsp; Again, the goal of JTAPI this year is
end-to-end code with a very well documented set of code that will be used as
illustration of implementing JTAPI.&nbsp;&nbsp; The Print Job Ticket format is
not important this year.&nbsp; Next year or in a separate project, a
standardized Print Job Ticket format can be instantiated. <o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>Glen<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=MsoNormal align=center style='text-align:center'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'>

<hr size=2 width="100%" align=center tabindex=-1>

</span></font></div>

<p class=MsoNormal><b><font size=2 face=Tahoma><span style='font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font size=2
face=Tahoma><span style='font-size:10.0pt;font-family:Tahoma'> Ira McDonald
[mailto:blueroofmusic@gmail.com] <br>
<b><span style='font-weight:bold'>Sent:</span></b> Monday, April 02, 2012 8:12
AM<br>
<b><span style='font-weight:bold'>To:</span></b> Petrie, Glen; Ira McDonald<br>
<b><span style='font-weight:bold'>Cc:</span></b> Daniel Dressler;
printing-architecture@lists.linux-foundation.org;
printing-summit@lists.linux-foundation.org<br>
<b><span style='font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March
2012)</span></font><o:p></o:p></p>

</div>

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'>Hi Glen,<br>
<br>
I agree with you that the *3rd* use case is a Client producing<br>
JDF and and PrintService converting it to PJT w/ JTAPI.<br>
<br>
But the other two use cases (I think the dominant ones)<br>
don't involve ANY conversion:<br>
<br>
(1) Client builds an abstract job ticket using JTAPI and says<br>
write it out to a given format.<br>
<br>
(2) PrintService accepts that concrete job ticket and parses<br>
it w/ JTAPI and uses the JTAPI parsed attributes as input<br>
to the Scheduler and Interpreter subunits to process the<br>
job.<br>
<br>
Your&nbsp; 3rd use case of conversion of formats can't be<br>
demonstrated without at least 2 backends - it's harder,<br>
not simpler.<br>
<br>
For all I care there's a reference only backend that writes<br>
out (and reads in/parses) only an internal C struct form<br>
of a job ticket.&nbsp; <br>
<br>
Or writes out MJT, but it That intellectual property and<br>
status issues - the spec is PWG copyrighted and it's<br>
a whitepaper, not an approved PWG project (that is, we<br>
CANNOT modify MJT w/out PWG permission).<br>
<br>
WDYT?<br>
<br>
Cheers,<br>
- Ira<br>
<br>
<br>
<br clear=all>
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - TCG Embedded Systems Hardcopy SG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br>
<a href="http://sites.google.com/site/blueroofmusic" target="_blank"><font
color="#3333ff"><span style='color:#3333FF'>http://sites.google.com/site/blueroofmusic</span></font></a><br>
<a href="http://sites.google.com/site/highnorthinc" target="_blank"><font
color="#6600cc"><span style='color:#6600CC'>http://sites.google.com/site/highnorthinc</span></font></a><br>
mailto:<a href="mailto:blueroofmusic@gmail.com" target="_blank">blueroofmusic@gmail.com</a><br>
Winter&nbsp; <st1:address w:st="on"><st1:Street w:st="on">579 Park Place</st1:Street>&nbsp;
 <st1:City w:st="on">Saline</st1:City>, <st1:State w:st="on">MI</st1:State>&nbsp;
 <st1:PostalCode w:st="on">48176</st1:PostalCode></st1:address>&nbsp;
734-944-0094<br>
Summer&nbsp; <st1:address w:st="on"><st1:Street w:st="on">PO Box</st1:Street>
 221</st1:address>&nbsp; Grand <st1:place w:st="on"><st1:City w:st="on">Marais</st1:City>,
 <st1:State w:st="on">MI</st1:State> <st1:PostalCode w:st="on">49839</st1:PostalCode></st1:place>&nbsp;
906-494-2434<o:p></o:p></span></font></p>

<p class=MsoNormal style='margin-bottom:12.0pt'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'><br>
<br>
<o:p></o:p></span></font></p>

<div>

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'>2012/4/2 Petrie, Glen &lt;<a href="mailto:glen.petrie@eitc.epson.com">glen.petrie@eitc.epson.com</a>&gt;<o:p></o:p></span></font></p>

<div link=blue vlink=blue>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Ira,</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>I must admit to being totally confused.&nbsp;&nbsp; I always under
the impression that JTAPI was a classic definition of a transform service and
not just a job ticket interpreter for a Print Service.&nbsp;&nbsp;&nbsp; I
thought a transform service accepts one document format and product a different
document format; which is what I thought JTAPI did.&nbsp; Example, accept a JDF
job ticket and produce a PWG job ticket.&nbsp; </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>What you describe below is what I would call it an interpreter and,
maybe, that you have considered JTAPI to be. &nbsp;&nbsp;&nbsp;Then, at least
to me, the existing JTAPI may not be what is needed.&nbsp;&nbsp; What is needed
is a generic JDF interpreter, a PWG:PJT interpreter, …; that is, what I called
the front-end to JTAPI.</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>I always saw the use case as:&nbsp; A Print Service accepts PWG:PJT
but the Print Client produced JDF.&nbsp;&nbsp; Thus, the either the Print
Client or the Print Service uses the JTAPI Transform Service to transform JDF
to PJT.&nbsp; &nbsp;&nbsp;The Print Service would already have its own
interpreter to parse PWG:PJT into what ever internal format the Print Service
needed or used. &nbsp;&nbsp;[ I had always hoped that someday we could have a
defined a the internal format that everyone would use but I don’t think that
will ever happen.]</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>From my use case, JTAPI would need the ability to transform many
possible input public and private job ticket formats; JTAPI, itself would have
an internally data structure capable of containing content from many input Job
Ticket to be able to produce differing output Job Tickets.</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>I am not sure what to do now.&nbsp; I may not be the best person to
guide the Daniel on the first JTAPI project since I not seem to have the
correct understanding.&nbsp;&nbsp; Ira, perhaps, you should mentor Daniel on
the core (the first) JTAPI project so that the actual intent is produced.&nbsp;
I will mentor another student for the second JTAPI project following your’s and
Daniel’s lead. </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Glen</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<div>

<div class=MsoNormal align=center style='text-align:center'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'>

<hr size=2 width="100%" align=center>

</span></font></div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><font
size=2 face=Tahoma><span style='font-size:10.0pt;font-family:Tahoma;font-weight:
bold'>From:</span></font></b><font size=2 face=Tahoma><span style='font-size:
10.0pt;font-family:Tahoma'> Ira McDonald [mailto:<a
href="mailto:blueroofmusic@gmail.com" target="_blank">blueroofmusic@gmail.com</a>]
<br>
<b><span style='font-weight:bold'>Sent:</span></b> Sunday, April 01, 2012 9:27
PM<br>
<b><span style='font-weight:bold'>To:</span></b> Petrie, Glen; Ira McDonald<br>
<b><span style='font-weight:bold'>Cc:</span></b> Daniel Dressler; <a
href="mailto:printing-architecture@lists.linux-foundation.org" target="_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href="mailto:printing-summit@lists.linux-foundation.org" target="_blank">printing-summit@lists.linux-foundation.org</a></span></font><o:p></o:p></p>

<div>

<div>

<p class=MsoNormal><font size=3 face=Tahoma><span style='font-size:12.0pt;
font-family:Tahoma'><br>
<b><span style='font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March
2012)</span></font><o:p></o:p></p>

</div>

</div>

</div>

<div>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>Hi Glen,<br>
<br>
I strongly disagree - this is *not* the OP Job Ticket<br>
Transform Service.<br>
<br>
The first use for a client is to create a NEW job<br>
ticket (in the abstract API) and write it out into some<br>
concrete format (with a backend).<br>
<br>
Clients mostly won't modify existing job tickets.<br>
<br>
And PrintServices will just use JTAPI to parse the<br>
job ticket once (in whatever format) and use the<br>
values in the actual Interpreter and Scheduler<br>
miodules.<br>
<br>
Conversion of Job Ticket formats is the tertiary<br>
use case.<br>
<br>
Cheers,<br>
- Ira<br>
<br clear=all>
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - TCG Embedded Systems Hardcopy SG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br>
<a href="http://sites.google.com/site/blueroofmusic" target="_blank"><font
color="#3333ff"><span style='color:#3333FF'>http://sites.google.com/site/blueroofmusic</span></font></a><br>
<a href="http://sites.google.com/site/highnorthinc" target="_blank"><font
color="#6600cc"><span style='color:#6600CC'>http://sites.google.com/site/highnorthinc</span></font></a><br>
mailto:<a href="mailto:blueroofmusic@gmail.com" target="_blank">blueroofmusic@gmail.com</a><br>
Winter&nbsp; <st1:address w:st="on"><st1:Street w:st="on">579 Park Place</st1:Street>&nbsp;
 <st1:City w:st="on">Saline</st1:City>, <st1:State w:st="on">MI</st1:State>&nbsp;
 <st1:PostalCode w:st="on">48176</st1:PostalCode></st1:address>&nbsp; <a
href="tel:734-944-0094" target="_blank" value="+17349440094">734-944-0094</a><br>
Summer&nbsp; <st1:address w:st="on"><st1:Street w:st="on">PO Box</st1:Street>
 221</st1:address>&nbsp; Grand <st1:place w:st="on"><st1:City w:st="on">Marais</st1:City>,
 <st1:State w:st="on">MI</st1:State> <st1:PostalCode w:st="on">49839</st1:PostalCode></st1:place>&nbsp;
<a href="tel:906-494-2434" target="_blank" value="+19064942434">906-494-2434</a><o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>2012/3/30 Petrie,
Glen &lt;<a href="mailto:glen.petrie@eitc.epson.com" target="_blank">glen.petrie@eitc.epson.com</a>&gt;<o:p></o:p></span></font></p>

<div link=blue vlink=blue>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Ira, Daniel</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Since there seems to be an objection with just using “op”; I don’t
believe “opjt” is actually correct either.&nbsp; That is, this is not the
OpenPrinting Job Ticket; what it is the OpenPrinting Job Ticket Transform Service
[which fits perfectly with PWG’s definition of a transform
service].&nbsp;&nbsp; So an alternate and more descriptive lettering would be
either </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>“opjtt”&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
= open printing job ticket transform</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>“opjtts”&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
= open printing job ticket transform service</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&lt;The only other suggestion is to change the formal API names
(not the prefix) to say JobTicketXXXXXXX and DocObj____.&nbsp; NO!&gt;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Glen</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>p.s. </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>Please consider that this code will
ultimately be reference code; and not reference code for execution as much as
for source code on how to make Job Ticket back-ends (and front-end).
&nbsp;Having long prefixes for variable, variable types, routine name, etc,
makes the code difficult to read, understand and develop. &nbsp;&nbsp;This is
not a schema, a dtd or the like; but a set of APIs that must have a front-end
and one or more back-ends.&nbsp;&nbsp; &nbsp;Namespace conflicts with JTAPI as
a transform service are none since that interface will be determined by the
front-end..&nbsp; Conflicts of actual coding of the front-end and back-ends
would be very low.&nbsp;&nbsp; Since back-ends will likely be DLLs, there are
not conflicts between back-ends.&nbsp;&nbsp; My request is that, for this
project, the code must be well structured, easy to read, easy to following and
strongly commented. &nbsp;&nbsp;The goal is not the fastest or the fanciest
code but code that other will read and use to develop their code.
&nbsp;&nbsp;The code is the instruction manual. </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>p.s. </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>As the PWG moves forward to MFD’s, the
notation of a Job Ticket becomes unclear as to what service the Job Ticket is
for.&nbsp;&nbsp; So the descriptive lettering should be</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>oppjtt&nbsp; openprinting print job
ticket transform</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>oppjtts&nbsp; openprinting print job
ticket transform service</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>or </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>The current JTAPIs would have to be
extended to support other services. &nbsp;&nbsp;Naming will be a real big
problem then even considering the commonality among various service job
tickets. </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>p.s. </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>I did not see any feedback (or I missed
it) to my suggested changes to JTAPI headers to OpenPrinting names (prefixes);
thus, I assume the preference is to stay to the existing FSG:JTAPI header
file.&nbsp;&nbsp; That is, by all definitions, the correct thing to do.&nbsp;
So I guess it make the discussion of prefix unnecessary.</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in'><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>gwp</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<div>

<div class=MsoNormal align=center style='text-align:center'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'>

<hr size=2 width="100%" align=center>

</span></font></div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><font
size=2 face=Tahoma><span style='font-size:10.0pt;font-family:Tahoma;font-weight:
bold'>From:</span></font></b><font size=2 face=Tahoma><span style='font-size:
10.0pt;font-family:Tahoma'> <a
href="mailto:printing-architecture-bounces@lists.linux-foundation.org"
target="_blank">printing-architecture-bounces@lists.linux-foundation.org</a>
[mailto:<a
href="mailto:printing-architecture-bounces@lists.linux-foundation.org"
target="_blank">printing-architecture-bounces@lists.linux-foundation.org</a>] <b><span
style='font-weight:bold'>On Behalf Of </span></b>Ira McDonald<br>
<b><span style='font-weight:bold'>Sent:</span></b> Wednesday, March 28, 2012
9:18 PM<br>
<b><span style='font-weight:bold'>To:</span></b> Daniel Dressler; Ira McDonald<br>
<b><span style='font-weight:bold'>Cc:</span></b> <a
href="mailto:printing-architecture@lists.linux-foundation.org" target="_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href="mailto:printing-summit@lists.linux-foundation.org" target="_blank">printing-summit@lists.linux-foundation.org</a><br>
<b><span style='font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March
2012)</span></font><o:p></o:p></p>

</div>

<div>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>Hi Daniel,<br>
<br>
Comments inline below.<br>
<br>
Cheers,<br>
- Ira<o:p></o:p></span></font></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>On Wed, Mar 28,
2012 at 7:09 PM, Daniel Dressler &lt;<a href="mailto:danieru.dressler@gmail.com"
target="_blank">danieru.dressler@gmail.com</a>&gt; wrote:<o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>In response to
some comments in the meeting.<br>
<br>
1. I would prefer an 'op' prefix to 'fsgjt'. I assume fsgjt means free
standards group job ticket? Since the fsg does not exist anymore I think 'op'
would avoid confusion. And it is shorter.<o:p></o:p></span></font></p>

<blockquote style='border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>Do we know of any
namespace conflicts with other op libraries? It's been 5+ years, has this
situation changed?<o:p></o:p></span></font></p>

</blockquote>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&lt;ira&gt;<br>
The Open Printing Vector API uses 'opvp' as prefix throughout.<br>
It's sloppy and amateur coding practice not to use a library <br>
specific unique prefix (e.g., 'opjt') for variables and functions.<br>
<br>
The scope is NOT just OP libraries, but the entire universe of<br>
code that might be linked into a vendor or third-party tool.<br>
&lt;/ira&gt;<br>
&nbsp;<o:p></o:p></span></font></p>

</div>

<blockquote style='border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>2. I will be
attending as much of the summit as I can by phone-in, the summit takes place
over my finals so I will be missing some sessions.<o:p></o:p></span></font></p>

</blockquote>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&lt;ira&gt; <br>
Understood - we'll be glad to have you when you can attend.<br>
&lt;/ira&gt;<o:p></o:p></span></font></p>

</div>

<blockquote style='border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>3. If the wiki has
no history does that mean it is pointless for me to fill in the change log when
making edits?<o:p></o:p></span></font></p>

</blockquote>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&lt;ira&gt;<br>
Till can hopefully answer this one - we're not any of us happy<br>
about the move from a full-function Wiki tool to a limited Wiki<br>
tool by the Linux Foundation.<br>
&lt;/ira&gt;<br>
<br>
Daniel<o:p></o:p></span></font></p>

</div>

<blockquote style='border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt'>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>2012</span></font><font
face="MS Mincho"><span style='font-family:"MS Mincho"'>年</span></font>3<font
face="MS Mincho"><span style='font-family:"MS Mincho"'>月</span></font>28<font
face="MS Mincho"><span style='font-family:"MS Mincho"'>日</span></font>13:38 Ira
McDonald &lt;<a href="mailto:blueroofmusic@gmail.com" target="_blank">blueroofmusic@gmail.com</a>&gt;:<o:p></o:p></p>

<div>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>Hi, <br>
<br>
Minutes from today's Open Printing Summit planning call are posted at:<br>
<br>
&nbsp;<a
href="ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-20120328.htm"
target="_blank">ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-20120328.htm</a><br>
<br>
Note:&nbsp; New FTP directory - see above<br>
<br>
- ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates<br>
&nbsp; to GSoC projects - no website fall-backs allowed until late April<br>
&nbsp; - OPEN<br>
<br>
- ACTION - Till - contact Ghostscript and other color management folks<br>
&nbsp; as presenters (or send slides?)<br>
&nbsp; - Michael Vrhel (Artifex, Ghostscript) will attend OPS<br>
&nbsp; - OPEN<br>
<br>
- ACTION - All - Draft presentation slides/outlines for review 11 April<br>
&nbsp; - OPEN<br>
<br>
- ACTION - Presenters - tell Till EARLY about any special requirements<br>
&nbsp; (e.g., speakers for video, demo printers, etc.)<br>
&nbsp; - OPEN<br>
<br>
- ACTION - Presenters - send PDF slides to Till EARLY (or upload to OP)<br>
&nbsp; (so that participants can download slides as backup for screencast)<br>
&nbsp; - OPEN<br>
<br>
- ACTION - Ira - draft slides for OP Plenary by 11 April<br>
&nbsp; - OPEN<br>
<br>
Next OP Conference Calls:<br>
(1) April 2012 - OPS Preparation<br>
&nbsp;&nbsp;&nbsp; - Note - US Daylight Savings Time started on Sunday 11 March
2012<br>
&nbsp;&nbsp;&nbsp; - Note - Europe Summer Time started on Sunday 25 March 2012<br>
<br>
&nbsp;&nbsp;&nbsp; - Wednesday 11 April 2012, Daytime<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - US<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in <st1:City w:st="on">San
 Francisco</st1:City> - <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
PDT (Pacific Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in <st1:State w:st="on">Colorado</st1:State>
- <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
MDT (Mountain Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - <st1:country-region
w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region> CDT (Central
Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in <st1:State w:st="on">New
 York</st1:State> - <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
EDT (Eastern Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <st1:place w:st="on">Europe</st1:place><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in <st1:State w:st="on"><st1:place
 w:st="on">Berlin</st1:place></st1:State> - CEST (Central European Summer Time)<br>
<br>
&nbsp;&nbsp;&nbsp; * Main Number (Till Kamppeter, LF, leader)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International: <a href="tel:%2B1-218-936-7999"
target="_blank" value="+12189367999">+1-218-936-7999</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; 491659#<br>
<br>
(2) April 2012 - Joint PWG / Open Printing <st1:City w:st="on"><st1:place
 w:st="on">Summit</st1:place></st1:City><br>
&nbsp;&nbsp;&nbsp; - Note - OPS is NOT hosted by Linux Foundation Collaboration
Summit<br>
<br>
&nbsp;&nbsp;&nbsp; - Tuesday to Friday 24-27 April 2012 at Apple in <st1:place
w:st="on"><st1:City w:st="on">Cupertino</st1:City>, <st1:State w:st="on">CA</st1:State></st1:place><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - US<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in <st1:City w:st="on">San
 Francisco</st1:City> - <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
PDT (Pacific Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in <st1:State w:st="on">Colorado</st1:State>
- <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
MDT (Mountain Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - <st1:country-region
w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region> CDT (Central
Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in <st1:State w:st="on">New
 York</st1:State> - <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
EDT (Eastern Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <st1:place w:st="on">Europe</st1:place><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in <st1:State w:st="on"><st1:place
 w:st="on">Berlin</st1:place></st1:State> - CEST (Central European Summer Time)<br>
<br>
&nbsp;&nbsp;&nbsp; * Main PWG Number (Mike Sweet, Apple, leader)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; US Toll-Free:&nbsp; <a
href="tel:%2B1-866-469-3239" target="_blank" value="+18664693239">+1-866-469-3239</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International: <a href="tel:%2B1-650-429-3300"
target="_blank" value="+16504293300">+1-650-429-3300</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; By request to Ira
McDonald (do NOT publish)<br>
<br>
(3) May 2012 - US/Europe - OP Monthly Meeting<br>
&nbsp;&nbsp;&nbsp; - Note - Joint PWG/OPS is 24-27 April at Apple in <st1:place
w:st="on"><st1:City w:st="on">Cupertino</st1:City>, <st1:State w:st="on">CA</st1:State></st1:place><br>
&nbsp;&nbsp;&nbsp; - Note - Ubuntu Developer Summit is 7-11 May in <st1:place
w:st="on"><st1:City w:st="on">Oakland</st1:City>, <st1:State w:st="on">CA</st1:State></st1:place><br>
&nbsp;&nbsp;&nbsp; - Note - Ira has a conflict on 16 May<br>
<br>
&nbsp;&nbsp;&nbsp; - Wednesday 23 May 2012, Daytime<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - US<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in <st1:City w:st="on">San
 Francisco</st1:City> - <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
PDT (Pacific Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in <st1:State w:st="on">Colorado</st1:State>
- <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
MDT (Mountain Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - <st1:country-region
w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region> CDT (Central
Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in <st1:State w:st="on">New
 York</st1:State> - <st1:country-region w:st="on"><st1:place w:st="on">US</st1:place></st1:country-region>
EDT (Eastern Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <st1:place w:st="on">Europe</st1:place><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in <st1:State w:st="on"><st1:place
 w:st="on">Berlin</st1:place></st1:State> - CEST (Central European Summer Time)<br>
<br>
&nbsp;&nbsp;&nbsp; * Main Number (Till Kamppeter, LF, leader)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International: <a href="tel:%2B1-218-936-7999"
target="_blank" value="+12189367999">+1-218-936-7999</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; 491659#<br>
<br>
Cheers,<br>
- Ira<br>
<br clear=all>
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - TCG Embedded Systems Hardcopy SG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br>
<a href="http://sites.google.com/site/blueroofmusic" target="_blank"><font
color="#3333ff"><span style='color:#3333FF'>http://sites.google.com/site/blueroofmusic</span></font></a><br>
<a href="http://sites.google.com/site/highnorthinc" target="_blank"><font
color="#6600cc"><span style='color:#6600CC'>http://sites.google.com/site/highnorthinc</span></font></a><br>
mailto:<a href="mailto:blueroofmusic@gmail.com" target="_blank">blueroofmusic@gmail.com</a><br>
Winter&nbsp; <st1:address w:st="on"><st1:Street w:st="on">579 Park Place</st1:Street>&nbsp;
 <st1:City w:st="on">Saline</st1:City>, <st1:State w:st="on">MI</st1:State>&nbsp;
 <st1:PostalCode w:st="on">48176</st1:PostalCode></st1:address>&nbsp; <a
href="tel:734-944-0094" target="_blank" value="+17349440094">734-944-0094</a><br>
Summer&nbsp; <st1:address w:st="on"><st1:Street w:st="on">PO Box</st1:Street>
 221</st1:address>&nbsp; Grand <st1:place w:st="on"><st1:City w:st="on">Marais</st1:City>,
 <st1:State w:st="on">MI</st1:State> <st1:PostalCode w:st="on">49839</st1:PostalCode></st1:place>&nbsp;
<a href="tel:906-494-2434" target="_blank" value="+19064942434">906-494-2434</a><o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

</div>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>_______________________________________________<br>
Printing-summit mailing list<br>
<a href="mailto:Printing-summit@lists.linux-foundation.org" target="_blank">Printing-summit@lists.linux-foundation.org</a><br>
<a href="https://lists.linuxfoundation.org/mailman/listinfo/printing-summit"
target="_blank">https://lists.linuxfoundation.org/mailman/listinfo/printing-summit</a><o:p></o:p></span></font></p>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

</blockquote>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

</div>

</div>

</div>

</div>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

</div>

</div>

</div>

</div>

</div>

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CD10E9.5B115290--
