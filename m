From: "Charles Hemstreet" <charles_at_hp@hotmail.com>
Date: Tue, 15 Jul 2003 08:28:21 -0700
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Message-ID: <Sea2-F65Zxj0vit6Jcu0001d7f0@hotmail.com>
Subject: [Printing-architecture] Architecture meeting notes 20030710...
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

Architecture meeting notes 20030710.

New meeting time for our architecture teleconference:

Every Thursday
1200-1300 PST
1300-1400 MST
1400-1500 CST
1500-1600 EST
2000-2100 UTC

There is a new call-in number:

          - *Toll Free Access Number:
            866-639-4758 (toll-free)
            574-935-6716 (toll)

          - Participant PIN:
            2124490

-------------------------
In attendance:

Norm Jacobs
Ira McDonald
Charles Hemstreet
Glen Petrie
Claudia Alimpich
Mark Hamzy
Till Kamppeter
Pete Zannucci


Agenda:

1)	review the TODO list � we reviewed the todo list and everyone agreed
2)	discuss who will/should create each diagram � High level diagram, big 
piece print service box, all that detail that Pete had

Working with the 10,000,000 foot level � Norm will reformat this picture.

Next do capabilities,
show the actors

Ira suggests that we use the jpeg picture that was taken at the Portland 
meeting as a reference

Claudia will do Job Submission

3)	*continue working on the use cases
4)	*other?

Thanks,
Charles

* - items that were not covered during the meeting



Desktop Consumer
---------------------------
User brings up OpenOffice
Loads file .sxi
User hits "print dialog" button
User sees list of printers and basic printing options
User selects printer and "may" basic printing options
User "may" select extended printing options
User presses "okay"

Desktop Office
---------------------------
User brings up OpenOffice
Loads file .sxi
User hits "print dialog" button
User sees list of printers and basic printing options
User selects printer and "may" basic printing options
User "may" select extended printing options
User presses "okay"

Desktop (Direct print)
Assumption: It is in the correct format, and drag and drop
---------------------------
User finds file
Drag and drop on to print manager/specific printer icon
User sees list of printers and basic printing options and default printer is 
selected
User selects printer and "may" select basic printing options
User "may" select extended printing options
User presses "okay"

Desktop (Direct print)
Assumption: It is in the correct format, print from command line
---------------------------
User finds file,
Printing from command line with printer (optional) defined and options 
(optional)
hits return

	Pay for Print
	Assumption: "University", user is defined and has an existing quota
	---------------------------
	User brings up OpenOffice
	Loads file .sxi
	User hits "print dialog" button
	User sees list of printers and basic printing options
	User selects printer and "may" basic printing options
	User "may" select extended printing options
	User presses "okay"

Production (Transaction, Statements)
Assumption:
----------------------------
Load predefined job ticket or predefined IPP attributes
Load paper/supplies
print from command line file or stream
go home


Pay for print
Assumption: strong security credentials to enable secure billing 
transactions
-----------------------------



TODO List
---------
Here's the to-do list for our group (from PWG/FSG meeting)

1)	Document the reduced architecture drawing and their scenarios

2)	Review #1

3)	Continue USE-CASES

4)	Generate requirements from USE-CASES

5)	Validate detailed work against requirements

6)	Generate a specification that everyone will adopt

7)	Ira brought up good topic  that should be discussed in future meeting -  
Security meta data for URI references




Action Items
Ira will send out a pointer to 5 new new use cases for us to add to our use 
case list.

_________________________________________________________________
Tired of spam? Get advanced junk mail protection with MSN 8. 
http://join.msn.com/?page=features/junkmail


