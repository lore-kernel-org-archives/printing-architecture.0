From: "Claudia Alimpich" <alimpich@us.ibm.com>
Message-ID: <OF259D7FC4.9B915A81-ON87256C78.0068A2B9@boulder.ibm.com>
Date: Thu, 21 Nov 2002 12:09:27 -0700
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
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
To: printing-architecture <printing-architecture@freestandards.org>

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
            c) The Application uses a PPD file to determine the
                  capabilities of the target device.
            d) What other ways can device capabilities be
                  determined?
      2) The user makes selections from the choices.
      3) Optionally, one of the following:
            a) The Application uses the JTAPI to create a job ticket.
            b) The Application sets IPP attributes that describe how the
                  job is to be processed.
            c) Both a) and b).
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







