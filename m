Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C75AF@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Tue, 9 Mar 2004 10:03:45 -0800 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] RE: Posted Bi-di Plug-in API draft document
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: 'TORATANI Yasumasa' <toratani.yasumasa@canon.co.jp>, printing-architecture@freestandards.org

Hi,

Toratani-san has just uploaded the Bidi spec to the PWG 
server at:

ftp://ftp.pwg.org/pub/pwg/fsg/bidi/BiDiAPI_draft_20040301.pdf
(underscores in that filename)

Please read this spec in detail and send comments as soon
as possible.  It's quite a mature spec at present.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: TORATANI Yasumasa [mailto:toratani.yasumasa@canon.co.jp]
Sent: Sunday, February 29, 2004 7:29 PM
To: printing-architecture@freestandards.org;
printing-japan@freestandards.org
Subject: [Printing-architecture] Bi-di Plug-in API draft document


Hi,

I've uploaded the Bi-di Plug-in API draft document at:
http://www2s.biglobe.ne.jp/~papadon/OpenPrinting/BidiPluginAPI/

You can download the latest document from the above location,
and it's a first draft version fully translated in English.

I think, we need more clarifications in the near future version's
docutment for:

- The standard "idRequest" value for the bidiCtrl() function.
  (Currently, no standard idRequest is defined.)
- Sample bi-di implementation under CUPS.
- Mapping some of the printer status data to IPP attributes.
- PPD keywords related to Bi-di Plug-in modules.
- Guidelines for saving the printer status data as a local file.

Comments are welcome.
Regards,

-----------------------------------------
TORATANI Yasumasa
Computer Technology Development Dept. 12
CANON INC. Shimomaruko Office, Japan


_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

