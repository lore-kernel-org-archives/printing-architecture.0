Message-ID: <116DB56CD7DED511BC7800508B2CA537B00167@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Tue, 19 Aug 2003 10:06:30 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FSG/OP Requirements use model diagrams
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

Hi,

Alan Berkema (HP, chair of IEEE/ISTO PWG Print Services Interfaces, PSI)
updated three of the five PSI use model diagrams in the style I suggested
in the simple ASCII-art diagram I sent below.  I stored Alan's (original)
document on the PWG FTP server at:

  ftp://ftp.pwg.org/pub/pwg/ps/psi-reqs-figs-2.pdf

CHANGES we made at today's PSI telecon to use model 1 are:

(1) Extended the blue Personal Area Network (PAN) ellipse to include
    Target Printer within the Bluetooth PAN domain (see use model 2).
(2) Changed 'Public WAN' to simply 'Internet'
(3) Put the 'PAN' _inside_ the blue ellipse (like 'Intranet')
(4) Added 'Intranet' _inside_ the Content Provider's black ellipse'

On reflection, I personally prefer the generic term 'Piconet' to
'PAN' for the Mobile's administrative domain.

Glen - I'll try to get MS PowerPoint source (or whatever) for these
diagrams to you ASAP - I'll write up my Mobile print-by-reference
use case for FSG/OP with a simple ASCII-art equivalent diagram.

Cheers,
- Ira McDonald
  High North Inc


-----Original Message-----
From: BERKEMA,ALAN C (HP-Roseville,ex1) [mailto:alan.berkema@hp.com]
Sent: Monday, August 18, 2003 7:37 PM
To: 'McDonald, Ira'
Subject: RE: PS> Enhance version of Use Model 1 diagram


Ira,

I only got through Use Model 3.

Talk to you tomorrow.

regards,
Alan


-----Original Message-----
From: McDonald, Ira [mailto:imcdonald@sharplabs.com]
Sent: Wednesday, August 06, 2003 11:41 AM
To: 'ps@pwg.org'
Subject: PS> Enhance version of Use Model 1 diagram


Hi Alan and Dave,

Below is a simple ASCII-art enhancement of Use Model 1 diagram,
showing the actual network technologies and connectivity, so that
we can address concrete security threats.

Comments?

Cheers,
- Ira McDonald
  High North Inc
 
--------------------------

                         Use Model 1
-------------                                   -------------
|           |                                   !           |
|   Print   |<---------------(5)----------------!  Content  |
|  Service  |                                   !  Provider |
|   (PS)    |                                   !           |
-------------                                   -------------
E ^   ^   |   ADSL Modem             T1 Circuit       |
n |   |   |      ISP      ( ------ )    ISP           |
e |   |   |              (          )                 |
t(3) (4) (6)            (  INTERNET  )               (0)
L |   |   |              (          )                 |
A |   |   |               ( ------ ) GSM Cellular     |
N v   v   v                          Wireless ISP     v
-------------                                   -------------
|           |                                   !           |
|  Target   |<---------------(1)----------------!  Mobile   |
|  Device   |           Bluetooth PAN           !  Device   |
| (Printer) |<---------------(2)----------------!           |
-------------                                   -------------
 (PSI Client)

Data Flows:
(0) Browse - Public Internet browse for content URL
(1) Discovery - Bluetooth discovery
(2) Reference - Bluetooth print-by-reference of content URL
(3) C2S - Ethernet LAN PSI print job
(4) T2S - Ethernet LAN PSI print job
(5) Content - Public Internet fetch of content URL
(6) Formatted Data - Ethernet LAN PSI print job


