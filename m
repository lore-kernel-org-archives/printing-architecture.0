From: Claudia Alimpich <alimpich@us.ibm.com>
Message-ID: <OF0251108A.26689210-ON87256CB0.0070B0F7@us.ibm.com>
Date: Thu, 16 Jan 2003 13:31:34 -0700
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] RE:Scenarios for using the various Open Print API
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
To: printing-architecture@freestandards.org




Following is the updated Scenarios that I first put on the forum 21Nov2002.
Tom Hastings provided feedback and additions which I incorporated. There is
still some discussion about Capabilities and what the Application should
call to get device capablilities information. Please review the scenarios
and provide your comments and feedback. I also put this on the pwg site at:

ftp://ftp.pwg.org/pub/pwg/fsg/architecture/LinuxScenarios_16Jan2003.txt

Claudia Alimpich
IBM Printing Systems Division
alimpich@us.ibm.com
-----------------------------------------

16Jan2003

  Using the Application, JTAPI, Capabilities API, PAPI, and Print Service


Following are scenarios that describe how the various Open Print APIs can
be used (or not used) together:

      1) One of the following:
            a) The Application reads a job ticket file, as directed by
                  the user, by using the JTAPI.
            b) The Application reads a default job ticket file, as
                  configured by the administrator, by using the JTAPI.

      2) One of the following:
            a) The Application provides the user with choices that are
                  determined by the application itself.
            b) The Application uses the Capabilities API* to determine
                  the capabilities of the target device(s) and then
                  provides the user with choices.
            c) The Application uses a PPD, GPD, UPDP, or other device
                  description file to determine the capabilities of
                  the target device.
            d) The Application queries the Device using SNMP.
            e) What other ways can device capabilities be
                  determined?

      3) The user makes selections from the choices presented by the
            Application.
            a) The choices presented are limited/constrained by the
                  user's selection of other/related choices.

      4) One of the following:
            a) The Application uses the JTAPI to create a job ticket.
            b) The Application sets IPP attributes that describe how the
                  job is to be processed.
            c) Both a) and b).

      5) Optionally, one of the following:
            a) The Application uses some of the user's selections to
                  generate the data/content file.
            b) The Application uses the Graphics API to generate the
                  data/content file.
            c) The Application uses some of the user's selections to
                  select from among alternate formats of data/content
                  files that have previously been generated and made
                  available.

      6) One of the following:
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
      See Pete Zannucci's 03Dec2002 and Michael Sweet's 21Nov2002 and
      03Dec2003 appends to the architecture mailing list.




