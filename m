Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB04A34FE@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 20 Apr 2004 08:35:21 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] RE: [printing-driver] More Vector Driver
	questions and Job
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: Discussion for the driver API subgroup <printing-driver@base3.freestandards.org>
Cc: printing-driver@freestandards.org, printing-japan@freestandards.org, printing-architecture@freestandards.org


[[ GWP ]] The two issues I addressed in the email were about multiple job
capability for the driver and having User settable printer capabilities. =
 I
strongly support having multiple job capability and would the API to be
adapted to support this.   As for User selectable printer capabilities I
wrote the email in response to this capability brought up in the driver
meeting.  My support for this will be based on the feedback from these
emails.  Actually, I currently see the printer capability as fixed (by th=
e
PPD or UPDF or ???) and not having any User selection. If there are
differing printer capabilities shouldn't there be separate descriptors! B=
ut
I would like to hear other individual's opinions.=20

[[GWP]] Let me also state that I strongly believe any vector driver libra=
ry
conforming to the specification required to be fully supported all of vec=
tor
driver API's. It is up to the individual vector driver library to "figure
out" how to execute each API call not do a selected few.   Otherwise it
leaves the responsibility to a higher level process to determine how and
to-do part of the vector rendering.   This places a requirement that ther=
e
be a higher level renderer process to support vector printing; why?  This
seems to complicate the situation - it could mean a generic higher level
renderer would have to, in theory, support all of the vector driver API's=
!

=20
Looks like when you combine the job properties function and the vector
work, the group is getting around to driver enablement and sets.  This no=
w
brings up a few questions:


      1. So at what point is the driver going to be told about the
properties of the job/page?  I see mention of "start job" vs openprinter
below but I am not clear on which is better and why.  It would probably b=
e
nice to set an initial state on the printer at the beginning and then jus=
t
send a modification on a per page basis if things change so I could see
job/page properties used in multiple places.  Of course the current state
would need to be able to be queried so the information would have to upda=
te
a context for the device.

[[ GWP ]] To support multiple documents along with document and page
exceptions the driver could be told about "job/doc/page properties" at
various times in processing a job.  (I am assuming the driver does not
decompose a job-ticket.)  Job properties could be initially set at "start
job" via one call or through a set of individual calls.  After startDoc a=
nd
before startpage overrides via one or more set-functions (doc/page
properties) may occur. This is why I am not in favor of changing the prin=
ter
capability inside of a job.  But if changing printer capability and APIEn=
try
is necessary, then the setprintercapabilities could be called before
startjob and before startdoc - even before startpage if that was desired.
Each call to setprintercapabilities would return the APIEntry.

      2. Does this mean the print driver will be able to hook out (replac=
e
function pointers)  whatever drawing commands it wants to as it does now =
in
Ghostscript and Win?  (it seems implied by the PCL2 vs PCL5 reference
below).


[[ GWP ]]  Yes, this is the request within the driver group.

      3. Is this being worked from the vector/renderer side so that you c=
an
replace functions and handle the vector commands directly in the driver
without requiring rendering to be done? =20

[[ GWP ]] Yes.  If the vector driver cannot handle specific functions the=
n
it will need an assist for a higher level module or a separate renderer.=20

You would probably want to have
all the drawing commands go through an intermediate layer so the proper
path can be taken based on the capabilities and job properties.

[[ GWP ]] I am sure I understand your comment completely. If you mean tha=
t
some process must "understand" the entire vector driver API then I concur.
See my comment at the above

      4. Is anyone working on having a multipass renderer so that graphic=
s
and text can be drawn on the same page?

[[ GWP ]] No that I am aware of.

      5. Is this APIEntry table on startjob for passing in a table of
functions?

[[ GWP ]] It for passing "out" a table of functions.

I apologize for needing clarification since I have not been in on the lat=
er
phone calls.

Thanks,

Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com



                                                                         =
 =20
             "Petrie, Glen"                                              =
 =20
             <glen.petrie@eitc                                           =
 =20
             .epson.com>                                                T=
o=20
             Sent by:                  printing-japan@freestandards.org, =
 =20
             printing-driver-b         printing-architecture@freestandard=
s=20
             ounces@base3.free         .org,                             =
 =20
             standards.org             printing-driver@freestandards.org =
 =20
                                                                        c=
c=20
                                       "Petrie, Glen"                    =
 =20
             04/19/2004 03:12          <glen.petrie@eitc.epson.com>      =
 =20
             PM                                                    Subjec=
t=20
                                       [printing-driver] More Vector     =
 =20
                                       Driver questions and Job          =
 =20
             Please respond to                                           =
 =20
              Discussion for                                             =
 =20
              the driver API                                             =
 =20
                 subgroup                                                =
 =20
                                                                         =
 =20
                                                                         =
 =20






Hello,



The USdriver team discussed the possibility of having the driver supporti=
ng
multiple jobs; the idea was ok with the condition that the driver is only
required to support at most one job.=A0 =A0However, it still means change=
s to
the current API.=A0 Supporting multiple jobs makes the overall driver API
more generic and provides for greater integration configurations.=A0 But
there are issues with the current design.





The API needs to have some changes starting from the very first Library
call; OpenPrinter.=A0 Currently, in the call the printer model is specifi=
ed.
For a multiple job configuration this would have to be done at the "start
job" API. =A0=A0However, this can reduce the "dynamics" of the APIEntry f=
eature
since the printer would not be know at library initialization; instead
would be know at "start job" API.=A0 =A0One solution is to have a fixed s=
et of
API that a driver must support; that should be straight forward.=A0 This =
way
at library initialization, certain critical functions must be supported.



Does this mean moving the return for "optional" APIEntry table to "start
job".=A0 =A0Maybe Yes, Maybe No.



1.) First the driver "query device capability" and "query device info" AP=
I
would have to be callable before setting/starting a job. =A0This means th=
at
the "printer model" be added to their argument list. - That easy solved.
Now the capability is called after the library is initialized but before
calling "start job".



2.) The APIEntry changes based on the printer type and its capability.=A0=
 =A0It
has been argued that User or other determining body may want to change th=
e
basic printer capability.=A0 For example, the printer language; if the
printer supports PCL2 and PCL5 and this may be a settable option.=A0 This
"basic printer property" selection differs from selection from selection =
we
do in a job-ticket.=A0 It is giving the User selection over printer
capabilities. To support this kind of selection, we would need a new API
called "set printer capabilities".=A0 =A0The driver, generically, remembe=
rs the
set printer capabilities and when start job is called with printer name i=
t
will use the settings.



If both 1.) and 2.) are implemented then greater dynamics of the APIEntry
is possible.



I really don't think "start job" is the best place for the APIEntry's to =
be
returned; but for now it a starting point for discussion.



Rgds,
Glen W. Petrie
Epson Imaging Technology Center
150 River Oaks Parkway, Suite 200
San Jose, CA, 95134
Voice: 408.576.4131=A0 Fax: 408.474.0511


_______________________________________________
printing-driver mailing list
printing-driver@mail.freestandards.org
http://mail.freestandards.org/mailman/listinfo/printing-driver

