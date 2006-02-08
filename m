Return-Path: <imcdonald@sharplabs.com>
Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7ECE@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: FW: [Desktop_printing] Re: [Printing-architecture] Printing Summi
	t memo (for tomorrow sc meeting)
Date: Wed, 8 Feb 2006 11:43:12 -0800 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

Hi,

Forwarded below is Mihara-san's criticism of shifting from PS to PDF
for Linux printing document data format.

For discussion at today's Architecture meeting, along with Till's
comments Monday on Mihara-san's proposed FSG/OP position statement
for OSDL Printing Summit (already forwarded to Architecture list).

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: desktop_printing-bounces@lists.osdl.org
[mailto:desktop_printing-bounces@lists.osdl.org]On Behalf Of Osamu
MIHARA
Sent: Wednesday, February 08, 2006 12:43 AM
To: desktop_printing@osdl.org
Subject: [Desktop_printing] Re: [Printing-architecture] Printing Summit
memo (for tomorrow sc meeting)


Hi,

I just joined Desktop_printing ML and am on the way to understand what 
is discussed for printing summit reading archived mails.

One thing I'm concerning is that transition of printing spool format 
from PostScript to PDF.  Moving spooling format from PS to other is a 
good idea and PDF can be a candidate for it.  However, the original PDF 
from Adobe places meta information (dictionary) at the end of the PDF 
file.  This requires spooling all of the PDF file to spooler or renderer 
before start printing.  PDF/is is proposed by IEEE for facsimile 
application in order to handle stream PDF, but it handles only raster 
data and graphics information seems to be lost. Also streamed PDF is 
provided from Adobe, but I heard that streaming technology about PDF 
format is patented by Adobe.

Under these situation, adopting PDF to spool format can be problems in 
many aspects.

I'd rather like to take SVG for the spooling format, as it is *OPEN*, 
not under control of particular company and well designed graphic 
format, although it has less actual results.

What do you think?
-- 
Osamu MIHARA // Fuji Xerox Printing Systems Co.,Ltd.

_______________________________________________
Desktop_printing mailing list
Desktop_printing@lists.osdl.org
https://lists.osdl.org/mailman/listinfo/desktop_printing
