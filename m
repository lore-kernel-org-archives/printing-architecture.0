MIME-Version: 1.0
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
Date: Fri, 10 Jul 2009 17:08:19 -0400
Message-ID: <e395be80907101408p52b58a9dxf17b31f48c5a23cc@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Hi,

I agree with every one of Glen's comments on CPD!
(mark this date on your calendars folks - smile)

In the CPD or *any* other part of Linux Printing System,
the MOST important aspect is to use printing industry
standard terms and options grouping.

All modern printing industry standards derive their
coherence from ISO Document Printing Application
(ISO 10175, early 1990s), including:

CIP4 JDF
- the basis of ALL production printing

IETF IPP
- the basis of CUPS and every modern spooler

OP JTAPI
- the coherent synthesis of JDF and IPP features

PWG Semantic Model
- comprehensive XML schema for all 18 IPP standards
  (used even in Microsoft WS-Print as a primary source)

With the publication of the First Edition of PWG IPP/2.0
(now in PWG Formal Vote until 31 July), a single reference
will cover most IETF and PWG IPP standards.

CUPS/1.4 already implements all of both IPP version 2.0
(workgroup) and version 2.1 (enterprise) conformance
requirements.

In the Second Edition of PWG IPP/2.0 later this year,
we will add IPP version 2.2 (production printing), and
coverage will extend to *every* IETF and PWG IPP
standard.

CPD designers and implementors - PLEASE pay careful
attention to the primary printing industry standards.

End users should NEVER have to waste their time
*understanding* a print dialog.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
  579 Park Place  Saline, MI  48176
  734-944-0094
summer:
  PO Box 221  Grand Marais, MI 49839
  906-494-2434



On Thu, Jul 9, 2009 at 12:39 PM, Petrie, Glen<glen.petrie@eitc.epson.com> w=
rote:
> All,
>
>
>
> I have not had time until now to look at the latest version of the CPD.
>
>
>
> I will on comment on the example denoted at the URL:
>
> http://wiki.openusability.org/printing/index.php/Personal_laser_parameter=
_specifications
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> My first =93very strong=94 recommendation, to all those individuals invol=
ved
> with the CPD, is that they read and understand the OpenPrinting JTAPI
> specification, object, attributes and values. =A0=A0=A0A great deal of
> print-domain knowledge, covering embedded-printing to production-printing=
;
> covering job-tickets to IPP; and years of the various individuals
> experience, went into creating and defining the JTAPI content. =A0=A0=A0O=
ne should
> think of a print dialog as the method for setting a print job-ticket.
>
>
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Section 1:
>
> A: Media Type (shown in Section 5) needs to be in this section since
> media-type and media-size (not paper-size) are connected. =A0For example,=
 I
> want to print on a CD; it is not paper and the size is defined by
> media-type.
>
>
>
> B: The =93paper size=94 has no =93default setting=94; the application sen=
ds the CPD
> the size of the media. =A0Setting the media-size is initially done in the
> application in the =93Page Setup=94. =A0The CPD is not doing setup functi=
ons.=A0 The
> user may override the media-size; even the orientation received from the
> application in the CPD; in which case the =93fit policy=94 would be invok=
ed.
>
>
>
> C: The word =93borders=94 I believe refers to =93margins=94. =A0It is not=
 the function
> of the CPD to set the margins. =A0The ability to set margin to a specific
> value or =93borderless=94 is done within the application in the =93Page S=
etup=94.
> =A0The =93Page Setup=94 within the application would have retrieved the c=
urrently
> selected printer=92s capabilities to know the printer=92s min/max margin =
and if
> the printer supports =93borderless=94 printing.
>
>
>
> D: I (nor I suspect most users) understand the meaning of the values for =
the
> =93fit=94 option; specifically, what does =93to paper=94 or =93shrink onl=
y=94 actually
> mean. =A0What will they actually do? =A0These types of tags I lump into a
> classification I call =93The Buttons, Icons, Controls and Labels of Confu=
sion
> (BICLC)=94.=A0 =A0The term typically used for =93fit policy=94, and defin=
ed in the
> JTAPI specification, are Clip-to-Page and (Scale)Fit-to-Page. =A0Also, th=
ere
> can not be a value of =93none=94.=A0 If the content does not fit the medi=
a-size,
> something has to be done; either clip or fit.
>
>
>
> =A0E: Another =93option=94 to consider for this section is an advanced bu=
tton.
> =A0The key to printing a specific print-quality (actually, better stated =
as a
> specific print-intent) is to know more about the media being printed to.
> =A0=A0That is, for example using paper; what is brightness, the weight, t=
he
> finish (rough, smooth, polished), color, etc. =A0From these facts, the pr=
inter
> driver can tune its color-to-ink processing and other factors to achieve =
the
> best output for the user print intent.=A0 Typically, a user can easily fi=
nd
> this information on the cover of the media being used in the printer. =A0=
Note,
> I have not seen this kind of processing done in color-management processi=
ng
> software.
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Section 2:
>
> A: The label =93page(s)=94 is better stated as =93page(s) to print=94.
>
>
>
> B: Above the current =93page(s)=94 field there should be a button for pri=
nting
> the =93current page=94. =A0The current page (number) is provided to the C=
PD from
> the application. =A0=A0Or the application is requested to provide only th=
e
> =93current page=94.
>
>
>
> C: Above the current =93page(s)=94 field there should be a button for pri=
nting
> the =93selection=94. =A0The application is requested to provide only the =
=93selected
> content=94.
>
>
>
> D: Above the current =93page(s)=94 field there should be a button for pri=
nting
> the =93Clipboard=94. =A0The content of the clipboard is printed.
>
>
>
> E: Any combination of B:/C:/D:/page(s) should be possible. =A0For example=
, I
> want to print the clipboard, the currently selected content and page 3 of
> the content.
>
>
>
> F: The label =93pages per side=94 will be confused with =93sides per page=
=94. =A0=A0A
> more generally accept terms are =93Print Layout
> =A0or =93Page Layout=94 or just =93Layout=94 and the options are 1 page, =
2, pages, 4
> pages, etc.=A0 Default is =931 page=94
>
>
>
> G: For the values of =93pages per side=94, the typical values are 1, 2, 3=
, 4, 6,
> 8, 9. Beyond 9, it is really hard to read the output. Printing 25 pages p=
er
> side seem silly.=A0 If the intent is to print =93thumbnails=94 then that =
should be
> a value.
>
>
>
> H: If you allow =93pages per side=94, there should be an option for
> =93presentation direction=94. =A0=A0Again, the OpenPrinting JTAPI specifi=
cation
> provides the values for this option.
>
>
>
> I: I never heard of the option called =93poster=94 in a print dialog and =
if I
> understand it correctly, it is how to print a large content-page on many
> printed-pages. =A0This is not an option for the CPD.=A0 Again, this a set=
up
> option and should be controlled by the application. =A0=A0This is not a s=
imple
> process (I know from experience).=A0=A0 For example, does each page have =
a set
> amount of content overlay for piecing the pages together or are
> alignment-marks used. =A0For non-borderless media, are cut-line printed.=
=A0=A0 So
> forth, and so forth.
>
>
>
> J: The label =93both sides=94, again, is strange.=A0 =93sides=94 would be=
 better or
> use the word =93duplex=94. =A0I believe most people today are used to the=
 term
> duplex.
>
>
>
> K: I believe =93page turning=94 refers to =93binding edge=94 or just =93b=
inding=94,
> which has values of top, left, right.=A0 =A0Introducing new terminology t=
o print
> is just confusing.
>
>
>
> L: =93page turning=94 has no =93off=94 state. =A0When =93sides=94 is set =
to one, then
> =93page-turning=94 is deactivated.=A0 When =93sides=94 is set to two, the=
n the default
> for =93page turning=94 has to be some real value (top, left, or right) bu=
t not
> =93off=94.
>
>
>
> M: It would be nice to have a =93binding type=94 option (again, see JTAPI
> specification for values) and to overlay the binding on the print-page. =
=A0For
> example, a 3-hole punch would print the location of the holes on the fina=
l
> printed page.=A0 At a minimum, it needs to be in the preview.
>
>
>
> N: One really nice addition would be to show the media size values (width
> and height; both in inch and mm). =A0Not every one knows the dimensions o=
f all
> the various paper sizes.
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Section 3:
>
>
>
> A: Sorry, but =93resolution=94 is a numerical specification.=A0 The corre=
ct label
> should be =93print quality=94 or just =93quality=94. =A0=A0=A0Please look=
 at the JTAPI
> Specification.=A0 Also note, that many debates have been done in the prin=
ting
> community on how to specify quality. =A0The JTAPI specification values ar=
e
> those agreed upon by the community. =A0Please do not invent new values th=
at
> have no concrete meaning and, thus, are left open to interpretation by al=
l
> entities along the print chain.
>
>
>
> B: Sorry, but =93color settings=94 are not related to =93text and photo=
=94. The
> correct label should be =93print content=94 or just =93content=94. =A0You=
 could even
> call this =93print intent=94 or just =93intent=94. =A0Please look at the =
JTAPI
> Specification.=A0 Also note, that many debates have been done in the prin=
ting
> community on how to specify content. =A0The JTAPI specification values ar=
e
> those agreed upon by the community. =A0Please do not invent new values th=
at
> have no concrete meaning and, thus, are left open to interpretation by al=
l
> entities along the print chain.
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Section 4:
>
>
>
> A:=A0 I would add the following options:
>
> =A0=A0=A0 A1: For any, add orientation.=A0 (many watermarks are placed at=
 45
> degrees)
>
> =A0=A0=A0 A2: For text , add color (unless that will be in the =93format =
text=94
> option)
>
> =A0=A0=A0 A3: For any, add =93placement=94 label with values like =93tile=
, scale-to-fit,
> top, bottom=94.
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Section 5:
>
>
>
> A:=A0 Please change the label =93which way-up=94 (not even good English).=
 =A0=A0The
> JTAPI variable is =93output orientation=94. Please look at the JTAPI
> Specification.
>
>
>
> B. =93output order=94 option is missing. =A0Please look at the JTAPI
> Specification.
>
>
>
> C: =93output bin=94 option is missing. =A0Please look at the JTAPI Specif=
ication.
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Other
>
> A: There needs to be an option for a =93cover sheet=94
>
>
>
> B: A new issue arising in the print world is that of security. =A0For exa=
mple,
> one the simplest security features for networked printers is =93print onl=
y
> when at printer=94. =A0The user must enter a code to start the print proc=
ess.
> =A0This needs to be set in the CPD.=A0=A0 I know this out of scope right =
now but
> since we are in the design/conception phase of this project; security nee=
ds
> to be addressed.
>
>
>
> C: I really don=92t think that the preview is providing sufficient inform=
ation
> to the user. =A0For example, for n-up, the preview should show the n-up. =
=A0For
> a binding edge, there should be a graphical indication of which edge. =A0=
=A0For
> two-sided printing, the preview should show a turned corner (the corner
> changes depending if the page being displayed is the front or back page).
> =A0And so forth and so forth.
>
>
>
> Glen
>
>
>
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>
