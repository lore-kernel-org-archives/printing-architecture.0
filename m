Message-ID: <116DB56CD7DED511BC7800508B2CA53735D07D@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] Architecture meeting *UNABLE TO HOST*
	 agenda 20030626. . .
Date: Thu, 26 Jun 2003 12:28:44 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
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
To: 'Claudia Alimpich' <alimpich@us.ibm.com>, printing-architecture@freestandards.org, Charles Hemstreet <charles_at_hp@hotmail.com>

Hi,

Norm's file from last week is at:

ftp://ftp.pwg.org/pub/pwg/fsg/architecture/FSG-10000ft.pdf

Cheers,
- Ira McDonald


-----Original Message-----
From: Claudia Alimpich [mailto:alimpich@us.ibm.com]
Sent: Thursday, June 26, 2003 3:19 PM
To: printing-architecture@freestandards.org; Charles Hemstreet
Subject: Re: [Printing-architecture] Architecture meeting *UNABLE TO
HOST* agenda 20030626. . .






Charles,
This list of scenarios is from last January, it  is not the use cases that
we worked on Tuesday 6/17 in the evening. We used the flip chart to create
a list of the test cases that we wanted to work through and then as we
worked through the details of each use case you entered the information
into your computer that was hooked up to the projector. Do you have this
file that you can append to the mailing list?

Claudia

"Charles Hemstreet" <charles_at_hp@hotmail.com>@freestandards.org on
06/26/2003 11:01:33 AM

Sent by:    printing-architecture-admin@freestandards.org


To:    printing-architecture@freestandards.org
cc:
Subject:    [Printing-architecture] Architecture meeting *UNABLE TO HOST*
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

