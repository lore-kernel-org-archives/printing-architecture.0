Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----_=_NextPart_001_01CCB05D.ACFF91FD"
Date: Thu, 1 Dec 2011 11:16:06 -0800
Message-ID: <E8C3B9E653C80C48B0951F8494C049A90267EE@EEAEX02.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Conceptual Model for Common Mobile Print
	Dialog (Client)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, "Zehler,
	Peter" <Peter.Zehler@xerox.com>

This is a multi-part message in MIME format.

------_=_NextPart_001_01CCB05D.ACFF91FD
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_002_01CCB05D.ACFF91FD"


------_=_NextPart_002_01CCB05D.ACFF91FD
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,=20

=20

below is my current conceptual model for Mobile Common Print Dialog.  I
would like feedback so that I go continue to defining the details.   I
would also like to discuss it at the next phone conference meeting.=20

=20

The very first thing I would like to do is change the name of the Common
Mobile Print Dialog to Common Mobile Print Client (CMPC)

=20

Need/Requirements:

1.      Provide a Print Client usable by any Application or the
Operating System.

2.      Provide a Print Client with a common User experience

3.      Provide a Print Client requiring minimum resources suitable for
mobile solutions

4.      Processing/Processes should minimize interaction to minimize
connectivity complexities.=20

=20

=20

Preconditions:

1.      The Application is not concerned with the mechanic, outcome or
status of printing.=20

2.      The CMPC is not concerned with the outcome or status of
printing.=20

3.      The CMPC may not be in the same security domain as the
Application or Print Preview Service

4.      A Print Service may not be in the same security as other print
entities

5.      The CMPC, by extending meaning of common, is usable by all
Applications.=20

=20

Definitions:

Application-Page-Size:=20

This is the page size (not print page size) used by the Application
formatted the content within the application.

Print-Page-Size:

This is the page size of the printed Print Content.

=20

=20

Identify Entities Associated with the Mobile print chain.

Application:                            The creator of the Print
Content.

Common Mobile Print Client: The creator of a Print Job.

Print Preview Service:          The entity to display a preview of the
Print Content

            Print Service:                         The entity that
executes a Print Job

            Print Status Service:              The entity that displays
status to the user.

=20

Identify Major Data Objects

Print Job

Print Job Info=20

Print Job Ticket

Print Content

Print Content Properties

Print Service Capabilities=20

Print Preview Data

Print State, Status, Error Data

=20

Overview Discussion: In a nutshell

This conceptual model identifies and defines the roles and
responsibilities to the principle entities in a mobile print chain with
the goal of defining the Common Mobile Print Client (CMPC) and
associated Print Preview Service (PPS). =20

When an Application supports Print Preview, the Application generates
both the Print Content (in standard format and for access by reference)
and a Print Preview Data (File).  The Application then invokes the Print
Preview Service.  The Print Preview Service will then invoke the CMPC to
establish a communication channel (which is solution/binding dependent).
Based on the capability data of the user selected Print Service, the
CMPC will provide a mechanism for the User to select Print Job
options/settings.   Any Print Job options/settings that affect the Print
Preview are communicated to the Print Preview Service to update the
preview.   When the User is done (presses the OK button) the CMPC will
generate a Print Job (Print Job Info + Print Job Ticket + Print Content)
in the format specified in the Print Service Capability data.   The CMPC
then sends the Print Job to the specified Print Service.   During
printing, the Print Service will send Print Job, Printer, Printing
state, status and error data to the Print Status Service.=20

=20

When the Application does not support Print Preview, the Application
generates the Print Content Data (in standard format and for access by
reference) and directly invokes the CMPC.  There is no feed back to the
Application from the CMPC.  Once the User is done setting Print Job
options/settings, operations proceed as described above.=20

=20

To provide secure operations it is necessary that the Print Preview
Service be in the same security domain as the Application.  This means
that the Print Content is at no increased security risk when being
displayed by the Print Preview Service.   The CMPC does not receive or
need the actual Print Content; the CMPC only needs the Print Content
URL, Print Content access credentials (if any) and Print Content
properties (number of pages, page size, etc).   Thus, the CMPC does not
have to be in the same security domain and needs no special security
functionality.  This also supports the concept of a single (common) CMPC
that can be used by all applications.   The Print Service for mobile and
cloud environments, in many cases, will not be in the same domain or
security domain as the Application or even the CMPC.  Thus, the Print
Service uses the data from the Print Content object of the Print Job to
access the actual Print Content.   (When in the same domain, this is
quite simple; while when there a multiple domains or differing security
domains, this is more complex and may require secure connectivity.)

=20

=20

Roles and Responsibilities of individual Entities

Application: The creator of the Print Content.

Applications, in general, do not care about printing or whether printing
succeeded or failed.  Applications want to support printing with minimal
efforts AND with little or no change over time.   To meet this need,
entities involved in the print chain must be independent from the
Application and the Application only has to provide two required data
objects and one optional data object.  The two required data objects are
the Print Content and the Print Content Properties.   The optional data
is the Print Preview data.=20

=20

Since it impossible to support all Application data format types, the
Application Content must be rendered by the Application in to one of the
support standard Print Content Formats; namely, PDF, PWG:Raster, jpeg.
Other formats may be added at a later date.   A critical issue is that
the Print Content rendered by the Application is formatted according the
Application Content Attributes.  This means that Application renders the
content based on the Application's (or system's default) page size,
margins, and so forth.  This applies simple text document and web pages.


=20

[If the Application were to interact with the CMPC to obtain media size
attributes, it would require a complex interaction of the CMPC, the user
and one or more Print Services.   So, if the User wants the Print Page
Size to be equal to the Application Page Size, the User must set, within
the Application, the Application Page Size to match the Print Page Size.
Note if the CMPC were part of the Application, this would be a non issue
but we don't want every Application to have or need to provide its own
CMPC.  Thus, Applications must provide support for setting the
Application's Page Size information independent of any print entity.  In
the worst case the Application must obtain a default "Application Page
Size" from the operating system.]

=20

The Print Content Properties are a description of the Print Content
versus the actual content.  This allows the CMPC to be in a separate
domain from the Application and does not require the CMPC to (correctly)
extract properties from the Print Content directly.   Beyond the basic
content properties the Print Content Properties contains the information
required in the Print Job Ticket on how to access the actual Print
Content.=20

=20

The optional Print Preview data is used by Print Preview Service.
After experimentation, it has determined that a very simple, low dpi
representation of the Print Content is all that is required for the
preview functionality.   Because the Application will render the Print
Content based on the Application's page attributes and not the Print's
page attributes, the Application only has to generate the Print Preview
Content ONCE! =20

=20

Print Preview Service: The entity to display a preview of the Print
Content

The functionality of the Print Preview Service is to provide the user
with a preview of their content in the form factor as it will printed.
With the independent concepts of the Application Page Size and the Print
Page Size; the Print Preview Service requires no feedback from the
Application (!) only from the CMPC.  What the Print Preview Service
needs from the Application is a representation of the Print Content in a
common format.   After some experimentation it was determined that a
simplified version of the PWG:Raster format could be used.   The preview
format produces a very small file to minimize resource needs on the
mobile device.=20

=20

Why must the Print Preview Service call the CMPC?  This is to establish
communication and connectivity between the two entities.  If the
Application were to invoke the Print Preview Service and the CMPC
independently; then there would need for a method for each entity to
communicate with the other.  If the Print Preview Service invokes the
CMPC, then the Print Preview Service can provide the CMPC with
communication information.  (For example, in the case of pipes on the
same system, the Print Preview Service launches the CMPC as a service to
itself.)=20

=20

The Print Preview Service never sends Print Content information or data
to the CMPC.  The Print Preview Service only accepts print attributes
and values that would directly affect the preview.  Examples include
N-up, print in black, page-range, scaling, rotation and so forth.  These
are all attributes that the Print Preview Service can render to the
Print Preview data independent of the Application.

=20

Common Mobile Print Client: The creator of a Print Job.

[Note: While I have conceptual model for how the CMPC obtains the Print
Services Capabilities, it will not be discussed here.  For this
discussion it is assumed the User has selected a Print Service and the
Print Service Capability data has been provided to the CMPC.]

=20

The CMPC is responsible for providing the User with a mechanism to set
print/printing attributes and to create (generate) a Print Job (Object).
The "mechanism" is a discussion for another email thread because it has
at least or maybe more complexity in the "how" that is done.   The only
important item, for this discussion, about the interaction with the User
in the setting of print/printing attributes is that (asynchronously)
print/printing attributes that affect the preview are communicated with
the Print Preview Service.=20

=20

Once the User has completed setting print/printing attributes, the CMPC
generate a Print Job consisting of Print Job Info, Print Job Ticket and
Print Content (Info).  At this point the CMPC makes a request to the
Print Service for a new job.   To allow for independent and isolation of
responsibilities, the Print Status Service will receive an update if the
job was accepted or not.   For the CMPC there are two choices.  The
first (the one I favor) is to signal the Print Preview Service to end
and for the CMPC to end.  (If the Print Job fails the User must fix the
problem and, via the Application, do a new print request.  The
alternative is the CMPC waits for a reply from the Print Service on
acceptance of the Print Job.  If the Print Job is rejected, the CMPC
informs the User and allows the User to change the print/printing
settings or to cancel the print request.   No matter what, if the Print
Job is accept by the Print Service the CMPC (and the Print Preview
Service) terminate.=20

=20

What about the issue or difference between the Application Page Size and
the Print Page Size.  The User would have a setting for scaling or
cropping when the two page size are different.   Thus, there is a
transform process when different and the transform is performed BY THE
PRINT SERVICE.=20

=20

=20

            Print Service: The entity that executes a Print Job

A Print Service executes a Print Job.  At this level of discussion, we
do not care how it does it; only that it does.  The only interaction
with another entity is with the Print Status Service.

=20

            Print Status Service:  The entity that displays status to
the user.

This is an independent entity that the display or provides to the User
feedback (state, status, errors) concerning the Print Job that the User
selected (wanted) to be informed of.

=20

=20

=20

=20

=20

=20

=20

=20


------_=_NextPart_002_01CCB05D.ACFF91FD
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"PlaceType"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"PlaceName"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
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
	mso-list:l3 level1 lfo4;
	font-size:14.0pt;
	font-family:Cambria;}
h2
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l1 level2 lfo5;
	font-size:14.0pt;
	font-family:Cambria;}
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
	{color:purple;
	text-decoration:underline;}
p.StyleHeading1NotBoldBlack, li.StyleHeading1NotBoldBlack, =
div.StyleHeading1NotBoldBlack
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l3 level2 lfo4;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:Cambria;
	color:windowtext;
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
	mso-list-template-ids:9729752;}
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
	{mso-level-style-link:"Heading 2";
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
	{mso-list-id:329136865;
	mso-list-type:hybrid;
	mso-list-template-ids:622208580 2109873162 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l3
	{mso-list-id:675117133;
	mso-list-template-ids:-319017128;}
@list l3:level1
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
@list l3:level2
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
@list l4
	{mso-list-id:923609856;
	mso-list-type:hybrid;
	mso-list-template-ids:701522370 2109873162 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>All, <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>below is my current conceptual model for Mobile =
Common
Print Dialog.&nbsp; I would like feedback so that I go continue to =
defining the
details.&nbsp;&nbsp; I would also like to discuss it at the next phone
conference meeting. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>The very first thing I would like to do is change =
the name
of the Common Mobile Print Dialog to Common Mobile Print Client =
(CMPC)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Need/Requirements:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l2 level1 =
lfo7'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Provide a Print =
Client usable by
any Application or the Operating System.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l2 level1 =
lfo7'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Provide a Print =
Client with a
common User experience<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l2 level1 =
lfo7'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>3.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Provide a Print =
Client requiring
minimum resources suitable for mobile =
solutions<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l2 level1 =
lfo7'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>4.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Processing/Processes =
should
minimize interaction to minimize connectivity complexities. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Preconditions:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l4 level1 =
lfo6'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>The Application is =
not concerned
with the mechanic, outcome or status of printing. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l4 level1 =
lfo6'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>The CMPC is not =
concerned with
the outcome or status of printing. <o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l4 level1 =
lfo6'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>3.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>The CMPC may not be =
in the same
security domain as the Application or Print Preview =
Service<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l4 level1 =
lfo6'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>4.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>A Print Service may =
not be in
the same security as other print entities<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l4 level1 =
lfo6'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>5.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>The CMPC, by =
extending meaning
of common, is usable by all Applications. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Definitions:<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Application-Page-Size: =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>This is the page size =
(not print
page size) used by the Application formatted the content within the
application.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print-Page-Size:<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>This is the page size of =
the
printed Print Content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Identify Entities Associated with the <st1:place =
w:st=3D"on">Mobile</st1:place>
print chain.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Application: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The
creator of the Print Content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Common <st1:place =
w:st=3D"on">Mobile</st1:place>
Print Client: The creator of a Print Job.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Preview Service: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The
entity to display a preview of the Print =
Content<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Print
Service:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The
entity that executes a Print Job<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Print
Status =
Service:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; The
entity that displays status to the user.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Identify Major Data =
Objects<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print =
Job<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Job Info =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Job =
Ticket<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print =
Content<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Content =
Properties<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Service =
Capabilities <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Preview =
Data<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><st1:place =
w:st=3D"on"><st1:PlaceName
 w:st=3D"on"><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:
  Cambria'>Print</span></font></st1:PlaceName><font face=3DCambria><span
 style=3D'font-family:Cambria'> <st1:PlaceType =
w:st=3D"on">State</st1:PlaceType></span></font></st1:place><font
face=3DCambria><span style=3D'font-family:Cambria'>, Status, Error =
Data<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Overview Discussion: In a =
nutshell<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>This conceptual model =
identifies
and defines the roles and responsibilities to the principle entities in =
a
mobile print chain with the goal of defining the Common Mobile Print =
Client
(CMPC) and associated Print Preview Service (PPS).&nbsp; =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>When an Application =
supports Print
Preview, the Application generates both the Print Content (in standard =
format
and for access by reference) and a Print Preview Data (File).&nbsp; The =
Application
then invokes the Print Preview Service.&nbsp; The Print Preview Service =
will
then invoke the CMPC to establish a communication channel (which is =
solution/binding
dependent).&nbsp; Based on the capability data of the user selected =
Print
Service, the CMPC will provide a mechanism for the User to select Print =
Job
options/settings.&nbsp;&nbsp; Any Print Job options/settings that affect =
the Print
Preview are communicated to the Print Preview Service to update the =
preview. &nbsp;&nbsp;When
the User is done (presses the OK button) the CMPC will generate a Print =
Job (Print
Job Info + Print Job Ticket + Print Content) &nbsp;in the format =
specified in
the Print Service Capability data.&nbsp;&nbsp; The CMPC then sends the =
Print Job
to the specified Print Service.&nbsp;&nbsp; During printing, the Print =
Service
will send Print Job, Printer, Printing state, status and error data to =
the Print
Status Service. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>When the Application does =
not
support Print Preview, the Application generates the Print Content Data =
(in
standard format and for access by reference) and directly invokes the =
CMPC.&nbsp;
There is no feed back to the Application from the CMPC.&nbsp; Once the =
User is
done setting Print Job options/settings, operations proceed as described =
above.
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>To provide secure =
operations it is
necessary that the Print Preview Service be in the same security domain =
as the
Application.&nbsp; This means that the Print Content is at no increased
security risk when being displayed by the Print Preview =
Service.&nbsp;&nbsp;
The CMPC does not receive or need the actual Print Content; the CMPC =
only needs
the Print Content URL, Print Content access credentials (if any) and =
Print
Content properties (number of pages, page size, etc).&nbsp;&nbsp; Thus, =
the
CMPC does not have to be in the same security domain and needs no =
special
security functionality.&nbsp; This also supports the concept of a single
(common) CMPC that can be used by all applications.&nbsp;&nbsp; The =
Print
Service for mobile and cloud environments, in many cases, will not be in =
the
same domain or security domain as the Application or even the =
CMPC.&nbsp; Thus,
the Print Service uses the data from the Print Content object of the =
Print Job
to access the actual Print Content.&nbsp;&nbsp; (When in the same =
domain, this
is quite simple; while when there a multiple domains or differing =
security
domains, this is more complex and may require secure =
connectivity.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Roles and Responsibilities of individual =
Entities<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Application: The creator =
of the
Print Content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Applications, in general, =
do not
care about printing or whether printing succeeded or failed.&nbsp; =
Applications
want to support printing with minimal efforts AND with little or no =
change over
time. &nbsp;&nbsp;To meet this need, entities involved in the print =
chain must
be independent from the Application and the Application only has to =
provide two
required data objects and one optional data object.&nbsp; The two =
required data
objects are the Print Content and the Print Content =
Properties.&nbsp;&nbsp; The
optional data is the Print Preview data. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Since it impossible to =
support all
Application data format types, the Application Content must be rendered =
by the
Application in to one of the support standard Print Content Formats; =
namely,
PDF, PWG:Raster, jpeg.&nbsp; Other formats may be added at a later
date.&nbsp;&nbsp; A critical issue is that the Print Content rendered by =
the
Application is formatted according the Application Content =
Attributes.&nbsp; This
means that Application renders the content based on the =
Application&#8217;s (or
system&#8217;s default) page size, margins, and so forth.&nbsp; This =
applies
simple text document and web pages. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>[If the Application were =
to
interact with the CMPC to obtain media size attributes, it would require =
a
complex interaction of the CMPC, the user and one or more Print =
Services.&nbsp;&nbsp;
So, if the User wants the Print Page Size to be equal to the Application =
Page
Size, the User must set, within the Application, the Application Page =
Size to
match the Print Page Size.&nbsp; Note if the CMPC were part of the =
Application,
this would be a non issue but we don&#8217;t want every Application to =
have or
need to provide its own CMPC.&nbsp; Thus, Applications must provide =
support for
setting the Application&#8217;s Page Size information independent of any =
print
entity.&nbsp; In the worst case the Application must obtain a default =
&#8220;Application
Page Size&#8221; from the operating =
system.]<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The Print Content =
Properties are a
description of the Print Content versus the actual content.&nbsp; This =
allows
the CMPC to be in a separate domain from the Application and does not =
require
the CMPC to (correctly) extract properties from the Print Content =
directly. &nbsp;&nbsp;Beyond
the basic content properties the Print Content Properties contains the
information required in the Print Job Ticket on how to access the actual =
Print
Content. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The optional Print =
Preview data is
used by Print Preview Service.&nbsp;&nbsp; After experimentation, it has =
determined
that a very simple, low dpi representation of the Print Content is all =
that is
required for the preview functionality.&nbsp;&nbsp; Because the =
Application will
render the Print Content based on the Application&#8217;s page =
attributes and
not the Print&#8217;s page attributes, the Application only has to =
generate the
Print Preview Content ONCE!&nbsp; <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Print Preview Service: =
The entity
to display a preview of the Print Content<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The functionality of the =
Print Preview
Service is to provide the user with a preview of their content in the =
form
factor as it will printed. &nbsp;With the independent concepts of the
Application Page Size and the Print Page Size; the Print Preview Service
requires no feedback from the Application (!) only from the CMPC.&nbsp; =
What
the Print Preview Service needs from the Application is a representation =
of the
Print Content in a common format. &nbsp;&nbsp;After some experimentation =
it was
determined that a simplified version of the PWG:Raster format could be
used.&nbsp;&nbsp; The preview format produces a very small file to =
minimize
resource needs on the mobile device. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Why must the Print =
Preview Service
call the CMPC?&nbsp; This is to establish communication and connectivity
between the two entities.&nbsp; If the Application were to invoke the =
Print Preview
Service and the CMPC independently; then there would need for a method =
for each
entity to communicate with the other.&nbsp; If the Print Preview Service
invokes the CMPC, then the Print Preview Service can provide the CMPC =
with
communication information.&nbsp; (For example, in the case of pipes on =
the same
system, the Print Preview Service launches the CMPC as a service to =
itself.) <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The Print Preview Service =
never
sends Print Content information or data to the CMPC.&nbsp; The Print =
Preview Service
only accepts print attributes and values that would directly affect the
preview.&nbsp; Examples include N-up, print in black, page-range, =
scaling,
rotation and so forth.&nbsp; These are all attributes that the Print =
Preview
Service can render to the Print Preview data independent of the =
Application.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Common <st1:place =
w:st=3D"on">Mobile</st1:place>
Print Client: The creator of a Print Job.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>[Note: While I have =
conceptual
model for how the CMPC obtains the Print Services Capabilities, it will =
not be
discussed here.&nbsp; For this discussion it is assumed the User has =
selected a
Print Service and the Print Service Capability data has been provided to =
the CMPC.]<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The CMPC is responsible =
for
providing the User with a mechanism to set print/printing attributes and =
to
create (generate) a Print Job (Object). &nbsp;&nbsp;The =
&#8220;mechanism&#8221;
is a discussion for another email thread because it has at least or =
maybe more
complexity in the &#8220;how&#8221; that is done. &nbsp;&nbsp;The only
important item, for this discussion, about the interaction with the User =
in the
setting of print/printing attributes is that (asynchronously) =
print/printing
attributes that affect the preview are communicated with the Print =
Preview Service.
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Once the User has =
completed
setting print/printing attributes, the CMPC generate a Print Job =
consisting of
Print Job Info, Print Job Ticket and Print Content (Info).&nbsp; At this =
point
the CMPC makes a request to the Print Service for a new job.&nbsp;&nbsp; =
To
allow for independent and isolation of responsibilities, the Print =
Status
Service will receive an update if the job was accepted or =
not.&nbsp;&nbsp; For
the CMPC there are two choices.&nbsp; The first (the one I favor) is to =
signal
the Print Preview Service to end and for the CMPC to end.&nbsp; (If the =
Print
Job fails the User must fix the problem and, via the Application, do a =
new
print request.&nbsp; The alternative is the CMPC waits for a reply from =
the
Print Service on acceptance of the Print Job.&nbsp; If the Print Job is
rejected, the CMPC informs the User and allows the User to change the
print/printing settings or to cancel the print request.&nbsp;&nbsp; No =
matter what,
if the Print Job is accept by the Print Service the CMPC (and the Print =
Preview
Service) terminate. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>What about the issue or =
difference
between the Application Page Size and the Print Page Size.&nbsp; The =
User would
have a setting for scaling or cropping when the two page size are
different.&nbsp;&nbsp; Thus, there is a transform process when different =
and
the transform is performed BY THE PRINT SERVICE. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Print
Service: The entity that executes a Print =
Job<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>A Print Service executes =
a Print
Job.&nbsp; At this level of discussion, we do not care how it does it; =
only that
it does.&nbsp; The only interaction with another entity is with the =
Print
Status Service.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Print
Status Service:&nbsp; The entity that displays status to the =
user.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>This is an independent =
entity that
the display or provides to the User feedback (state, status, errors) =
concerning
the Print Job that the User selected (wanted) to be informed =
of.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_002_01CCB05D.ACFF91FD--

------_=_NextPart_001_01CCB05D.ACFF91FD
Content-Type: application/octet-stream;
	name="simplifed CMPC.pdf"
Content-Transfer-Encoding: base64
Content-Description: simplifed CMPC.pdf
Content-Disposition: attachment;
	filename="simplifed CMPC.pdf"

JVBERi0xLjMKJcfsj6IKNSAwIG9iago8PC9MZW5ndGggNiAwIFIvRmlsdGVyIC9GbGF0ZURlY29k
ZT4+CnN0cmVhbQp4nNzdwavv+37X9zQ4qHsgxb/gEBMHkeauvdbaa68tIsWo9KYIiYgpSictNhZu
UhLrH6CjgCAlNHMRBzrozD9E7D/QieCf0d/r+V61NdpRN5z4wNt7T48nxkdy8/uez+v94uXv/vD0
K5+ff3ja//q//+B/+O1PP/nrX3/4rb/36Xc/vTw9/bD/77f7o7f9088+vb7/kT++P/y7n37zl3/4
nU+ff9j/+r3f+nf/sa9f9pc/Pf7p9/7Op//xlz/9Rn/J06+8fPv27el5f+XjP8/jL/rh8+f7z7Q/
fn7/0v/x+z/g//3H/TX/7j/X7z7+r/vyvH88/vX19f2Hz0/f3gf4Sz/99JOf/rUf/pff+/t/59NP
fvOHz2+ffvJf989/6dd/9YfPn37yl//2509P/92nn/zVn/zqr/7Vx//vr/+Fv/CT/+aH//Lxv/Or
//PP/v5v/87fe/zFf/EvfvrpX/7hz/zTP3//+BN/+p/9wU9/8Q9++rf2T7+0f/rFP/iX+6df60//
0v+0P/OH/elf+9f7M7/cX/OH/Uf9jf6aP9ef+Rf9NX+zP/PX+zP/5Od/7odPf+WnP/zGfwT0+eUJ
A709Y6Bvrxbo+fkNA33BfhSev2E/Ci/P2I/CyxfsR+HlHftReP2M/Sjsb5ss0Dv2o/DlM/aj8OUV
+1H48hX7UXj7jP0ovL1iPwpvX7Efha9P2I/C1xfsR+HrV+xH4f0J+1F4f8F+FN7fsB+Fdy1o/KYF
jd+0oPEbFjQ+P2FB4/MTFjQ+P2FB4/NnLGh8/owFjc+fsaDx+RkLGp+fsaDx+RkLGp9fsKDx+QUL
Gp9fsKDx+RULGp9fsaDx+RULGh+fIexH4QsWND5/wYLG5zcsaHx+w4LG5zcsaHx+w4LG569Y0Pj8
FQsan79qQeO7FDS+P2E154GomnMg6UchkPSjMBBVcw4kXR8CSdeHgaiacyDp+hBIuj4MRNWcA0nX
h0DS9WEgquYcSLo+BJKuDwNRNedA0vUhkHR9GIiqOQeSrg+BpOvDQFTNOZB0fQgkXR8CaUEjVXMO
pAWNVM35AbJqzoGwoNGqOQ9E1ZwDYUGjVXMeiKo5B8KCRqvmPBBVcw6EBY1WzXkgquYcCAsarZrz
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
I1VzDiTVnA+EBY1UzTmQVHM+EBY0UjXnQFLN+UBY0EjVnA+EBY1UzflAWNBI1ZwDUTXn13es5jwQ
VXMOJP0oBJJ+FAaias6BpOtDIOn6MBBVcw4kXR8CSdeHgaiacyDp+hBIuj4MRNWcA0nXh0DS9WEg
quYcSLo+BJKuDwNRNedA0vUhkHR9GIiqOQeSrg+BpOtDIC1opGrOgbSgkao5P0BWzTkQFjRaNeeB
qJpzICxotGrOA1E150BY0GjVnAeias6BsKDRqjkPRNWcA2FBo1VzHoiqOQfCgkar5jwQVXMOhAWN
Vs05EBY0WjXnQFjQaNWcB6Jqzu9PWM15IKrmHEj6UQgk/SgMRNWcA0nXh0DS9WEgquYcSLo+BJKu
DwNRNedA0vUhkHR9GIiqOQeSrg+BpOvDQFTNOZB0fQgkXR8GomrOgaTrQyDp+jAQVXMOJF0fAknX
h0Ba0EjVnANpQSNVc36ArJpzICxotGrOA1E150BY0GjVnAeias6BsKDRqjkPRNWcA2FBo1VzHoiq
OQfCgkar5jwQVXMOhAWNVs15IKrmHAgLGq2acyAsaLRqzoGwoNGqOQ/0n3jN+Tc+Pf3w9Ctfvn17
e/r2//zB7/3Wp9/91GP8ddWf374/fnxyn3742aeX9z/yx/01P/v0dz/95i//8Dv/3n+JntcEf319
/c4/M3/2n//j3/+3949f+u3X/+O/+ge/+J//6f3TL/3+7//+P/rfvv3q/eMf/sn/9h/9tddf/zd/
6j/+v/m3/9rrv/rhpz//J/7Xxz/9yf/+F37hF/7Nn/r1+8f/+Q//5i/8q3/0Vx5/8A9+cf/h/Uf+
3H/xn/2H/xb48L1/51+dP2a+L5+/84/QHzff63f+Tfrj5vv6nX+i/pj53p7s35e3V/v35e2r/fvy
9cn+ffn6Yv++fH2zf1/en+zfl/cX+/fl/c3+fXn/Zv++fHu2f18eT0rb943+ffny9Ez/vnx5+kL/
vnx5eqd/X758fqZ/X758/mL/vnx+t39f9v/qH+2z890vz3a+++XFzne/vNj57pcXO9/98mrnu19e
7Xz3y6ud7375Yue7X77Y+e6XL3a+++XNzne/vNn57pc3O9/98gbnu+9Pdv8lH/w+mk/uv+SD30f5
4PfRfHL/JR/8PsoHv4/mk/sv+eD3UT74fTSf3H/JB7+P8sHvo3z4+0juv+SD+y/54P7Lw0f3X/LB
/Zd8cP9lPrn/kg/uv+SD+y/zyf2XfHa+S/df5pP7L/nsfJfuv8wn91/y2fku3X+ZT+6/5LPzXbr/
Mp/cf8ln57t0/yWfm+/ub63l/sv53PdRPrj/cj73fXQ+932UD+6/nM99H53PfR/lg/sv53PfR+dz
30f54P7L+dz30fnc99H58PcR3H85n9t/OZ/bf5lP7r+cz+2/nM/tv+SD+y/nc/sv53P7L/ng/sv5
7HxX7r/kg/sv57PzXbn/kg/uv5zPznfl/ks+uP9yPjvflfsv+eD+y/nsfFfuv5wPzncff+tJ91/y
we+j+eT+Sz74fZQPfh/NJ/df8sHvo3zw+2g+uf+SD34f5YPfR/PJ/Zd88PsoH/w+yoe/j+T+Sz64
/5IP7r88fHT/JR/cf8kH91/mk/sv+eD+Sz64/zKf3H/JZ+e7dP9lPrn/ks/Od+n+y3xy/yWfne/S
/Zf55P5LPjvfpfsv88n9l3x2vkv3X/LB+e7jb83o/ks++H00n9x/yQe/j/LB76P55P5LPvh9lA9+
H80n91/ywe+jfPD7aD65/5IPfh/lg99H+fD3kdx/yQf3X/LB/ZeHj+6/5IP7L/ng/st8cv8lH9x/
yQf3X+aT+y/57HyX7r/MJ/df8tn5Lt1/mU/uv+Sz8126/zKf3H/JZ+e7dP9lPrn/ks/Od+n+Sz43
393fusj9l/O576N8cP/lfO776Hzu+ygf3H85n/s+Op/7PsoH91/O576Pzue+j/LB/Zfzue+j87nv
o/Ph7yO4/3I+t/9yPrf/Mp/cfzmf2385n9t/yQf3X87n9l/O5/Zf8sH9l/PZ+a7cf8kH91/OZ+e7
cv8lH9x/OZ+d78r9l3xw/+V8dr4r91/ywf2X89n5rtx/OR+c7z4+7XT/JR/8PppP7r/kg99H+eD3
0Xxy/yUf/D7KB7+P5pP7L/ng91E++H00n9x/yQe/j/LB76N8+PtI7r/kg/sv+eD+y8NH91/ywf2X
fHD/ZT65/5IP7r/kg/sv88n9l3x2vkv3X+aT+y/57HyX7r/MJ/df8tn5Lt1/mU/uv+Sz8126/zKf
3H/JZ+e7dP8lH5zvPj59dP8lH/w+mk/uv+SD30f54PfRfHL/JR/8PsoHv4/mk/sv+eD3UT74fTSf
3H/JB7+P8sHvo3z4+0juv+SD+y/54P7Lw0f3X/LB/Zd8cP9lPrn/kg/uv+SD+y/zyf2XfHa+S/df
5pP7L/nsfJfuv8wn91/y2fku3X+ZT+6/5LPzXbr/Mp/cf8ln57t0/yWfm+/u0yD3X87nvo/ywf2X
87nvo/O576N8cP/lfO776Hzu+ygf3H85n/s+Op/7PsoH91/O576Pzue+j86Hv4/g/sv53P7L+dz+
y3xy/+V8bv/lfG7/JR/cfzmf2385n9t/yQf3X85n57ty/yUf3H85n53vyv2XfHD/5Xx2viv3X/LB
/Zfz2fmu3H/JB/dfzmfnu3L/5Xxwvvv46aT7L/ng99F8cv8lH/w+yge/j+aT+y/54PdRPvh9NJ/c
f8kHv4/ywe+j+eT+Sz74fZQPfh/lw99Hcv8lH9x/yQf3Xx4+uv+SD+6/5IP7L/PJ/Zd8cP8lH9x/
mU/uv+Sz8126/zKf3H/JZ+e7dP9lPrn/ks/Od+n+y3xy/yWfne/S/Zf55P5LPjvfpfsv+eB89/HT
Qvdf8sHvo/nk/ks++H2UD34fzSf3X/LB76N88PtoPrn/kg9+H+WD30fzyf2XfPD7KB/8PsqHv4/k
/ks+uP+SD+6/PHx0/yUf3H/JB/df5pP7L/ng/ks+uP8yn9x/yWfnu3T/ZT65/5LPznfp/st8cv8l
n53v0v2X+eT+Sz4736X7L/PJ/Zd8dr5L91/yufnu/kdP7r+cz30f5YP7L+dz30fnc99H+eD+y/nc
99H53PdRPrj/cj73fXQ+932UD+6/nM99H53PfR+dD38fwf2X87n9l/O5/Zf55P7L+dz+y/nc/ks+
uP9yPrf/cj63/5IP7r+cz8535f5LPrj/cj4735X7L/ng/sv57HxX7r/kg/sv57PzXbn/kg/uv5zP
znfl/sv54Hz38S90/yUf/D6aT+6/5IPfR/ng99F8cv8lH/w+yge/j+aT+y/54PdRPvh9NJ/cf8kH
v4/ywe+jfPj7SO6/5IP7L/ng/svjX+j+Sz64/5IP7r/MJ/df8sH9l3xw/2U+uf+Sz8536f7LfHL/
JZ+d79L9l/nk/ks+O9+l+y/zyf2XfHa+S/df5pP7L/nsfJfuv+SD893Hf+vo/ks++H00n9x/yQe/
j/LB76P55P5LPvh9lA9+H80n91/ywe+jfPD7aD65/5IPfh/lg99H+fD3kdx/yQf3X/LB/ZeHj+6/
5IP7L/ng/st8cv8lH9x/yQf3X+aT+y/57HyX7r/MJ/df8tn5Lt1/mU/uv+Sz8126/zKf3H/JZ+e7
dP9lPrn/ks/Od+n+Sz44333Q6P5LPvh9NJ/cf8kHv4/ywe+j+eT+Sz74fZQPfh/NJ/df8sHvo3zw
+2g+uf+SD34f5YPfR/nw95Hcf8kH91/ywf2Xh4/uv+SD+y/54P7LfHL/JR/cf8kH91/mk/sv+ex8
l+6/zCf3X/LZ+S7df5lP7r/ks/Nduv8yn9x/yWfnu3T/ZT65/5LPznfp/ks+N9/9+vxO91/O576P
8sH9l/O576Pzue+jfHD/5Xzu++h87vsoH9x/OZ/7Pjqf+z7KB/dfzue+j87nvo/Oh7+P4P7L+dz+
y/nc/st8cv/lfG7/5Xxu/yUf3H85n9t/OZ/bf8kH91/OZ+e7cv8lH9x/OZ+d78r9l3xw/+V8dr4r
91/ywf2X89n5rtx/yQf3X85n57ty/+V8cL779mT3X/LB76P55P5LPvh9lA9+H80n91/ywe+jfPD7
aD65/5IPfh/lg99H88n9l3zw+ygf/D7Kh7+P5P5LPrj/kg/uvzx8dP8lH9x/yQf3X+aT+y/54P5L
Prj/Mp/cf8ln57t0/2U+uf+Sz8536f7LfHL/JZ+d79L9l/nk/ks+O9+l+y/zyf2XfHa+S/df8sH5
7rdnu/+SD34fzSf3X/LB76N88PtoPrn/kg9+H+WD30fzyf2XfPD7KB/8PppP7r/kg99H+eD3UT78
fST3X/LB/Zd8cP/lQaP7L/ng/ks+uP8yn9x/yQf3X/LB/Zf55P5LPjvfpfsv88n9l3x2vkv3X+aT
+y/57HyX7r/MJ/df8tn5Lt1/mU/uv+Sz8126/5LPzXffn1/p/sv53PdRPrj/cj73fXQ+932UD+6/
nM99H53PfR/lg/sv53PfR+dz30f54P7L+dz30fnc99H58PcR3H85n9t/OZ/bf5lP7r+cz+2/nM/t
v+SD+y/nc/sv53P7L/ng/sv57HxX7r/kg/sv57PzXbn/kg/uv5zPznfl/ks+uP9yPjvflfsv+eD+
y/nsfFfuv5wPzne/vNn9l3zw+2g+uf+SD34f5YPfR/PJ/Zd88PsoH/w+mk/uv+SD30f54PfRfHL/
JR/8PsoHv4/y4e8juf+SD+6/5IP7Lw8f3X/JB/df8sH9l/nk/ks+uP+SD+6/zCf3X/LZ+S7df5lP
7r/ks/Nduv8yn9x/yWfnu3T/ZT65/5LPznfp/st8cv8ln53v0v2XfHC++/5u91/ywe+j+eT+Sz74
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
NesDSc36A2FBI9WsDyQ16w+EBY1Usz6Q1Kw/kBY0Ss36QFKz/kBa0Eg161/esGZ9IOk7NBDVrA8k
fYcCSd+hgahmfSDpOxRI+w5RzfpA0sErkHTwGohq1geSDl6BpINXIOngNRDVrA8kHbwCSQevgahm
fSDp4BVIOngNRDXrA0kHr0DSwWsgqlkfSAsaqWb9A2Q16wNhQaPVrB+IatYHwoJGq1k/ENWsD4QF
jVazfiCqWR8ICxqtZn0gLGi0mvWBsKDRatYPRDXrA2FBo9WsH4hq1gfCgkarWT8Q1awPhAWNVrN+
IKpZH0gLGqlm/UBUsz6QFjT+J96s/41PT7/y9eXxTH2IfuX96/u3p7f9weNfnr/88Hu/9el3P71/
eXr83+3p6Yff7g9f3x7/9LNPz5//yB/3l/zs09/99Ju//MPv/Hv/dXp/fNg+f/n2nf+N/Gf/+T/+
/X97//j/81+J/70/8//1X+if++Hn/8P/vud5e/nO/z7+sT1v3/nfxj+259t3/rT9yJ6vz9/5y/Zj
e75Yvwdfv1m/B+/P1u/B+xfr9+D93fo9+PbZ+j349sX6Pfj2Tv0ePD99pn4Pnp9eqd+D56ev1O/B
8+fP1O/B8+dX6/fg81fr9+D5yfo9eH6xfg+ev1q/By9P1u/By4v1e/DyZv0evFh54vOrlSc+v1p5
4vOrlSc+f7HyxOcvVp74/MXKE5/frDzx+c3KE5/frDzx+auVJz5/tfLE569YnviO5YnvWJ74juWJ
37A88RuWJ36z8sSXJytPfHmy8sSXJytPfPls5Ykvn6088eWzlSe+fLbyxJdnK098ebbyxJdnK098
ebHyxJcXK098ebHyxJdXK098ebXyxJdXK098+WLliS9frDzx8XNt/R68WXniy5uVJ768WXniy1cr
T3z5auWJL1+xPPEdyxPfsTzxHcsTv2F54jcsT/yG5YnfrDzx9cnKE1+frDzx9cnKE18/W3ni62cr
T3z9bOWJr89Wnvj6bOWJr89Wnvj6YuWJry9Wnvj6YuWJr69Wnvj6auWJr69Wnvj6xcoTX79YeeLr
FytPfH2z8sTXNyhPfH+y9t/mkfbf8kB5SB4oD5lH2n/LA+UheaA8ZB5p/y0PlIfkgfKQeaT9tzxQ
HpIHykMeHmr/LQ+Uh+SB8pB5pP23PFAekgfKQ+aR9t/yWHkItf82j7T/lgfqV+WB+lV5rDyR2n/L
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
8NC+9ZNM9Ur14qNHjVY+HniztrNFxoNdKdlLH144nrVvYubbvI5ZXNdvn3nRdLT6P7v6Xwjc33fh
vk/15T9D+m4uurTz5HCvmY8cTpwZFJG6AS/7bLO351iPw7pmmlWju84fPHRD5qolXdyu2AWf3hYX
E+VkxlNfvWV2lM1bEe9ru4IdMetezUsO7qdygL/C9vOGT89q/YpMhxYvf2+9+/vXr2K7NWd/T6s1
v/NlYR8JV/OCn8KLN1J+nKbxZk3ofz1OC5VlC27K1+W56vQrn2oyarjJoQ3lmtFdDB9z7X7sGzik
elev7E3L++xz3l0mWVD8/WNNd/vplUEkJrAixeM8H8zohumfmDr7tX1TWM+nhUTYj2O+m89Xpcap
7NBS3XrSKz4u5uBNVc/T6sZXr18a49ZpsNHR87zD43YkRTgdObnjnzFGGjkXN088b0au2LyNtziD
KK1afm9v7XyRc/4vdaOAcWbKR4No1o62xGjYxQ4ELqdK8eCbv6xts3Sj9Q4l5ObrX41wX/NPUu7L
Y74Bu770uVtZKgl5ePWyqW/WgHbWIfMeGahpr3Nx7+qYzB9uVlC46/PNI4WfD28IObAub+HXrRqP
/tm1I6bp4PADz+YL84MLdzw/cSV/o/OSS51GrvQ/bOit7VPyNd6+P7kwoN1NauxMLGfYxtJJ4eJ9
5y6X6U3T9r/VzDA0a0JbYhgshga0uTlRY/bqoGUPR1ftXzTA+9yhBb86lRhqXJqpffVcWcrczU8r
Jcu7pwzfNtyH39bfSMv+4cZBo2gyWUVjxNEVs/kRUcS9/NM3PGssbFe5RU+ffdBrcb9nFw9h0VM1
3/CNTq2LC9i3b+bkmdd2fjrvu+j1kZU1jd2CVWZ2tLceol1bH1xiXqFmkJ7+4N4/lR+WSvi2Iv9k
5aYCZk8pvRpvCVNhvKlQl4cz548joyuefc7qO7mrPt86i7BS456N7feiulPyt3b5VQuvl3Q8V3Px
XmVK8uRpEzYOfSKMmj/6n6jhjzkRGu/vW2/YMc7WZeC1tVbzYsSE2rqo43tMqSU3n281OTItYdLo
wQm2wzyLiKgHWEjTpQnLnJcUDrwWZNB1ye5vQ4LbPk2a1iv4yUDfzl/mxt9fmLX7rkPZpN77N4X/
8QxIUT4czWYDtcxwDM3XZbzvi9tTVjpHBbnocFbwBmSpnW9rGJHSHXdN89sUfrVk7qf8qtrgIYUF
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
oZeJTBNC2UU3CCfI1ia4oJKuWRxiVA4uYtgQHTgqw4gPtBVi2RU+6J70qp61J7iCnSEU7A/CpNy2
gPiHzOZAXmhsScgLhYlJyIs9+EBe7EEGvqZEQQMQCZHZTJgWwNpSyBeFRkjIl2btM8BC9viByxIh
SGjr0EEUvIQl0UtbEkQRYIwWYCF8OYgws8zgOwuA4StOit1rYJoG2i/AdSF6uQbdfmmiCXyRKmR5
4fK0GfjaVISzRwlK+tqR2RNp6StIEpwc4eKGGJMl7MCXpGI0XzhMdkLygK2a2X/RUQWkrrLXMeD0
RmFoLYOzD8XaFgwktLM2B/xcEMXaInAzxvgDLAYpfUgnoS/BhlTAfRNFonmEfojU3yDk6aMYTA1l
/ROYMsr6LQCzIU4MJHcKkPwYSLFk9R+2IysXSenBxR8MqNMopUEIg/TslTsohzttIOM1/R+4R18g
ZW5kc3RyZWFtCmVuZG9iago2IDAgb2JqCjE0NTI4MgplbmRvYmoKNCAwIG9iago8PC9UeXBlL1Bh
Z2UvTWVkaWFCb3ggWzAgMCA2MTIgNzkyXQovUm90YXRlIDkwL1BhcmVudCAzIDAgUgovUmVzb3Vy
Y2VzPDwvUHJvY1NldFsvUERGIC9JbWFnZUIgL0ltYWdlQyAvVGV4dF0KL0V4dEdTdGF0ZSAxNCAw
IFIKL0ZvbnQgMTUgMCBSCj4+Ci9Db250ZW50cyA1IDAgUgo+PgplbmRvYmoKMyAwIG9iago8PCAv
VHlwZSAvUGFnZXMgL0tpZHMgWwo0IDAgUgpdIC9Db3VudCAxCi9Sb3RhdGUgOTA+PgplbmRvYmoK
MSAwIG9iago8PC9UeXBlIC9DYXRhbG9nIC9QYWdlcyAzIDAgUgo+PgplbmRvYmoKNyAwIG9iago8
PC9UeXBlL0V4dEdTdGF0ZQovT1BNIDE+PmVuZG9iagoxNCAwIG9iago8PC9SNwo3IDAgUj4+CmVu
ZG9iagoxNSAwIG9iago8PC9SMTAKMTAgMCBSL1I4CjggMCBSL1IxMgoxMiAwIFI+PgplbmRvYmoK
MTkgMCBvYmoKPDwvRmlsdGVyL0ZsYXRlRGVjb2RlL0xlbmd0aCAyODE+PnN0cmVhbQp4nF2RPW7D
MAxGd59CNzDlH6kGAi7pkqFF0fYCskwFHiIbjjP09hXJuEOHZ+BZpISPrM+X10ued1N/bEv8ot2k
OU8b3ZfHFsmMdJ1zZRszzXF/mnzjLaxVfX4L6/fPSqYUUFJ/DzeqP+0gf6z2xGWi+xoibSFfqToB
4CklrChP/46aZ8eYjlKLCnQWizaoQAOsLSrQi3aogG9Ye1TADawOFXDE6lEB37G+oAJdYB1QAZdY
Ayrg5OYRFfDybkQFXGSdUAHXshIq4CRCQgU6fteWWTDl1LOWrFbyup61ZLUS0DvWEs5KwJ5vtiWc
lYBeiks4KwF9K8M9pshz5oUd+zHxsW2Ud9mqbI23NWf6W/y6rNxlCtUvjQKS7QplbmRzdHJlYW0K
ZW5kb2JqCjEwIDAgb2JqCjw8L0Jhc2VGb250L0JJQUJGQytDYW1icmlhL0ZvbnREZXNjcmlwdG9y
IDExIDAgUi9Ub1VuaWNvZGUgMTkgMCBSL1R5cGUvRm9udAovRmlyc3RDaGFyIDEvTGFzdENoYXIg
MjIvV2lkdGhzWyA2MjMgMjIwIDU2OCA0MTQgMjc4IDU1OCAzMzggMzA3IDUzMSA1NDcgNTU2IDI3
MSA0NDEgNDg4IDY2Mgo0OTQgNDg4IDUwNCA3NzQgNDk2IDU1MiA0MzBdCi9FbmNvZGluZyAyMCAw
IFIvU3VidHlwZS9UcnVlVHlwZT4+CmVuZG9iagoyMCAwIG9iago8PC9UeXBlL0VuY29kaW5nL0Jh
c2VFbmNvZGluZy9XaW5BbnNpRW5jb2RpbmcvRGlmZmVyZW5jZXNbCjEvZzQvZzMvZzE5L2cxNDgv
ZzEzOS9nMTQ0L2cxNTAvZzEzL2cxNDUvZzEzMi9nMTQ2L2cxNDIvZzEzMy9nMTMxL2c3L2cxMzcK
L2cxMzUvZzE1Mi9nMTUzL2cyMi9nMTUxL2cxNDldPj4KZW5kb2JqCjIxIDAgb2JqCjw8L0ZpbHRl
ci9GbGF0ZURlY29kZS9MZW5ndGggMjQ4Pj5zdHJlYW0KeJxdkcFuwyAMhu95Ct4ghiaklSpfuksP
m6ZtL0DAVBxKEE0Pe/vFeNlhhw/pA2zE7/5yfbnmtKr+vS7+k1YVUw6VHsuzelIz3VLutFEh+fXX
2urvrnT95dWVr+9CartAUfzN3an/MLrtaKnxS6BHcZ6qyzfqzgB4jhE7yuHfkbZSMcf9qkYBRsBN
DQowGdYDCmBPrAMKYIl1RAGmgdWiAKa1mlCAwbEeUQAbWU8ogG0POWwY0J51RgHG1tmjAPbIGlAA
O7ISCjAcWCMKYLmV3rJgts6hJbJ/ncPhlPdQlX/WSnlto2hRc8Qp09+0ylK4Sm10Pz/FhBIKZW5k
c3RyZWFtCmVuZG9iago4IDAgb2JqCjw8L0Jhc2VGb250L1JYTlFPTCtDYW1icmlhLEJvbGQvRm9u
dERlc2NyaXB0b3IgOSAwIFIvVG9Vbmljb2RlIDIxIDAgUi9UeXBlL0ZvbnQKL0ZpcnN0Q2hhciAx
L0xhc3RDaGFyIDE2L1dpZHRoc1sgNjE0IDQ2MSAzMTQgNjA0IDM2NSAyMjAgMzQxIDU2OSA1OTEg
Mzk4IDYzOSA1OTcgNTMxIDU3MyAzMDgKMzk4XQovRW5jb2RpbmcgMjIgMCBSL1N1YnR5cGUvVHJ1
ZVR5cGU+PgplbmRvYmoKMjIgMCBvYmoKPDwvVHlwZS9FbmNvZGluZy9CYXNlRW5jb2RpbmcvV2lu
QW5zaUVuY29kaW5nL0RpZmZlcmVuY2VzWwoxL2cxOS9nMTQ4L2cxMzkvZzE0NC9nMTUwL2czL2cx
My9nMTQ1L2cxMzIvZzQ5OC9nMjMvZzEzOC9nMTM1L2c2L2cxNDIvZzQ5OV0+PgplbmRvYmoKMTIg
MCBvYmoKPDwvQmFzZUZvbnQvWUJXQkpEK0FyaWFsLEJvbGQvRm9udERlc2NyaXB0b3IgMTMgMCBS
L1R5cGUvRm9udAovRmlyc3RDaGFyIDEvTGFzdENoYXIgMjMvV2lkdGhzWyA3MjIgNTU2IDYxMSA2
MTEgMjc4IDI3OCAzMzMgNTU2IDI3OCAyNzggNjExIDMzMyA2MTEgMzMzIDYxMQo3NzggNTU2IDYx
MSA1NTYgNTU2IDYxMSAzODkgMzMzXQovRW5jb2RpbmcgMjMgMCBSL1N1YnR5cGUvVHJ1ZVR5cGU+
PgplbmRvYmoKMjMgMCBvYmoKPDwvVHlwZS9FbmNvZGluZy9CYXNlRW5jb2RpbmcvV2luQW5zaUVu
Y29kaW5nL0RpZmZlcmVuY2VzWwoxL0MvYS9wL2IvaS9sL3QveS9zcGFjZS9JL24vZi9vL3BhcmVu
bGVmdC9oL3cKL2UvZC9zL2MvdS9yL3BhcmVucmlnaHRdPj4KZW5kb2JqCjExIDAgb2JqCjw8L1R5
cGUvRm9udERlc2NyaXB0b3IvRm9udE5hbWUvQklBQkZDK0NhbWJyaWEvRm9udEJCb3hbMCAtMjE4
IDc3MSA2OThdL0ZsYWdzIDQKL0FzY2VudCA2OTgKL0NhcEhlaWdodCA2OTgKL0Rlc2NlbnQgLTIx
OAovSXRhbGljQW5nbGUgMAovU3RlbVYgMTE1Ci9NaXNzaW5nV2lkdGggNjU4Ci9Gb250RmlsZTIg
MTYgMCBSPj4KZW5kb2JqCjE2IDAgb2JqCjw8L0ZpbHRlci9GbGF0ZURlY29kZQovTGVuZ3RoMSAy
NTg0NC9MZW5ndGggOTgyNT4+c3RyZWFtCnic7X0JeFNV2vA5997saXOTNFvT5aZpmtLbNk3TlgbS
5rZNS2kplLZAS0VaGrAsQlkFFalCAVtAURFRR5lRYIaZ/+cWnLH4uVQ/x0GHOm7j5ziLoOC4gFTH
GQeV9n/PTVLAYZZ/eeZ5vv/pPXnf85737O92zk0lIowQikPdiEb1Mxo9+Uh62n8HaHbHje1dkXJb
M0J4Uce6Ndz5kREKGFCvvG1R1w03vvZOGPqorkNIW3bDsg2LIu0zTiKU8Hjnwvbw2bbDJxAKPw3M
ok5gGF5wHUbItB/K6Z03rlkfab+gACGqc9mKjvZIeTLMm/7hje3ru5KuM5RC+xeByS1vv3FhdH2D
gGxdK1aviZTDD5P6rlULu+6JP7cN2p9BiP1IthOpEZLNQiziI+0YC9DRh346Qo8Oj36P4Bh/pOEy
Db37URxdguLIKJRpdJg6hdjR/Ve2+NuHPhWbRRkFhhTK0cZog46xPCLf2f9oNPTCP6y99vMqehn9
B9os0U+jY+gnUf5P0E9RD4z4NIpIvgXNQFvQfsBNwJmLpqJZ6Hq0GGpWosfRgWivBagNeSEhVAoS
7Y1yX0EfoZ/hb6HdQ38z/70wyyo0ADM9hGpgvFK0G3Z7H/oxehTVoq1Quvy8LeFTVDtaglajQ0iE
vmHUKXHr0O2oGl0Ha6sCKa1Ey2H2uegIegItRP1oH/CfRg3oEfmzSEmtIZoa/RM1afRPqA/63k+t
oW6ndtHdaA26FT2C/oC+RHeju0Ze+Mfa+xeeu9EDsIstaBfodC5dQtfTbWO6/WfPkyCv50E260Er
B0Efj6C7sQs9iLahjViLvoeexvlXSef/5HkS7YCxr37+Ex0HuR0A/e4Cia0GvfwQVl//3a44E6vB
bpaguTgefY3m/1+u5NpPF9jCerC4O2CeVbDzZrQIrGst5J0Aa8fWUoRL0XbQ+mM4B50Bfjm6DS3H
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
ZW5kb2JqCjkgMCBvYmoKPDwvVHlwZS9Gb250RGVzY3JpcHRvci9Gb250TmFtZS9SWE5RT0wrQ2Ft
YnJpYSxCb2xkL0ZvbnRCQm94WzAgLTE5MSA2MDYgNzA4XS9GbGFncyA0Ci9Bc2NlbnQgNzA4Ci9D
YXBIZWlnaHQgNzA4Ci9EZXNjZW50IC0xOTEKL0l0YWxpY0FuZ2xlIDAKL1N0ZW1WIDkwCi9NaXNz
aW5nV2lkdGggNjU4Ci9Gb250RmlsZTIgMTcgMCBSPj4KZW5kb2JqCjE3IDAgb2JqCjw8L0ZpbHRl
ci9GbGF0ZURlY29kZQovTGVuZ3RoMSAxMzYzMi9MZW5ndGggNTk3MD4+c3RyZWFtCnic7TprdFTV
uXufM+/3O5M5STiTk5mETJIJmYRkYJIMyUxIiGgSAmuGqEzICQbkpaBFEYwaBAba+oJG22u1vUu6
rK0n2NrQe2uxRdR1pQuvlmtba/HRp3pvSqtFxMn99j4zIYn4aNe6P3oXs+f7zt7ffn3vvU8mCCOE
jGgYsajrimXBGkQ/FUcBrRjY0L852+YB7Ry4cSt/2ZnO01B/FSGmbc3mazacfEWEOWwJQoZF16y/
aY083ikiZHYMDfaLr/9i7i8RqtMAcf4QEMzN+u3QNwTtkqENW7fJ4yvdCKl/tn7TQL/cLgG6+lsb
+rdtVn/AtML4/UDkN/ZvGMzy8xCgos2btmyV27V/IP2brx/c/FLXnndg/GMIKX+gTCMTPJcjCwpQ
jBQ1BMsf9rRcn5yY/BeC5TpCmR65PvOj2oEsbOPkBAOzJh+CEdaPj/n4R5MFBWnsQK+h5yj5PtA3
0cAo2ocaUQpd96mLvPd5dpr5wU14Pq7EJeibaC+uxl7sRvuz9Bpchr47NXAnugGdRA+ir6G70RY0
BM5wBp1Gt0PParRxahThrwUKQiupOPIeJlyF/gp+0HMRBl5GL8AIG/SfRFejbehydBD2ehW9AX0p
9CfY4wKvFVM4DXw8BM8vAjxJO1dD+05Kk5AIuyP0KLoeLZm5meoppGG2gn1uA7ucRqeAdANajpqm
dliAy3ER+hbo/S3g7CCjQK/ic+go7DGBTUB5EiQ+jV9DK1kVcHkQTaAbge9XM69kfk18IZoUV119
1ZV9K5OJ5b09Sy/rXNLRvrgt1tqyKNrc1BhZuCDcUD+/rjZUM686WFVZESifW1bq95UIxV5+TlFh
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
f/18xWNItjtL7O5HP81y3mDFeqSxaBgtq1FEGb1NX6xnrQoFXDoPRBUW/6MlJcKhWInZle/OPxRz
a6JqdZkfToNCOdfV0NvuzCilkkJoZU95a4g6Q9Xft9GsUL3YmkmcR1JinnzthZviRVwE/4ex44GV
ja3ft9ZXueoq7SpTeU3GfsEr2G52xWXGzDsLmrh5odrazNOrLgtoZ3kB6M0HZyij+CUqQKNZvVXY
tXD62+GObmDN9sVRi7kgarC0FxS4WSjkJLPZkMPiMGkc2TPzeMgashwLB3OH5vEgvcLL4lCf8H7m
mhdOx9mzc4eiVYALVX3I6XV6iTroiwDLJO7qOnDvjkY49pX/gwszbzprfAUV87htnY0Pf5MJxnVl
reu7z+3INF63PqTzuImXJ9nDzBnlY8gA9wbfYaMNjWPTE8oqu2scGw+bVcwReCXWBl8/furPx+FN
h/yPgZ2cyPV5EKoOV15oemOjc8NNnRVzdeq7chX28BXxoUcSvTU3Xx7sCUyvk70b2QeZU5A7yd6l
h5UGG9k7H6sY2PsJrdnuIpub4QJiOQWvGc1vkd0xCRJ1Kb03lwrTG8zTH9teOSpvOe/mK6a2l+sI
odsuFOycUTZMK+/Jhdn4/7acIYVNk6IoUXyHlvOK88oHlGdJUd2nuk9tvFQulX/C0qlOXyqXyqXy
z1oQuSfIv1Q64K2TfJqQCpXTXzThbo3uQ/vQXegg9BnR3WgEn4E3sTTaDWO+hP+CFIj8SqqAAmtM
WCYnAWOCoU3+Kfaz5su/nNqAB4b8oyfcVFBr/4bV16/tr2jZtF6Uf1fFdyHlRf4H9eIfzczmBJqY
nPkzrPxQxtBTOcA/BXIWFAfRNZ8EzA+RcDFQ/BGlpoOyELVcgn8uUPwbqpqCZtQ3BcfRAmYEdUzB
F6ANoHgZdSi+BP1ZYMdQBwHmHeS7BJfgElyCS/B/D2wQJVEjHOjsZ9wLyLmPlXPGpMd/uMoceQ/p
5YvCkd+Nktno6epFj5w/m4nqHlU/AGO19D4Cn/8FOtUfRwplbmRzdHJlYW0KZW5kb2JqCjEzIDAg
b2JqCjw8L1R5cGUvRm9udERlc2NyaXB0b3IvRm9udE5hbWUvWUJXQkpEK0FyaWFsLEJvbGQvRm9u
dEJCb3hbMCAtMjEwIDc3NyA3MjhdL0ZsYWdzIDYKL0FzY2VudCA3MjgKL0NhcEhlaWdodCA3MjgK
L0Rlc2NlbnQgLTIxMAovSXRhbGljQW5nbGUgMAovU3RlbVYgMTE2Ci9NaXNzaW5nV2lkdGggNzUw
Ci9YSGVpZ2h0IDUzMAovRm9udEZpbGUyIDE4IDAgUj4+CmVuZG9iagoxOCAwIG9iago8PC9GaWx0
ZXIvRmxhdGVEZWNvZGUKL0xlbmd0aDEgMTg5MTYvTGVuZ3RoIDEwNjYwPj5zdHJlYW0KeJztfAt4
VNX179r7vOY9Z96PPGYmk0xCJjEhmRACkZyEJIAREp5m0EjCS6gKQYigrRARBQIqPvHVEq0CVVsm
E8SER41aq7a1Yn1U7cPcFotYck1bRFQyc9c+E1D6t/1u7/+79/vu93lO1ln7sX77sfY6a699CAEC
AEboBA6aGmcXlYB6TRnAx7xF17a1p/L1lQBk2aLr1/g/8d37Kyz4PYA0YWn7VddqPjqYB6BxAwi/
veqaG5am5DMfB/CuX7akbfGv/xTYAzDtaSwctwwLrOutSexwGPPZy65dsy4lPxXxZM01Kxe1pfIV
2SjjvLZtXbvxFisHYLJjoX9F27VLRseH7UN6+8rVa1L5adtZfft1S9qrA4uZfARAXikchHSV9kA6
H4J0gOSxc5RYnjzG6hinH2PvGSkaveLwNPyW5BE/9JIvwAVniIeMhWnAw2eoqX0wAveBHebA/cQK
2eCEuTCN8CgThu3k4eT1yRNwMdwNjyWfJRuTT2L9nfBzOIMj+CNPoBxmoPxcWAInuA8hmnwINLAZ
9DARZhEntME7eH+KY7gH7oWfku8lz2CvdtiI7VVCNVQnn0+ehXzYzu8Q3tU+A3fBISImFyWXQyZk
QRcNJ99JfgAhiMIP4WkcU5gM8FMhAFfDrfAA8XA/x9R98DgkiIG2cJOF55j6YB6sgLXQBU/CL4iV
NAnvCsPJ7yaPgwg2yMMxLYcTpIxMp0/whuSk5PtwOfTDKzhfdg/wl/N7hMsTVcnvJ18ABzxLdOQw
eV4oEe4YuTn5aPInYMDxjEWNzMB+FsIt8Dy8Cn+Dv9MNyQ0wFWZjzy+RDOInIdT4O9RD19P13Jtw
Ec62BUfbAbsghityEA7BEdTN72AQPiR2kkYuIQvJXeTv1EAX09e5h7n93Fs84X+E+g5CDupoDTwB
B+BX8Bq8TgRsv5g0ke+QlWQn+T4ZpDF6kn7Ga/hb+C/5ESGUGEx8mZyR/BTc4IVL4UbYgLr9IfTC
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
NjIxKzA4JzAwJykKL1RpdGxlKE1pY3Jvc29mdCBQb3dlclBvaW50IC0gc2ltcGxpZmVkIENNUEMu
cHB0KQovQ3JlYXRvcihQcmltb1BERiBodHRwOi8vd3d3LnByaW1vcGRmLmNvbSkKL0F1dGhvcihn
cGV0cmllKT4+ZW5kb2JqCnhyZWYKMCAyNAowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAxNDU2MzUg
MDAwMDAgbiAKMDAwMDE3NTAwMyAwMDAwMCBuIAowMDAwMTQ1NTY2IDAwMDAwIG4gCjAwMDAxNDUz
ODkgMDAwMDAgbiAKMDAwMDAwMDAxNSAwMDAwMCBuIAowMDAwMTQ1MzY3IDAwMDAwIG4gCjAwMDAx
NDU2ODMgMDAwMDAgbiAKMDAwMDE0NjkwMyAwMDAwMCBuIAowMDAwMTU3NzgzIDAwMDAwIG4gCjAw
MDAxNDYxNTUgMDAwMDAgbiAKMDAwMDE0NzY3MyAwMDAwMCBuIAowMDAwMTQ3Mjg1IDAwMDAwIG4g
CjAwMDAxNjQwNDEgMDAwMDAgbiAKMDAwMDE0NTcyNCAwMDAwMCBuIAowMDAwMTQ1NzU0IDAwMDAw
IG4gCjAwMDAxNDc4NzQgMDAwMDAgbiAKMDAwMDE1Nzk4NyAwMDAwMCBuIAowMDAwMTY0MjU4IDAw
MDAwIG4gCjAwMDAxNDU4MDYgMDAwMDAgbiAKMDAwMDE0NjQwNSAwMDAwMCBuIAowMDAwMTQ2NTg3
IDAwMDAwIG4gCjAwMDAxNDcxMzIgMDAwMDAgbiAKMDAwMDE0NzUyNSAwMDAwMCBuIAp0cmFpbGVy
Cjw8IC9TaXplIDI0IC9Sb290IDEgMCBSIC9JbmZvIDIgMCBSCi9JRCBbPDI1QUE0NDQxRjI2QjVD
N0M5MTc5QUVFRTBEQjQxMzE3PjwyNUFBNDQ0MUYyNkI1QzdDOTE3OUFFRUUwREI0MTMxNz5dCj4+
CnN0YXJ0eHJlZgoxNzUyMzQKJSVFT0YK

------_=_NextPart_001_01CCB05D.ACFF91FD--
