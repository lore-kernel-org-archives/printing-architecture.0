Message-ID: <E0BE13326C4EBC45BBC635197DEB7E3FCBB7@x-crt-es-ms1.cp10.es.xerox.com>
From: "Hastings, Tom N" <hastings@cp10.es.xerox.com>
Date: Thu, 21 Nov 2002 15:40:36 -0800
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] RE: Scenarios for using the various Open Print API [my comments]
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: Claudia Alimpich <alimpich@us.ibm.com>
Cc: printing-architecture <printing-architecture@freestandards.org>

Here are my comments on Claudia's scenarios from today's FSG Architecture
meeting which covered only the JT API, PAPI, and the Capabilities API.

1. Firstly, discussing these scenarios verbally on today's telecon, helped
us see the relationship more clearly between the PAPI and the Capabilities
API.  Also the discussion of the scenarios caused us to realize that we need
two profiles added to the PAPI 1.0 spec and a library function call to
return which profile or which functions the implementation supports as
opposed to returning the status code: not-supported.  The two distinct use
case that need to be reflected in two separate profiles of PAPI were whether
or not the Application used the functions that submitted and managed Jobs.

Therefore, for the next FSG Architecture meeting, I suggest that we continue
this same level of discussion of scenarios for the applications that use the
other APIs in the FSG-10000000ft-updated.jpg picture.  It will help us
understand these other APIs much better.

2. In the meeting, we realized that the term Capabilities API is somewhat
confusing, since the PAPI 1.0 has the papiPrinterQuery function which
returns all of the supported attribute values of the selected Printer, but
does not return any of the inter-attribute constraints.  So drawing the
Capabilities API as a separate API from the PAPI is misleading.  On the
other hand, the PAPI V1.0 doesn't meet all of the Capability requirements.  

However, the discussion seems to be heading to adding the inter-attribute
constraints to the papiPrinterQuery function call after PAPI V1.0, i.e.,
V1.1 or V2.0.  So for the discussion below I'm assuming the "capabilities"
means using the papiPrinterQuery function as in PAPI V1.0, i.e., just the
supported values as if all attributes are orthogonal.  Then lets add
obtaining or at least using the "inter-attribute constraints" as a separate
step. 

3.  Building on Claudia's formulation, here are my comments below, bracketed
by <th> .... </th>.

Tom

-----Original Message-----
From: Claudia Alimpich [mailto:alimpich@us.ibm.com]
Sent: Thursday, November 21, 2002 11:09
To: printing-architecture
Subject: [Printing-architecture] RE:Scenarios for using the various Open
Print API


Well, that last note that I sent sure looked bad! Let me try again.

Following is what I came up with for possible scenarios describing how to
use the APIs together. Please provide your comments and any additions. When
it is clean, I will post it to the PWG site.

Claudia Alimpich
alimpich@us.ibm.com
---------------------------------------------------------------------------

21Nov2002

     Using the Application, JTAPI, Capabilities API, PAPI, and Print
Service


Following are scenarios that describe how the various Open Print APIs can
be used (or not used) together:

      1) One of the following:
            a) The Application provides the user with choices that are
                  determined by the application itself.
            b) The Application uses the Capabilities API* to determine
                  the capabilities of the target device(s) and then
                  provides the user with choices.
            c) The Application uses a PPD <th>, GPD, UPDF, or other 
                  description </th> file to determine the
                  capabilities of the target device.
            d) What other ways can device capabilities be
                  determined?
<th> How about the following additional ways (or add e) and f) as an
optional Step 0):
d) The Application queries the Device using SNMP.
e) The Application reads a Job Ticket file as directed by the user and
instantiates a Job Ticket object using the JT API.
f) The Application reads a default Job Ticket file as it is configured by
either the user or by the administrator and instantiates a Job Ticket object
using the JT API. </th>

      2) The user makes selections from the choices.
<th> Either add the following to step 2 or add another step which I'll
temporarily label 2a, so this note doesn't renumber:
2a) Optionally, the Application obtains/uses the inter-attribute constraints
and indicates the choices no longer available to the user based on the
user's choices so far.  Repeat steps 2 and 2a </th>

      3) Optionally, one of the following:
<th> Why is Step 3 optional? </th>

            a) The Application uses the JTAPI to create a job ticket.
            b) The Application sets IPP attributes that describe how the
                  job is to be processed.
            c) Both a) and b).
<th> I suggest adding an optional Step, temporarily numbered 3a:
3) Optionally, one of the following:
   a) The Application uses some of the selections to generate the
data/content file.
   b) The Application calls the Graphics API (not yet shown in the
architecture diagram) which creates the data/content file.
   c) The Application uses some of the selections to select from among
alternate formats of data/content files that have previously been generated
and made available.

      4) One of the following:
            a) The Application uses the PAPI to submit the data/content
                  file and the job ticket to the Print Service.
            b) The Application uses the PAPI to submit the data/content
                  file and the IPP  attributes to the Print Service.
            c) The Application uses the PAPI to submit the data/content
                  file, the job ticket, and the IPP attributes to the Print
                  Service.
            d) The Applicaiton saves the job ticket without submitting it
                  or the data/content file to the Print Service.

* Question: Is the Capabilities API part of PAPI or a separate API?







_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

