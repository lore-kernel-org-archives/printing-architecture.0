Message-ID: <116DB56CD7DED511BC7800508B2CA53735D096@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Wed, 9 Jul 2003 08:40:52 -0700 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: SM> Thur 10 July 1pm EDT - Semantic Model (JobX) teleconferen
 ce
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
To: printing-jobticket@freestandards.org, printing-architecture@freestandards.org

Hi FSG folks,

Below is the info for tomorrow's PWG Semantic Model telecon,
reviewing the IPP Job Extensions (JobX) spec in a page turner.
In a moment I'll send our request that "print-optimize" be 
discussed FIRST to the PWG SM/IPP lists (which are also closed).
I'll forward any reply.

PLEASE try to attend tomorrow at 10am PDT / 1pm EDT and support
the separate semantics of "print-optimize".

Thanks,
- Ira McDonald
  High North Inc

-----Original Message-----
From: Zehler, Peter [mailto:PZehler@crt.xerox.com]
Sent: Wednesday, July 02, 2003 11:16 AM
To: PWG Semantic Model WG (sm@pwg.org)
Cc: 'Claudia Alimpich'; IPP Discussion List (IPP@pwg.org);
printing-jobticket@freestandards.org; printing-driver@freestandards.org
Subject: SM> Thur 10 July 1pm EDT - Semantic Model (JobX) teleconference


All,
Thursday July 10th at 1pm EDT is the Semantic Model teleconference. This 
week's Teleconference will be dedicated to IPP JobX.  The document is 
available on the PWG server at 
ftp://ftp.pwg.org/pub/pwg/Semantic-Model/wd-ippjobx10-20030702.doc 
(If someone could convert this to PDF I would appreciate it.  I haven't
found my copy of distiller to put on my new system yet.)
The teleconference is 2 hours long.  It will be run using phone and Webex.
Anyone that does not yet have Webex installed should do that before
Thursday.  Information for the phone and Webex are included below.  NOTE:
New Dial in number and passcode
The agenda for the Semantic Model teleconference is:
1) Discuss the print-quality issue (see included notes below)
2) Discuss the document-xxx-supplied changes in JobX
3) Discuss the output-device resolution
Pete
PS: Bob let me know if there is a problem hosting Webex.
________________________________________________
Dial in Info:
Phone Number:(877) 707-6056
(Phone Number for Xerox Employees: 8*594-0077)
 PARTICIPANT PASSCODE: 437874#
________________________________________________
webex info:
We will also use an on line tool called webex,
if you have not used this before, setup up by
following the First Time Users instructions.
Do this in advance of the meeting.
-------------------------
FIRST TIME USERS
-------------------------
For fully interactive meetings, including the ability
to present your documents and applications, a one-time
setup takes less than 10 minutes. Click this URL to set up now:
http://hp.webex.com
Then click New User.
-------------------------
On Thursday use:
https://hp.webex.com/join/
Then click join unlisted meeting.
Use the info below:
-------------------------
Webex MEETING SUMMARY
-------------------------
Topic: PWG Semantic Model 
Date: Thursday, July 10, 2003 
Time: 10:00 am, Pacific Daylight Time (GMT -07:00, San Jose) 
Meeting number: 21366675 
Meeting password: pwg_sm1! 
Host: 
Bob Taylor (HP)
___________________________________________________


Peter Zehler
XEROX
Xerox Innovation Group
Email: PZehler@crt.xerox.com
Voice:    (585) 265-8755
FAX:      (585) 422-7961
US Mail: Peter Zehler
        Xerox Corp.
        800 Phillips Rd.
        M/S 128-25E
        Webster NY, 14580-9701
Print Quality Issue:
Last Tuesday during the PWG/FSG meeting in Portland we had a discussion
about the IPP print-quality attribute and FSG's desire to add two new
values, "economy" and "fine", where "economy" is lower than "draft" and
"fine" is higher than "high". After some discussion we all pretty much
decided that it is not possible to add these new values to the already
existing "draft", "normal", and "high" values because of the current
definitions of the existing values (high is defined as the highest quality
and draft is defined as the lowest quality). It also seemed like what FSG
wanted was a way to specify print optimization and not additional levels of
print quality.
The FSG working group met today, and based on the input from last Tuesday's
meeting, we would like to propose the addition of a new attribute, called
print-optimize, that is defined as follows:
   print-optimize (type2 keyword)
      This attribute refines the value specified by the print-quality
      attribute.
      The standard keyword values are:
         'image': optimize for image clarity
         'photo': optimize for photo clarity
         'text': optimize for text clarity
         'text-and-image': optimize for both text and image clarity
         'save-toner': optimize for minimal toner usage
         'speed': optimize for printing speed
We would appreciate your feedback on this proposal including suggestions for
additional values.
If this proposal looks good, we would like to propose that it be included in
the JobX Spec. If the print-optimize attribute is approved by PWG by the end
of August, then we can propose that it be added to the JDF 1.2 Spec that is
being finalized in early September.
Thank you for your time and feedback.
Claudia Alimpich
IBM Printing Systems Division
Boulder CO
303-924-4418
alimpich@us.ibm.com
Response to Print Quality Issue:
I understand the desire to avoid violating the semantics of the IPP
attribute - but adding these enumerations to print-quality does not feel as
objectionable to me as splitting a single semantic concept into two
different attributes.  If this is the precedent we take for extending the
semantic model, I'm worried that we'll end up with an increasingly confusing
and complex.  I would rather we take the minor hit and fix the high & draft
definitions in the semantic model than create another ~equivalent attribute
with a whole bunch of special semantic rules (e.g. - what should the service
do if print-quality=high and print-optimize=save-toner?).
bt
---------------------------------------------------
Bob Taylor                                        
Senior Architect                            
IPG Strategic Technology Development  
Hewlett-Packard Co.       
mailto:bobt@hp.com                        
phone: 360.212.2625/T212.2625                    
fax: 208.730-5111                 
---------------------------------------------------   

