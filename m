From: "Charles Hemstreet" <charles_at_hp@hotmail.com>
Date: Fri, 28 Mar 2003 13:42:10 -0800
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Message-ID: <F26zXotJAadVe5HXC9x0000f7c0@hotmail.com>
Subject: [Printing-architecture] Architecture meeting notes 20030327
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


Linux Open Printing Meeting
03/27/03, 8-9am PST (actual 8:00 � 9:00am PST)

Attendees:
Charles Hemstreet
Till Kamppeter
Glen Petry
Mark Hamzy
Norm Jacobs
Claudia Alimpich
Ira McDonald


Agenda for meeting (03/27/03):
�	PLEASE NOTE - Next Architecture meeting will be held on 4/17/03.  There 
will be no meeting 4/3/03 or 4/10/03.

�	FSG/PWG meeting summary � Editor�s and Chair�s of a couple of working 
groups cancelled out � A lot of people cancelled out.  Amy Pitel from ieee 
and Harry Lewis are working to make available some conference bridges in 
case we would like to have joint sessions.

�	Driver subgroup � Will be meeting next Wednesday, March 26, 2003 at 11am 
PST.  � agreed to all the bullets that was posted in the agenda.  Key thing 
� going to support Job Ticket as a requirement for the driver subgroup.  
Mark Hamzy will put up notes from the meeting.

�	Summary of IPP document object review (Ira).  � Pretty mature.  Attributes 
are stable.  Not sure if it is shipping 1.2.x and not 1.2.0.  Besides a few 
new attributes for the document object.  It adds operations � CreateDocument 
� which creates the container.  SetDocumentAttributes, restricted to 
administrator.  There is a CancelDocument � mark the document as cancelled � 
it doesn�t remove it.  There is a deletedocument is the administrator�s 
recovery.  CloseJob, new operation.  �I�m done adding documents to this job 
you can now schedule it� If you want more information, check out the PWG 
server via ftp -> pub/pwg/ipp/new_DOC

�	How are we going to move PAPI 1.0 forward?
o	Principle author doesn�t have time to work on it right now.
o	Norm volunteered to continue to work on it. � Document source was received 
this week.  Michael has given input.
o	Do we want to publish PAPI 1.0 as is, or do we want to catch it up to 
current standards? (Ira)
&#61607;	Document support lacking � adding documents would be the best to 
add if we aren�t going to publish 1.0 as it is.  Document objects.
o	Needs to be published on the PAPI list as a request for feedback.
o	Not in PAPI or Job Ticket (subscriptions � simple notifications are in) is 
notifications � consider adding subscriptions to PAPI

Agenda for next meeting (4/17/03):
�	We need a time scale and roadmap for content release needed now that we 
are looking at getting the driver subgroup up and running with that thought 
that we will be prototyping drivers.
o	Job Ticket 1.0 needs to move from API UML (pretty solid) to API in a 
programming language.  Do it in �C� first, then Java, and then revisit �C� 
API while working on the Java API.
�	Summary of meeting in DC from Claudia



_________________________________________________________________



