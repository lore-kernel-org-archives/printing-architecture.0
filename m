Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CD171B.2FEE1E44"
Date: Tue, 10 Apr 2012 06:09:38 -0700
Message-ID: <E8C3B9E653C80C48B0951F8494C049A938F412@EEAEX02.us.epson.net>
References: <CAN40gSuYBV51pJ3hmCrbup2XnavgCbVT5JDXqxiuRYDJk78BQw@mail.gmail.com><CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com><CAN40gSsksMRO2+r8uZ_=VPaxKRbb3GZBdd7WpmPZYGuEcqnSEQ@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EE7F@EEAEX02.us.epson.net><CAN40gSuby6vu-=7O5fPLvq_Xh1ZPZGUXBf6oDB+Y424BDkNAVw@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EED6@EEAEX02.us.epson.net><CAN40gSv=_hVv92S9pBtYfBg_y_NjqwDE=syGA-hC6UOmMFUELg@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EEE3@EEAEX02.us.epson.net><CAGC3nLC=k_5HoLVxXhnXi9xf7qk4SRmULWirzfBgmqJxKVigag@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EF1C@EEAEX02.us.epson.net><CAGC3nLDK3ZxTznwYeUf1yNeW+OuG4PA2BOCgM-=OKXD8iTnbDw@mail.gmail.com><CAGC3nLB1aE9YgsXzrOOZiR55rdRQATsMhUReuXbeVp=EFQsQUw@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938EF80@EEAEX02.us.epson.net><CAN40gSv7pss6zAoFejK=egUpWVtKqOV2etRk08y=Gx--bgYkhg@mail.gmail.com><E8C3B9E653C80C48B0951F8494C049A938F32A@EEAEX02.us.epson.net>
	<E8C3B9E 653C80C48B09 51F8494C049A938F3BF@EEAEX02.us.epson.net>
	<CAGC3nLDsZojewNNVNaraFiit7=5Pj1Yi_MHhT7OXftN-igqXQg@mail.gmail.com>
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
To: Daniel Dressler <danieru.dressler@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01CD171B.2FEE1E44
Content-Type: text/plain;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

Daniel

 

________________________________


Actually I don't think that clause would give us the opportunity to alter the spec. Only to provide in-line documentation on the existing spec.
[gwp] the clause allows creation of derivative work.


I'm not fond of the idea of creating yet another job ticket format. Ira suggested that we use a simple serialisation of the internal data, which I think is an acceptable option.
[gwp] Not creating another job ticket format; creating a mechanism to test JTAPI and example code without worry if using a specific Job Ticket Format is up to date.   


I would like a super-thin format for testing and the only thing thinner than serialisation I can think of is a binary dump. Plus since it will break all the time we do not have to worry about it escaping into the wild.
[gwp] The intent is that a front-end to JTAPI would accept XML or JSON; not data structures


Ira, if pwg has new properties does that mean jtapi will need an update? Are the changes mostly aditive? By that I mean is it safe to implement the current jtapi spec with the expectation that jtapi 2.0 will simply be larger?

Daniel

2012年4月9日15:31 Petrie, Glen <glen.petrie@eitc.epson.com>:

Ira,

 

As a reference I copied the Copyright license from a PWG candidate standard which is copied below; I believe the license would give OP the right to create an MJT specification from a PWG:MJT specification.  However, creating a new OP:JTAPI:JT specification to exercise JTAPI and to be used as an example for other readers, writers, or convertors would be much better.

 

Glen

 

 

 

 

This document may be copied and furnished to others, and derivative works that comment on, or otherwise 

explain it or assist in its implementation may be prepared, copied, published and distributed, in whole or in 

part, without restriction of any kind, provided that the above copyright notice, this paragraph and the title of 

the Document as referenced below are included on all such copies and derivative works.  

 

 

________________________________

From: Ira McDonald [mailto:blueroofmusic@gmail.com] 
Sent: Monday, April 09, 2012 8:37 AM


To: Petrie, Glen; Ira McDonald
Cc: Daniel Dressler; printing-architecture@lists.linux-foundation.org; printing-summit@lists.linux-foundation.org
Subject: Re: [Printing-summit] [Printing-architecture] OPS Preparationminutes (28 March 2012)

 

Hi Glen,



Right - my concern is that JTAPI reference implementation should
normatively reference the source job ticket specification(s).

MJT is dead-in-the-water as a PWG effort - but is copyrighted by
PWG - therefore, not suitable for a normative reference.

Also MJT does NOT address any of the post-IPP/1.1 (RFC 2911)
properties in the PWG Print Job Ticket (i.e., the vast majority of
the content in PWG PJT) - neither does the original JTAPI spec.

I suggest a testing-only serialization of the internal JTAPI JT
would be best for the OP JTAPI reference implementation.

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

 

On Mon, Apr 9, 2012 at 10:46 AM, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:

Ira,

 

What exactly is your concern?   That the MJT is not official? Not complete? Copyrighted? 

 

Why are you under the impression that OP would copy the PWG:MJT specification to an OP:MJT specification.  Maybe I missed something in one of the emails.  The only intent is use the PWG:MJT for the first JTAPI implementation.  

 

Maybe it would be better not to use MJT.   JTAPI (its objects, elements, attributes and values), in itself, is a job ticket.   If the JTAPI project uses a JTAPI JT, then it can test all the features in JTAPI.

 

I will examine the JTAPI documentation and code to create a JTAPI JT specification.   

 

Glen

 

 

 

________________________________

From: Ira McDonald [mailto:blueroofmusic@gmail.com] 
Sent: Tuesday, April 03, 2012 12:44 PM


To: Petrie, Glen; Ira McDonald
Cc: Daniel Dressler; printing-architecture@lists.linux-foundation.org; printing-summit@lists.linux-foundation.org

Subject: Re: [Printing-summit] [Printing-architecture] OPS Preparationminutes (28 March 2012)

 

Hi,

The MJT is a *first* draft whitepaper in the PWG - NOT a standard
or even a working draft in a chartered PWG working group.

Nonetheless, that whitepaper carries a PWG copyright (it was a
public submission by me, the sole author).  So *I* can submit an 
updated draft whitepaper to the PWG at any time.

But the MJT spec can't just be copied into an Open Printing document 
format and reissued as an OP working draft without a written copyright 
release from PWG.

MJT covers the most common Job attributes - specifically the subset
originally defined in IPP/1.0 (RFC 2566 - now obsoleted by RFC 2911).

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

 

On Mon, Apr 2, 2012 at 5:37 PM, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:

The issue with the MJT is if we want to change something, then we need to go back to the PWG.   But, unless Ira disagrees, I see no reason to change the MJT for this phase of the JTAPI development.    Perhaps, the MJT will not exercise all of the functionality of the JTAPI; in that case, we will add a “vendor extension” which would actually be a good thing, because JTAPI must handle vendor extension at some point.

 

Glen

 

 

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org [mailto:printing-architecture-bounces@lists.linux-foundation.org] On Behalf Of Daniel Dressler
Sent: Monday, April 02, 2012 2:27 PM
To: Petrie, Glen


Cc: printing-architecture@lists.linux-foundation.org; printing-summit@lists.linux-foundation.org
Subject: Re: [Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March 2012)

 

To continue my last email I wanted to say that I would like it if Glen continued to be my mentor. My biggest concern is about code quality and I think he can provide the criticism and code review I need to improve. 


What exactly is the issue with implementing a micro job ticket backend? It was my understanding that MJT would be a simple job ticket format and thus a good one to implement as an example/development backend. Is there a reason we might need to alter the MJT standard?

Daniel

 


_______________________________________________
Printing-summit mailing list
Printing-summit@lists.linux-foundation.org
https://lists.linuxfoundation.org/mailman/listinfo/printing-summit

 

 

 


------_=_NextPart_001_01CD171B.2FEE1E44
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
 namespaceuri="urn:schemas-microsoft-com:office:smarttags" name="Street"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="PostalCode"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="address"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="State"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="place"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="City"/>
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
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
12.0pt;font-family:Cambria;color:blue'>Daniel<o:p></o:p></span></font></p>

<p class=MsoNormal><font size=3 color=blue face=Cambria><span style='font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=MsoNormal align=center style='text-align:center'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'>

<hr size=2 width="100%" align=center tabindex=-1>

</span></font></div>

</div>

<p class=MsoNormal style='margin-bottom:12.0pt'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'><br>
Actually I don't think that clause would give us the opportunity to alter the
spec. Only to provide in-line documentation on the existing spec.<br>
<font color=blue><span style='color:blue'>[gwp] the clause allows creation of derivative
work.<o:p></o:p></span></font></span></font></p>

<p class=MsoNormal style='margin-bottom:12.0pt'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'><br>
I'm not fond of the idea of creating yet another job ticket format. Ira
suggested that we use a simple serialisation of the internal data, which I
think is an acceptable option.<br>
<font color=blue><span style='color:blue'>[gwp] Not creating another job ticket
format; creating a mechanism to test JTAPI and example code without worry if using
a specific Job Ticket Format is up to date.&nbsp;&nbsp; <o:p></o:p></span></font></span></font></p>

<p class=MsoNormal style='margin-bottom:12.0pt'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'><br>
I would like a super-thin format for testing and the only thing thinner than
serialisation I can think of is a binary dump. Plus since it will break all the
time we do not have to worry about it escaping into the wild.<br>
<font color=blue><span style='color:blue'>[gwp] The intent is that a front-end
to JTAPI would accept XML or JSON; not data structures<o:p></o:p></span></font></span></font></p>

<p class=MsoNormal style='margin-bottom:12.0pt'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'><br>
Ira, if pwg has new properties does that mean jtapi will need an update? Are
the changes mostly aditive? By that I mean is it safe to implement the current
jtapi spec with the expectation that jtapi 2.0 will simply be larger?<br>
<br>
Daniel<o:p></o:p></span></font></p>

<div>

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'>2012</span></font><font face="MS Mincho"><span style='font-family:"MS Mincho"'>年</span></font>4<font
face="MS Mincho"><span style='font-family:"MS Mincho"'>月</span></font>9<font
face="MS Mincho"><span style='font-family:"MS Mincho"'>日</span></font>15:31
Petrie, Glen &lt;<a href="mailto:glen.petrie@eitc.epson.com">glen.petrie@eitc.epson.com</a>&gt;:<o:p></o:p></p>

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
color:blue'>As a reference I copied the Copyright license from a PWG candidate
standard which is copied below; I believe the license would give OP the right
to create an MJT specification from a PWG:MJT specification.&nbsp; However,
creating a new OP:JTAPI:JT specification to exercise JTAPI and to be used as an
example for other readers, writers, or convertors would be much better.</span></font><o:p></o:p></p>

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

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>This document may be copied and furnished to others, and derivative
works that comment on, or otherwise </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>explain it or assist in its implementation may be prepared, copied,
published and distributed, in whole or in </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>part, without restriction of any kind, provided that the above
copyright notice, this paragraph and the title of </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>the Document as referenced below are included on all such copies
and derivative works.&nbsp; </span></font><o:p></o:p></p>

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
<b><span style='font-weight:bold'>Sent:</span></b> Monday, April 09, 2012 8:37
AM</span></font><o:p></o:p></p>

<div>

<p class=MsoNormal><font size=3 face=Tahoma><span style='font-size:12.0pt;
font-family:Tahoma'><br>
<b><span style='font-weight:bold'>To:</span></b> Petrie, Glen; Ira McDonald<br>
<b><span style='font-weight:bold'>Cc:</span></b> Daniel Dressler; <a
href="mailto:printing-architecture@lists.linux-foundation.org" target="_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href="mailto:printing-summit@lists.linux-foundation.org" target="_blank">printing-summit@lists.linux-foundation.org</a><br>
<b><span style='font-weight:bold'>Subject:</span></b> Re: [Printing-summit]
[Printing-architecture] OPS Preparationminutes (28 March 2012)</span></font><o:p></o:p></p>

</div>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>Hi Glen,<o:p></o:p></span></font></p>

<div>

<p class=MsoNormal style='margin-bottom:12.0pt'><font size=3
face="Times New Roman"><span style='font-size:12.0pt'><br>
<br>
Right - my concern is that JTAPI reference implementation should<br>
normatively reference the source job ticket specification(s).<br>
<br>
MJT is dead-in-the-water as a PWG effort - but is copyrighted by<br>
PWG - therefore, not suitable for a normative reference.<br>
<br>
Also MJT does NOT address any of the post-IPP/1.1 (RFC 2911)<br>
properties in the PWG Print Job Ticket (i.e., the vast majority of<br>
the content in PWG PJT) - neither does the original JTAPI spec.<br>
<br>
I suggest a testing-only serialization of the internal JTAPI JT<br>
would be best for the OP JTAPI reference implementation.<o:p></o:p></span></font></p>

</div>

<div>

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'>Cheers,<br>
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

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>On Mon, Apr 9,
2012 at 10:46 AM, Petrie, Glen &lt;<a href="mailto:glen.petrie@eitc.epson.com"
target="_blank">glen.petrie@eitc.epson.com</a>&gt; wrote:<o:p></o:p></span></font></p>

</div>

<div>

<div>

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
color:blue'>What exactly is your concern?&nbsp;&nbsp; That the MJT is not
official? Not complete? Copyrighted? </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Why are you under the impression that OP would copy the PWG:MJT specification
to an OP:MJT specification.&nbsp; Maybe I missed something in one of the
emails.&nbsp; The only intent is use the PWG:MJT for the first JTAPI
implementation.&nbsp; </span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>Maybe it would be better not to use MJT.&nbsp;&nbsp; JTAPI (its
objects, elements, attributes and values), in itself, is a job ticket.
&nbsp;&nbsp;If the JTAPI project uses a JTAPI JT, then it can test all the
features in JTAPI.</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>&nbsp;</span></font><o:p></o:p></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>I will examine the JTAPI documentation and code to create a JTAPI
JT specification.&nbsp;&nbsp; </span></font><o:p></o:p></p>

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
<b><span style='font-weight:bold'>Sent:</span></b> Tuesday, April 03, 2012
12:44 PM</span></font><o:p></o:p></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face=Tahoma><span style='font-size:12.0pt;font-family:Tahoma'><br>
<b><span style='font-weight:bold'>To:</span></b> Petrie, Glen; Ira McDonald<br>
<b><span style='font-weight:bold'>Cc:</span></b> Daniel Dressler; <a
href="mailto:printing-architecture@lists.linux-foundation.org" target="_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href="mailto:printing-summit@lists.linux-foundation.org" target="_blank">printing-summit@lists.linux-foundation.org</a></span></font><o:p></o:p></p>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><font
size=3 face=Tahoma><span style='font-size:12.0pt;font-family:Tahoma;font-weight:
bold'>Subject:</span></font></b><font face=Tahoma><span style='font-family:
Tahoma'> Re: [Printing-summit] [Printing-architecture] OPS Preparationminutes
(28 March 2012)</span></font><o:p></o:p></p>

</div>

<div>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>Hi,<br>
<br>
The MJT is a *first* draft whitepaper in the PWG - NOT a standard<br>
or even a working draft in a chartered PWG working group.<br>
<br>
Nonetheless, that whitepaper carries a PWG copyright (it was a<br>
public submission by me, the sole author).&nbsp; So *I* can submit an <br>
updated draft whitepaper to the PWG at any time.<br>
<br>
But the MJT spec can't just be copied into an Open Printing document <br>
format and reissued as an OP working draft without a written copyright <br>
release from PWG.<br>
<br>
MJT covers the most common Job attributes - specifically the subset<br>
originally defined in IPP/1.0 (RFC 2566 - now obsoleted by RFC 2911).<br>
<br>
Cheers,<br>
- Ira<br>
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
 <st1:PostalCode w:st="on">48176</st1:PostalCode></st1:address>&nbsp; <a
href="tel:734-944-0094" target="_blank" value="+17349440094">734-944-0094</a><br>
Summer&nbsp; <st1:address w:st="on"><st1:Street w:st="on">PO Box</st1:Street>
 221</st1:address>&nbsp; Grand <st1:place w:st="on"><st1:City w:st="on">Marais</st1:City>,
 <st1:State w:st="on">MI</st1:State> <st1:PostalCode w:st="on">49839</st1:PostalCode></st1:place>&nbsp;
<a href="tel:906-494-2434" target="_blank" value="+19064942434">906-494-2434</a><o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>On Mon, Apr 2,
2012 at 5:37 PM, Petrie, Glen &lt;<a href="mailto:glen.petrie@eitc.epson.com"
target="_blank">glen.petrie@eitc.epson.com</a>&gt; wrote:<o:p></o:p></span></font></p>

<div link=blue vlink=blue>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 color=blue face=Cambria><span style='font-size:12.0pt;font-family:Cambria;
color:blue'>The issue with the MJT is if we want to change something, then we
need to go back to the PWG.&nbsp;&nbsp; But, unless Ira disagrees, I see no
reason to change the MJT for this phase of the JTAPI
development.&nbsp;&nbsp;&nbsp; Perhaps, the MJT will not exercise all of the
functionality of the JTAPI; in that case, we will add a “vendor extension”
which would actually be a good thing, because JTAPI must handle vendor
extension at some point.</span></font><o:p></o:p></p>

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
10.0pt;font-family:Tahoma'> <a
href="mailto:printing-architecture-bounces@lists.linux-foundation.org"
target="_blank">printing-architecture-bounces@lists.linux-foundation.org</a>
[mailto:<a
href="mailto:printing-architecture-bounces@lists.linux-foundation.org"
target="_blank">printing-architecture-bounces@lists.linux-foundation.org</a>] <b><span
style='font-weight:bold'>On Behalf Of </span></b>Daniel Dressler<br>
<b><span style='font-weight:bold'>Sent:</span></b> Monday, April 02, 2012 2:27
PM<br>
<b><span style='font-weight:bold'>To:</span></b> Petrie, Glen</span></font><o:p></o:p></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face=Tahoma><span style='font-size:12.0pt;font-family:Tahoma'><br>
<b><span style='font-weight:bold'>Cc:</span></b> <a
href="mailto:printing-architecture@lists.linux-foundation.org" target="_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href="mailto:printing-summit@lists.linux-foundation.org" target="_blank">printing-summit@lists.linux-foundation.org</a><br>
<b><span style='font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March
2012)</span></font><o:p></o:p></p>

</div>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>To continue my
last email I wanted to say that I would like it if Glen continued to be my
mentor. My biggest concern is about code quality and I think he can provide the
criticism and code review I need to improve. <o:p></o:p></span></font></p>

<div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'><br>
What exactly is the issue with implementing a micro job ticket backend? It was
my understanding that MJT would be a simple job ticket format and thus a good
one to implement as an example/development backend. Is there a reason we might
need to alter the MJT standard?<br>
<br>
Daniel<o:p></o:p></span></font></p>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

</div>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;margin-bottom:12.0pt'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'><br>
_______________________________________________<br>
Printing-summit mailing list<br>
<a href="mailto:Printing-summit@lists.linux-foundation.org" target="_blank">Printing-summit@lists.linux-foundation.org</a><br>
<a href="https://lists.linuxfoundation.org/mailman/listinfo/printing-summit"
target="_blank">https://lists.linuxfoundation.org/mailman/listinfo/printing-summit</a><o:p></o:p></span></font></p>

</div>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><font
size=3 face="Times New Roman"><span style='font-size:12.0pt'>&nbsp;<o:p></o:p></span></font></p>

</div>

</div>

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

<p class=MsoNormal><font size=3 face="Times New Roman"><span style='font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CD171B.2FEE1E44--
