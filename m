Message-ID: <3FA141E2.7060706@gmx.net>
Date: Thu, 30 Oct 2003 17:52:50 +0100
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] 3.6 Use Model 5: Desktop Office Printing
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

here it is.

    Till


3.6 Use Model 5: Desktop Office Printing

Document from an application is printed on a printer shared by 3-5=20
workplaces

Example Use Model:

X is working in an office room with three other employees. Everone has a=20
PC and there is a color inkjet (for the few color printouts needed) and=20
a small laser (for the stuff which is confidential and should not leave=20
this room) in the room. X wants to print some color and black-and-white=20
documents with different quality requirements on the printers in his=20
room. It should by all means be avoided that one of the documents comes=20
out on the central printer in the hallway.

Details:

1. X creates a confidental document containing color photos in an office=20
application on his desktop PC. He wants to print it and therefore he=20
chooses "File"/"Print" in his application program.

2. The application program contacts the local spooler on X's PC to ask=20
for the available printers and there basic capabilities as Description,=20
Location, bw/color, photo-capable, ...

3. The local spooler communicates with the other print spoolers on the=20
local network to exchange the information of the available printers.

3.1 All machines hosting a print queue and having it configured for=20
being shared (print servers) broadcast a list of their print queue names=20
together with the server's IP address.

In our case Y's machine has the inkjet on its USB and Z's machine the=20
laser on its parallel port. Also the server in the server room for the=20
printer in the hallway (connected via ethernet adapter) sends broadcasts.

3.2 All other spoolers are listening for these broadcasts and so get the=20
  queue list from every server.

So the spooler on X=B4s machine gets "inkjet on PC Y", "laser on PC Z",=20
"hallway_printer on central_server".

3.3 The spooler knows about the existence of all queues now and so it=20
can ask all servers for the basic capabilities. The server return the=20
following info:

Y: inkjet  6-ink photo color printer,  room of W, X, Y, and Z
Z: laser   desktop bw laser printer, 10 p/min,  room of W, X, Y, and Z
central_server:  workgroup color laser 50 p/min,  hallway 1st floor

4. This the local spooler sends as answer to the request of the=20
application program the information shown in 3.3.

5. The application pops up the printing dialog with the printer menu. X=20
reads what printers are available.

6. X chooses the inkjet as it is the photo-capable color printer and it=20
is in his room, so that noone in the hallway will see this confidential=20
document.

7. The photos have to come out in the best possible quality, as the=20
document is an application for some big business. So X cklicks on=20
"Properties" to adjust the quality. The application requests the full=20
capabilities of the inkjet from the local spooler.

8. X asks W, who is a student working in the company, to put=20
high-quality inkjet paper into the one tray of the inkjet.

9. The local spooler polls the full capabilities of the inkjet (the=20
user-settable options, the non-printable margins, the resolution, ...)=20
from the spooler on Y's PC.

10 Y's PC answers the required info back and X's spooler passes it on to=20
the application program.

11. The option dialog pops up and X chooses "High Quality" in the=20
"Quality" option, "Photos and text" in the "Document type" option and=20
"High quality inkjet paper" in the "Media Type" option. X does not mark=20
"Notification on end of job", as he can see the printer (otherwise he=20
would subscribe to end-of-job notification).

12. X clicks OK for the options and the "Print" in the printing dialog.

13. The PostScript generator of the application resizes the photos from=20
the camera's 14 MP to the 600 dpi of the inkjet printer and builds the=20
PostScript file of the documents with all fonts and photos embedded. It=20
stops with an error message popup if elements of the document fall in=20
the unprintable border, asking the user whether he wants to print=20
anyway. X says "No", corrects the offending part and prints again.

14. The application sends the PostScript file with all options in the=20
job ticket to the local spooler.

15. The local spooler passes the data on to the spooler on Y's machine

16. The spooler on Y's machine reads the job ticket and calls renderer=20
and driver appropriately to generate the data in the inkjet's native=20
language.

17. The spooler sends the data to the USB and the printer prints.

18. Sees the paper coming out and picks up the excellent quality printout.



