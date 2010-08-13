Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Aug 2010 10:23:10 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F57F3D5@EEAEX03.us.epson.net>
References: <AANLkTikf+MFZuATWROSoMch1o9HRDj3nzOXqh2RHkTay@mail.gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] EXTENDED Last Call - OP Vector
	PrinterDriver API/1.0 - ends 20 August
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, printing-architecture@lists.linux-foundation.org, Printing-japan <printing-japan@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>, Osamu MIHARA <osamu.mihara@fujixerox.co.jp>

My editorial comments.

Overall=20
It would be very nice to have a table showing what API's are mandatory =
and in the order they should be called.

I recommend adding to each API definition section, the possible return =
error values (names) or have a table with this information.
=20

Page 12, Line 6
Change the word "should" to "MUST" to enforce desired encoding.

Page 12, Line 8
Change the word "should" to conformance "SHOULD". =20
(I would like to have "MAY" instead of "SHOULD".  If a printer (driver) =
cannot hold an entire print job (one or more documents with one or more =
pages per document) then the printer (driver) may only be able to =
discard the current page.)=20

Page 13, line 7
Change "can" to "MAY".
(I would eliminate this exception to enforce desired encoding -- by the =
caller!!.  This really means that a opvpStartJob MUST internal maintain =
(create) a default document object in case the caller does not call =
opvpStartDoc.)

Page 13, Paragraph at line 28
Based on the type of printers targeted for this specification, I believe =
there is no saving by not specifying jobInfo.  Again, to enforce desired =
encoding by the caller, the caller "MUST" provide jobInfo (even it is =
the printer's default).

If the concept of a NULL jobInfo is desired then...
Page 13, line 28
Change the "SHOULD" to "MUST"
(Should this specification recommend a set of default attributes?  For =
example: Orientation: portrait, Page Size: A4 or Letter, Number Up: 1x1, =
Duplex: Simplex, Resolution: 'not stated', Input Tray; Device Setting, =
Output Bin: Device Setting, Media Type: Stationery (Plain-Cut Sheet), =
Media Copy: 1, Print Quality: Normal.
This way a caller has at least some expectation of output.)

Page 13, Sentence starting with "When the caller..." in Line 25.
My understanding of this sentence is to state that all print jobs are =
independent of each other?  From the driver perspective, this "MUST" =
always be true.  (The caller / client is allowed to reuse job/doc/page =
info for one or more jobs but the driver must never do this.)
=20
Page 13, Paragraph at line 30
What is the necessity for supporting "Nested Print Jobs"?  How would a =
user submit a nested print job?   It appears that a "docInfo" / =
"pageInfo" can override "jobInfo", so I do not understand the need for =
this capability and complexity.


Page 14, line 33
If opvpStartDoc is always required then change "The caller should.. " to =
"The caller MUST.. ".  Later in the same sentence, change "...function, =
and before ..." to ... function, and MUST call before..."

Page 14, Paragraph at Line 36
I believe this states "All docInfo is independent between documents."

Page 14, Paragraph at Line 40
I would not recommend supporting a NULL docInfo. However, if it is =
supported then the sentence at line 40 should become:
"If the caller passes NULL for the docInfo, the printer driver MUST use =
the jobInfo properties for the document."

Page 14, Paragraph at line 42
Again, what is need to supported nested documents?
=20
Page 15, Line 36
Suggest the following "If the caller passes NULL for the pageInfo, the =
printer driver MUST use the docInfo properties for the document."

Page 19, Paragraph starting at line 2.
Add a sentence stating this format and values are used for query =
capability and query info API's.

Page 19, Sentence on Line 3 start with "Supported attributes..."
Where is the specification for the "printer driver database file"?

Page 19, Line 13
Change "printer driver should" to "printer driver MUST"

Page 19, Line 14
Add sentence.  "If no value is found that can be used with the current =
settings, the driver MUST return an error."  (Example, Duplex with =
continuous media-type with the landscape orientation (for portrait roll =
paper).

Page 19, Line 18
What does "ignore" mean?  Does this return an error or use a default =
value?  Since there is no concept in this specification of "best =
effort", I believe "ignore" translates to return-an-error.

Page 20, Paragraph
Because of importance of "overrides" I would give this paragraph its own =
section.  I.e. 4..4.1 Overrides

Page 23, opvpSaveGS API
Can this API be called more than once before calling Restore; in other =
words, can you save different GSO on the stack?  So that in the =
opvpRestoreGS would restore the top-most GSO from the stack which could =
have several GSO stored.  Is there a limit on the number that can be =
saved or does a "stack-overflow" error occur?

Page 24, Line 11
What is the "preferred color space"?  I would recommend that the first =
color space in the list be the default; otherwise, just list them since =
I believe if you support a color space there is not preference.=20

Page 24, Line 28
Can you support a NULL value, in which case, the default color space =
(first in the list) is used?

Page 26, Paragraph at line 39
If the line width is less or greater than supported by driver, is an =
error returned or is the min or max value used?  I think caller =
(developer) needs to understand better what will happen.


(eyes glazing over,  will continue later!)

glen


> -----Original Message-----
> From: printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> Behalf Of Ira McDonald
> Sent: Tuesday, August 10, 2010 9:47 AM
> To: printing-architecture@lists.linux-foundation.org; Printing-japan; =
Till
> Kamppeter; Osamu MIHARA; Ira McDonald
> Subject: [Printing-architecture] EXTENDED Last Call - OP Vector
> PrinterDriver API/1.0 - ends 20 August
>=20
> Hi,
>=20
> Till and I just decided to extend the OP Last Call of OPVP API
> for one extra week.
>=20
> So your comments will be welcome until:
>=20
>    Friday 20 August 2010
>=20
> Next Steps:
>=20
> (1) OP Japan should review comments during their meeting in late
>       August.
>=20
> (2) Editors should create a new Stable draft by early September
>=20
> (3) OP Steering Committee should approve this as OP Standard
>=20
> (4)  Future LSB versions should reference this OP Standard.
>=20
> Cheers,
> - Ira (Chair - Open Printing WG)
>=20
>=20
>=20
> On Tue, Jul 13, 2010 at 4:53 PM, Ira McDonald =
<blueroofmusic@gmail.com>
> wrote:
> > Greetings,
> >
> > Starting today and ending on Friday 13 August 2010, I am pleased to
> > announce the Open Printing WG Last Call of the OP Vector Printer
> > Driver API/1.0, which is located at:
> >
> > =
=A0ftp://ftp.pwg.org/pub/pwg/openprinting/vector/opvp-spec-1.0rc6.pdf
> >
> > Please positively confirm that you have reviewed this specification
> > and either (a) have comments or (b) have no comments, as follows:
> >
> > =A0To: printing-architecture@lists.linux-foundation.org
> > =A0Subject: <Company/Individual> has <no> comments on OP Vector =
API/1.0
> >
> > Please include both page number and line number for each of
> > your comments (they are present in the above PDF file).
> >
> > Cheers,
> > - Ira (Chair Open Printing WG)
> >
> > Ira McDonald (Musician / Software Architect)
> > Chair - Linux Foundation Open Printing WG
> > Co-Chair - TCG Hardcopy WG
> > IETF Designated Expert - IPP & Printer MIB
> > Blue Roof Music/High North Inc
> > http://sites.google.com/site/blueroofmusic
> > http://sites.google.com/site/highnorthinc
> > mailto:blueroofmusic@gmail.com
> > winter:
> > =A0 579 Park Place=A0 Saline, MI=A0 48176
> > =A0 734-944-0094
> > summer:
> > =A0 PO Box 221=A0 Grand Marais, MI 49839
> > =A0 906-494-2434
> >
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linux-foundation.org/mailman/listinfo/printing-architecture=

