Message-ID: <CBD6266EA291D5118144009027AA63350A371F9C@xboi05.boi.hp.com>
From: "PRATT,SHAWN (HP-Boise,ex1)" <shawn_pratt@hp.com>
Subject: RE: [Printing-architecture] Scenarios for using the various Open 
	Print API
Date: Wed, 4 Dec 2002 17:27:16 -0500 
MIME-Version: 1.0
Content-Type: text/plain
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
To: 'Claudia Alimpich' <alimpich@us.ibm.com>, printing-architecture <printing-architecture@freestandards.org>, "'printing-announce@freestandards.org'" <printing-announce@freestandards.org>

Claudia:  I sent a general message a while back to not use printing-discuss
anymore.  It was meant for old note taking from last year and that was
replaced this year with printing-meetingnotes.  All announcements and
discussions where suppose to go through printing-announce.  I have set the
system up so that any member can simply send messages to all distribution
lists (except printing-discuss) and they should be automatically sent out,
regardless of size.  The only time that does not happen is if you are not a
member, which is the case for some.  (Everyone should receive, once a month,
an email stating the distribution lists you are signed up for.  This is sent
to each email address registered in the system).

Now, having said that, there are a few who continue to use printing-discuss.
Yes, the name is deceiving.  I would have removed it entirely but we would
then loose all the great archival of information, if we did.  Does everyone
want to change again.  My goal was to keep it simple.  In a past discussion,
in order to keep it simple we agreed to the following:

1.  Use printing-announce for announcements and discussions to the general
Openprinting members.
2.  Use printing-meetingnotes for archival of meeting notes from all groups
(steering, regional and task groups).
3.  Use task distribution groups such as printing-jobticket or
printing-spool, to have specific email discussions about that particular
subject.

Does this still work for folks?  If not, I can change.  If so, then we all
need to start using this approach.

I also will apologize for not addressing the printing-discuss messages that
continue to show there as quickly as possible.  While it has reduced our
SPAM issue, there is still a number of SPAM messages that get posted to the
site but that I reject.  I do this about once a week.  I try to catch and
make sure if a ligitement message is sent that I get it taken care of.  I
must have missed yours.  

If people would like to change the approach mentioned above, let me know.  I
can make changes.

- Shawn Pratt

-----Original Message-----
From: Claudia Alimpich [mailto:alimpich@us.ibm.com] 
Sent: Thursday, November 21, 2002 11:59 AM
To: printing-architecture
Subject: [Printing-architecture] Scenarios for using the various Open Print
API

First I sent this note to printing-discuss but it got held up waiting for
the monitor. Maybe the same will happen to this note...

Following is what I came up with for possible scenarios describing how to
use the APIs together. Please provide your comments and any additions. When
it is clean, I will post it to the PWG site.

Claudia Alimpich
alimpich@us.ibm.com
-------------------------------------------------------------------------

21Nov2002

            Using the Application, JTAPI, Capabilities API, PAPI, and Print
Service


Following are scenarios that describe how the various Open Print APIs can
be used (or not used)
together:

      1) One of the following:
            a) The Application provides the user with choices that are
determined by
                  the application itself.
            b) The Application uses the Capabilities API* to determine the
capabilities
                  of the target device(s) and then provides the user with
choices.
            c) The Application uses a PPD file to determine the
capabilities of the target
                  device.
            d) What other ways can device capabilities be determined?
      2) The user makes selections from the choices.
      3) Optionally, one of the following:
            a) The Application uses the JTAPI to create a job ticket.
            b) The Application sets IPP attributes that describe how the
job is to be
                  processed.
            c) Both a) and b).
      4) One of the following:
            a) The Application uses the PAPI to submit the data/content
file and the job
                  ticket to the Print Service.
            b) The Application uses the PAPI to submit the data/content
file and the IPP
                  attributes to the Print Service.
            c) The Application uses the PAPI to submit the data/content
file, the job ticket,
                  and the IPP attributes to the Print Service.
            d) The Applicaiton saves the job ticket without submitting it
or the data/content
                  file to the Print Service.

* Question: Is the Capabilities API part of PAPI or a separate API?





_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

