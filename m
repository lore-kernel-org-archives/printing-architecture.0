Message-ID: <116DB56CD7DED511BC7800508B2CA537B001AE@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Sun, 14 Sep 2003 16:43:31 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] Sect 6.1 Use Model 1: Mobile Printing for FSG Arch spec
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

Hi,                                           Sunday (14 September 2003)

Below is a Mobile Printing use model for the FSG/OP Architecture spec.
I followed the format from the latest PSI requirements spec, because I
frankly didn't understand what Glen wanted with several of his proposed
sub-sections.  The latest PSI requirements spec is at:

  ftp://ftp.pwg.org/pub/pwg/ps/requirements/wd-psireq10-200309xx.pdf

Comments?

Cheers,
- Ira McDonald
  High North Inc

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


6.1.1  Behind the Scenes

1.  Alice connects to her wireless Internet service provider (ISP) over
GSM cellular (via the 14.4Kbps cellular modem in her mobile handheld),
surfs to Bright's home page (via the URL from the magazine review), and
searches for the URL of the Bright 3000 detailed specs (in HTML).

2.  Alice discovers the store's public access printer over Bluetooth,
using FSG/OP PAPI (which uses Bluetooth device discovery via the
Bluetooth card in Alice's mobile handheld), and then forms an ad-hoc
wireless Personal Area Network (PAN) with the Target Device (printer).

3.  Alice sends the URL of the Bright 3000 specs (in HTML) to the Target
Device (printer) over Bluetooth, using FSG/OP PAPI (which sends a
Bluetooth Print-By-Reference operation), and then subscribes for event
notifications using FSG/OP PAPI (which sends a Bluetooth Get-Event
operation).

4.  The Target Device (printer) sends the URL of the Bright 3000 specs
to the local Print Service (spooler) over the store's Ethernet LAN,
using FSG/OP PAPI (which sends an IPP Print-URI operation).

5.  The Print Service (spooler) fetches the Bright 3000 specs (in HTML)
from the Content Provider (Bright's Web server) over the Internet, using
the HTTP proxy in the store's Internet firewall.

6.  The Print Service (spooler) converts the Bright 3000 specs from HTML
to PCL using an FSG PAPI extension or the FSG/OP Transformation Service
API (TBD).

7.  The Print Service (spooler) sends the converted Bright 3000 specs to
the Target Device (printer) over the store's Ethernet LAN, using FSG/OP
PAPI (which sends an IPP Print-Job operation).

8.  The Target Device (printer) sends a print completed notification
to the Mobile Client (handheld) over Bluetooth, using an FSG/OP PAPI
extension (which sends the response to a Bluetooth Get-Event operation).


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
E ^  | ^  |   (600Kbps)               (1.5Mbps)       |
t |  | |  |   ADSL ISP    ( ------ )  T1 ISP          |
h |  | |  |              (          )                 |
e |  | |  |             (            )                |
r(4) (6) (7)            (  INTERNET  )               (1)
n |       |             (            )                |
e |       |              (          )                 |
t |       |               ( ------ )  (14.4Kbps)      |
  |       v                           Cell ISP        v
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
6.  PS-TS:  Converting content data from HTML to PCL
7.  PS-TD:  IPP Print-Job of converted content data
8.  TD-MC:  Bluetooth print completed notification

Security Domains:

1.  MC-TD:  Alice's ad-hoc network (Bluetooth wireless PAN)
2.  TD-PS:  Fine Camera's enterprise network (Ethernet LAN segment)
3.  CP:  Bright's enterprise network (Ethernet LAN segment)
4.  Internet:  public network

[Ed:  diagram with bubbles on page 13 of PSI requirements spec]


6.1.3  Requirements

The FSP/OP Architecture MUST support:

1.  Administrative configuration of Print Services (spoolers) and their
associations with Target Devices (printers) using FSG/OP PAPI (or some
TBD API).

2.  Administrative configuration of Target Devices (printers) and their
associations with Print Services (spoolers) using FSG/OP PAPI (or some
TBD API).

3.  Static discovery (via prior administrative configuration) of Print
Services (spoolers) and Target Devices (printers) using FSG/OP PAPI (or
some TBD API).

4.  Dynamic discovery (via discovery and directory protocols) of Print
Services (spoolers) and Target Devices (printers) using FSG/OP PAPI (or
some TBD API).

5.  Dynamic discovery of both direct-connect local (USB, parallel, etc.)
and non-IP network (Bluetooth, IRDA, etc.) Print Services (spoolers) and
Target Devices (printers) using FSG/OP PAPI (or some TBD API).

6.  Multiple print protocol bindings of FSG/OP PAPI (for non-IP and
direct printing).

7.  Print-by-reference operations (for printing from low-bandwidth
mobile devices).

8.  Print-by-value operations (for printing of converted or local
content).

9.  Content conversion by FSG/OP Transformation Services (for reference
printing).

10.  Job and Printer event notification (for job complete, etc.).

