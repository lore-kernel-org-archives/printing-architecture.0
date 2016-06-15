Return-Path: <guru@unixarea.de>
Date: Wed, 15 Jun 2016 11:09:16 +0200
From: Matthias Apitz <guru@unixarea.de>
Message-ID: <20160615090916.GA3891@c720-r292778-amd64>
Reply-To: Matthias Apitz <guru@unixarea.de>
References: <57608ADC.9080500@canonical.com>
	<C0209F64-17A0-49A5-911B-AC84BAFEAABB@apple.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <C0209F64-17A0-49A5-911B-AC84BAFEAABB@apple.com>
Subject: Re: [Printing-architecture] [cups] CUPS 2.2.x drops interface
 scripts - How to create filtered queues without PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS user discussion list." <cups@cups.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

El día Tuesday, June 14, 2016 a las 11:00:56PM -0400, Michael Sweet escribió:

> Till,
> 
> > On Jun 14, 2016, at 6:53 PM, Till Kamppeter <till.kamppeter@canonical.com> wrote:
> > 
> > Hi,
> > 
> > I have seen now the new features list of the first beta of the CUPS 2.2.x series and one of the changes is
> > 
> > 	- Interface scripts are no longer supported for security reasons
> > 	  (<rdar://problem/23135640>)
> 
> Here is the original text from this (internal) bug report:
> 
> When a user adds a printer through the Web interface, it's possible to select a predefined model or to upload its own PPD (PostScript Printer Description) file, which is a file format created by vendors to describe the entire set of features and capabilities available for their printers. These files contain the PostScript code (commands) used to invoke features for the print job and hence, they have a preformated structure and known keywords.
> 
> CUPS doesn't check if the uploaded file is a valid PPD file, and therefore, it simply copies the file into the /etc/cups/interaces/ folder with 755 permissions (World executable).
> 
> As it could be seen, it was possible to upload a PDF, a txt and even an ELF executable into that directory through the Web interface. See attachment.
> ....

Michael,

While I understand to upload my own or vendor provided PPD file through
the web interface, which ends up in a directory /usr/local/etc/cups/ppd
on my FreeBSD system, I do not fully understand how I could upload
additional code to /usr/local/etc/cups/interfaces (perhaps, because I
never did so). Could you please shed some light on this? Thanks

	matthias



-- 
Matthias Apitz, ✉ guru@unixarea.de, ⌂ http://www.unixarea.de/  ☎ +49-176-38902045
"Die Verkaufsschlager des Buchmarkts geben Auskunft über den Zustand einer Gesellschaft bzw.
sind, was diese Zeiten angeht, Gradmesser fortschreitenden Schwachsinns. ..." (jW 19.05.2016)
