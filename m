Subject: RE: [Printing-architecture] [who hosts??] Architecture meeting *U	NABLE TO
 HOST* agenda 20030626. . .
Message-ID: <OFED4058DB.6E567857-ON87256D51.006194DE@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Thu, 26 Jun 2003 11:47:12 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
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




I don't have another phone number to use (the JT phone number is only for
that day and time). I believe that Glen said that he was not going to be
able attend today's meeting.

Claudia

"McDonald, Ira" <imcdonald@sharplabs.com>@freestandards.org on 06/26/2003
11:21:08 AM

Sent by:    printing-architecture-admin@freestandards.org


To:    "'Charles Hemstreet'" <charles_at_hp@hotmail.com>,
       printing-architecture@freestandards.org
cc:
Subject:    RE: [Printing-architecture] [who hosts??] Architecture meeting
       *U   NABLE TO HOST* agenda 20030626. . .



Hi,

Charles - does someone else have the chair activation code?

Claudia and Glen - should we shift to some other teleconference
number and passcode?

Cheers,
- Ira


-----Original Message-----
From: Charles Hemstreet [mailto:charles_at_hp@hotmail.com]
Sent: Thursday, June 26, 2003 1:02 PM
To: printing-architecture@freestandards.org
Subject: [Printing-architecture] Architecture meeting *UNABLE TO HOST*
agenda 20030626. . .


Folks:

I will not be able to host today do to a conflict in meetings.

The proposed agenda is the continuation of the USE-CASES.

I've included the USE-CASES we came up with at the PWG/FSG meeting.

----------------------------------------------------------------------------

-----------------

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

_________________________________________________________________
Add photos to your messages with MSN 8. Get 2 months FREE*.
http://join.msn.com/?page=features/featuredemail


_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
 http://freestandards.org/mailman/listinfo/printing-architecture



