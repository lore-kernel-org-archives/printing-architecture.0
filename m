Subject: Re: [Printing-architecture] RE:Scenarios for using the various Open Print
 API
Message-ID: <OF63108296.468827EB-ON85256C84.0058D5DF@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Tue, 3 Dec 2002 10:51:35 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
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


SORRY - LONG APPEND


In Claudia's note below, she has hit on the gray area.
Do we need a capabilities API or not?

We need to define what "Capabilities" really is and
what is the crossover between capabilities and the
standard attributes that are currently defined in
protocols such as IPP and to be provided by the printer
(or subsystem).

The basic capabilities of a device will be provided back
through the papiPrinterQuery call which will enable printing.
The problem with these attribute/values is that the
information provided back will be non-hardware / rendering
specific.  We should get back the standard IPP information,
at minimum, which provides for things like:
      form
      tray information
      media
      finishing options, etc.

This information formulates the basics of capabilities.
These items will let you send a job and pick certain hardware
features/finishing options but do not provide possible
additional information on how the job can be laid out and
what are possible rendering options based on the hardware's
capabilities.

We need to come to a consensus on what additional types
of information an application might need to be able to
generate a job to it's satisfaction.  We have discussed
how to provide printable area and margin information.
That is a start.  Their may be other things that some apps.
would like to know about a device and that should be added
as a possible separate api (get all the pertinent info.
back from a device on what it supports) or could possibly
be added as an additional grouping of attributes.

There are two sides of adding additional attributes that
worry me.
      1. No protocol support for the attributes so
         current devices will not be able to handle or
         provide the information back on a query.
      2. Since there is no support there will need to be
         an intermediary such as a ppd or a driver when
         using such a device.

In reality most information is provided by the current
set of attributes except for some specific hardware and
rendering information.  We should be able to get that
information based on a current group of settings so that
an application can generate a page correctly.
This could be done with the current attribute mechanism
though we have to make sure that we offset any discrepancies
that a particular implementation (such as IPP or various
other backends) with system specific function to provide
the additional information to the application.



Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com


Claudia Alimpich/Boulder/IBM@IBMUS@freestandards.org on 11/21/2002 01:09:27
PM

Sent by:    printing-architecture-admin@freestandards.org


To:    "printing-architecture" <printing-architecture@freestandards.org>
cc:
Subject:    [Printing-architecture] RE:Scenarios for using the various Open
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







_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
 http://freestandards.org/mailman/listinfo/printing-architecture





