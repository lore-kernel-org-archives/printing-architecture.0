Message-ID: <116DB56CD7DED511BC7800508B2CA537B001C8@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Thu, 25 Sep 2003 10:53:05 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] Thu 25 Sept - Arch agenda - Mobile Printing revised
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

Hi,                                         Thursday (25 September 2003)

Below is a Mobile Printing use model for the FSG/OP Architecture spec,
revised per Glen's comments during our discussion last week.

Comments?

Cheers,
- Ira McDonald
  High North Inc

------------------------------------------------------------------------
[background]

Format based on latest PSI requirements spec at:

  ftp://ftp.pwg.org/pub/pwg/ps/requirements/wd-psireq10-200309xx.pdf

------------------------------------------------------------------------

6.1  Use Model 1:  Mobile Printing

Mobile printing by reference with document data transformation

Alice goes shopping for a new digital camera to the Fine Camera store
downtown.  She takes along a magazine review of the new Bright 3000.
The sales clerk at the Fine Camera store tells Alice that she would
probably prefer the Orion 777.  Alice uses her mobile handheld to browse
the Web site of Bright and find the URL for the detailed specs of the
Bright 3000.  She uses the public access printer in the Fine Camera
store to print the Bright 3000 specs.  Sure enough, the Orion 777 is a
better choice.


6.1.1  Details

The following numbered paragraphs describe the important details in this
use model and correspond one-to-one with the numbered data flows in the
diagram below.

1.  Alice turns on her mobile handheld and hits the 'I' (Internet)
button.  The mobile handheld starts a Web browser application, which
connects to Alice's wireless Internet service provider (ISP) over a
14.4Kbps cellular modem.  Alice types the Bright URL (from the magazine
review) into her Web browser and hits the Enter key.  The Web browser
connects to Bright's home page over the Internet (via the HTTP proxy in
the cellular ISP's firewall).  Alice searches for the Bright 3000 specs
(available in HTML) and copies the URL into her GUI clipboard.

2.  Alice hits the 'P' (Printer) button.  The mobile handheld starts
a Printer application, which discovers the store's public access printer
over Bluetooth using FSG/OP PAPI (which does Bluetooth device discovery)
and then forms an ad-hoc wireless Personal Area Network (PAN) with the
Target Device (printer).

3.  Alice pastes the saved URL from her GUI clipboard into the Printer
application and hits the Enter key.  The Printer application sends the
URL of the Bright 3000 specs (in HTML) to the Target Device (printer)
over Bluetooth using FSG/OP PAPI (sends a Bluetooth Print-By-Reference
operation) and then subscribes for print job event notifications using
FSG/OP PAPI (sends a Bluetooth Get-Event operation).

4.  The Target Device (printer) sends the URL of the Bright 3000 specs
to the local Print Service (spooler) over the store's Ethernet LAN
using FSG/OP PAPI (sends an IPP Print-URI operation).

5.  The Print Service (spooler) fetches the Bright 3000 specs (in HTML)
from the Content Provider (Bright's Web server) over the Internet (via
the HTTP proxy in the store's Internet firewall).

6.  The Print Service (spooler) converts the Bright 3000 specs from HTML
to PCL using an FSG PAPI extension or the FSG/OP Transformation Service
API (TBD).

7.  The Print Service (spooler) sends the converted Bright 3000 specs to
the Target Device (printer) over the store's Ethernet LAN using FSG/OP
PAPI (sends an IPP Print-Job operation).

8.  The Target Device (printer) sends a print job completed notification
to the Printer application in the mobile handheld over Bluetooth using
an FSG/OP PAPI extension (sends a response to the previous Bluetooth
Get-Event operation).  The Printer application in the mobile handheld
displays "Print job completed successfully" in a status box.  Alice
turns off her mobile handheld, breaking the cellular connection to her
wireless ISP and also breaking the Bluetooth PAN link to the store's
public access printer.


[Ed:  page break here...]
6.1.2  Diagram

           Figure X. Use Model 1:  Mobile Printing

-------------                                   -------------
|           |                                   !           |
|   Print   |                                   !  Content  |
|  Service  |<---------------(5)----------------!  Provider |
|   (PS)    |                                   !    (CP)   |
| (spooler) |                                   !           |
|           |                                   !           |
-------------                                   -------------
E ^  | ^  |   ADSL ISP                T1 ISP          |
t |  | |  |   (600Kbps)   ( ------ )  (1.5Mbps)       |
h |  | |  |              (          )                 |
e |  | |  |             (            )                |
r(4) (6) (7)            (  INTERNET  )               (1)
n |       |             (            )                |
e |       |              (          )                 |
t |       |               ( ------ )  Cellular ISP    |
  |       v                           (14.4Kbps)      v
-------------                                   -------------
|           |<---------------(2)--------------->!           |
|  Target   |                                   !  Mobile   |
|  Device   |<---------------(3)----------------!  Client   |
|   (TD)    |                                   !   (MC)    |
| (printer) |----------------(8)--------------->!(handheld) |
|           |           Bluetooth PAN           !           |
-------------                                   -------------

Data Flows:

1.  MC-CP:  Internet browse for content URL
2.  MC-TD:  Bluetooth discovery of wireless printer
3.  MC-TD:  Bluetooth Print-By-Reference of content URL
4.  TD-PS:  IPP Print-URI of content URL
5.  PS-CP:  HTTP Get of content URL
6.  PS-TS:  Convert content data from HTML to PCL
7.  PS-TD:  IPP Print-Job of converted content data
8.  TD-MC:  Bluetooth print completed notification

Security Domains:

1.  MC-ISP:  Alice's cellular Internet connection (wireless ISP)
2.  MC-TD:   Alice's ad-hoc network (Bluetooth wireless PAN)
3.  TD-PS:   Fine Camera's enterprise network (Ethernet LAN segment)
4.  PS-ISP:  Fine Camera's Internet connection (ADSL modem to ISP)
5.  CP:      Bright's enterprise network (Ethernet LAN segment)
6.  CP-ISP:  Bright's Internet connection (T1 circuit to ISP)
7.  Cloud:   Internet backbone

[Ed:  diagram with bubbles on page 13 of PSI requirements spec]


6.1.3  Requirements

The FSP/OP Architecture MUST support:

1.  Administrative configuration of Print Services (spoolers) and their
associations with Target Devices (printers) using FSG/OP PAPI (or some
TBD API);

2.  Administrative configuration of Target Devices (printers) and their
associations with Print Services (spoolers) using FSG/OP PAPI (or some
TBD API);

3.  Static discovery (via prior administrative configuration) of Print
Services (spoolers) and Target Devices (printers) using FSG/OP PAPI (or
some TBD API);

4.  Dynamic discovery (via discovery and directory protocols) of Print
Services (spoolers) and Target Devices (printers) using FSG/OP PAPI (or
some TBD API);

5.  Dynamic discovery of non-IP (Bluetooth, IRDA, etc.) network Print
Services (spoolers) and Target Devices (printers) using FSG/OP PAPI (or
some TBD API);

6.  Dynamic discovery of direct-connect (USB, parallel, etc.) local
Print Services (spoolers) and Target Devices (printers) using FSG/OP
PAPI (or some TBD API);

7.  Multiple print protocol bindings of FSG/OP PAPI (for non-IP network
and direct-connect printing);

8.  Print-by-reference operations (for printing from low-bandwidth
mobile devices);

9.  Print-by-value operations (for printing of converted or local
content);

10.  Content conversion by FSG/OP Transformation Services (for reference
printing);

11.  Job and Printer event notification (for job complete, etc.).

