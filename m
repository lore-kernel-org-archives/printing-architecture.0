Message-ID: <OF487FBA97.AA0AE5BE-ON86256D82.0070988A-86256D82.0070FCFC@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Thu, 14 Aug 2003 15:34:07 -0500
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] Architecture meeting notes 08/14/2003
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




Attendees:
Mark Hamzy
Till Kamppeter
Ira McDonald
Glen Petrie

For copyrights in FSG released software:  there should be multiple
copyrights with an FSG copyright or only a single FSG copyright.

Use cases:

Use ftp://ftp.pwg.org/pub/pwg/ps/psi_requirements081.pdf as a style guide
   Glen         - editor
   Ira          - PDA/mobile
   Mark         - desktop consumer
   Till         - desktop office
   Glen         - Desktop direct print
   Mark/Claudia - Pay for Print (Claudia)
   Ira/Tom      - Production (Transaction, Statements)

The date that the editor asks for you to send out changes/additions to the
document is Tuesdays.

8<--------8<--------8<--------8<--------8<--------8<--------8<--------8<--------

Portland meeting Use cases:
---------------------------

1st step is discovery (static or dynamic)

Desktop Consumer
---------------------------
low capability printer

User brings up OpenOffice
Loads file .sxi
User hits "print dialog" button
User sees list of printers and basic printing options
User selects printer and "may" select basic printing options
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
User sees list of printers and basic printing options and default printer
is
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

Desktop SOHO
------------

Central Office
--------------
Network shared printer

Pay for Print
Assumption: "University", user is defined and has an existing quota
Assumption: strong security credentials to enable secure billing
transactions
---------------------------
User brings up OpenOffice
Loads file .sxi
User hits "print dialog" button
authentication
User sees list of printers and basic printing options
User selects printer and "may" basic printing options
User "may" select extended printing options
billing
   optional enter billing information
   show total cost
User presses "okay"

Production (Transaction, Statements)
Assumption:
----------------------------
Load predefined job ticket or predefined IPP attributes
Load paper/supplies
print from command line file or stream
go home

Scheduling and Mailboxes
------------------------
Consolidate multiple jobs for single delivery.
  pay for print / production

Graphic art
-----------
large format printer, not offset printing
color matching

PDA
---

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


