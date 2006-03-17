Return-Path: <imcdonald@sharplabs.com>
Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7FB2@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 17 Mar 2006 11:37:04 -0800
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----_=_NextPart_000_01C649F8.971AADE6"
Subject: [Printing-architecture] FW: [Printing-sc] Slide contents for
	Printing summit 2006
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_000_01C649F8.971AADE6
Content-Type: text/plain;
	charset="iso-2022-jp"

Hi Ide-san,

Thanks very much for these excellent PCM slides!

Everyone - please post all presentation materials to the FSG OP Architecture
mailing list (copied above), so that the full FSG OP community can see and
comment (e.g., Claudia Alimpich, chair of Job Ticket WG, is not an SC
member).

I don't personally have tools to generate final slides with images, but Norm
Jacobs (Sun, FSG OP chair) or Claudia Alimpich can probably help us.  We
should try to keep common look-and-feel to FSG OP slides, I think.

Claudia has already edited and recently posted the FSG OP Overview slides
and PAPI and JTAPI slides (which still need to be edited).

The FSG OP Architecture team will be performing more edits to slides at
our next teleconference on Wednesday 29 March, for review at the FSG OP
Steering Committee meeting the following week and final review at our extra
FSG OP Architecture teleconference on Wednesday 5 April.

NOTE - I have a serious conflict with Wednesday 5 April - I will be the
presenter at that time during the IEEE-ISTO PWG face-to-face, so I 
probably can't join that last FSG OP Arch teleconference before the
OSDL Printing Summit the following week.

Cheers,
- Ira




Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: printing-sc-bounces@lists.freestandards.org
[mailto:printing-sc-bounces@lists.freestandards.org]On Behalf Of Ide Kentaro
Sent: Friday, March 17, 2006 2:36 AM
To: Printing-Sc (E-mail)
Subject: [Printing-sc] Slide contents for Printing summit 2006


Hi, folks,

I attach slide contents for Printing summit 2006.
It is text based file without images.
I'll send images to Ira later.

Feel free to ask me about contents.

Best regards,
--
Kentaro Ide
VA Design Engineering  Group
Seiko Epson Corp.



------_=_NextPart_000_01C649F8.971AADE6
Content-Type: text/plain;
	name="PCM-StatusupdateApril2006.txt"
Content-Disposition: attachment;
	filename="PCM-StatusupdateApril2006.txt"

<Slide 01>
Over view of PCM
	- PCM is wrapper module for device files
	- PCM manage data channel between driver and status monitor to device
		- Upper layer can use Bi-Di channel via PCM
		- Status monitor can read device status without driver
	- PCM provide API and Plug-in I/F
		- Vender depended control sequence absobed by Plug-in
		- Vender can make drivers with common method


<Slide 02>
PCM diagram
// Comment to Ira
//  See PCM draft and I'll send you image file


<Slide 03>
PCM APIs
	- fsgpcmOpen()
		Open port with specific port type and device
	- fsgpcmClose()
		Close port
	- fsgpcmRead()
		Read data from port
	- fsgpcmWrite()
		Write data to port
	- fsgpcmIOControl()
		Used to send control command
	- fsgpcmIOError()
		Get error code when error occured


<Slide 04>
Status update April 2006
	- PCM API specific will move into release procedure stage
		- PCM draft is opened at OpenPrinting WG
	- PCM/Draft focus to provide Vender independent Bi-Di I/F
	  for various devices
	- Japan team start discussion about PCM implementation
	- Information about activity and documents
		- WG information: <http://www.openprinting.org/moin.cgi/OpenPrinting/PrintChannelManager>
		- Generic information: <http://www.openprinting.org/>


<Slide 05>
Next step
	- 2006/2Q:
		- Review and release
		- Start deliberate possibility of implement

------_=_NextPart_000_01C649F8.971AADE6
Content-Type: text/plain;
	name="ATT08105.txt"
Content-Disposition: attachment;
	filename="ATT08105.txt"

_______________________________________________
Printing-sc mailing list
Printing-sc@lists.freestandards.org
http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-sc

------_=_NextPart_000_01C649F8.971AADE6--
