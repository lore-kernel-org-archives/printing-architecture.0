Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=/yplzYqbFftTzzWqz3F0XbhEbonK+WihR7ho0AeQau0=;
	b=w92mx8c08DLU8diFg1wOQvtZNObVk7zIOW62HPRUyAUsRaa4rY1i7i4R5U5O9tz2hK
	niW8gjkAuA78MPmVOC+6x1+Lyr/SY/eU1xegyKN7WbuJkNLxBPn+5ZH6xM24PPTtW1O8
	ih7qr4yhHfe/ukurwh6360aIkkq2lMjgIMoJVP2O79zW0c0oY955jbuhLoOdYfsomBXK
	8QJnaTDBrDum0lOroEGo+6Ak2YoOX06QADUgEDClHsSZ/taSIAhTH6/niMvF+Hd6Xiit
	Lm+TBwo+EPPGGRpD2TqRZVW/9AbROHd/7ynu9/DRw8zBzAVRCKkKUtCD+gcnckevvH3K
	G19A==
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
	<5669E0B4.9040009@gmail.com> <20151210204505.GJ2905@var.home>
	<5669E84B.2090400@gmail.com> <20151210213147.GK2905@var.home>
	<566A16AA.7080602@gmail.com> <20151211003126.GB2905@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566B8652.6050805@gmail.com>
Date: Sat, 12 Dec 2015 00:28:34 -0200
MIME-Version: 1.0
In-Reply-To: <20151211003126.GB2905@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 12/10/2015 10:31 PM, Samuel Thibault wrote:
> Till Kamppeter, on Thu 10 Dec 2015 22:19:54 -0200, wrote:
>> I think MIT would be best.
>
> Here is a tarball with fixed copyrights.  I have also moved the shell
> helpers to /usr/share instead of /usr/lib since they are
> architecture-independent.
>
> Samuel
>

Thank you very much for the tarball.

I have integrated your software in cups-filters now and committed it to 
the BZR repository. Please download and try, and tell me whether 
everything is working.

I have the following remarks:

- I have integrated your files into the build system of cups-filters 
following all free software standards. Especially the configure script 
of cups-filters checks the presence of liblouis and also takes an 
"--enable-braille"/"--disable-braille" command line option pair. with 
Braille support being enabled by default if liblouis is present. Paths 
in the scripts are fitted to the system by configure, therefore the 
scripts in the source are *.in files with "@...@" placeholders.

- PPD files are not pre-built by the Makefile. The *.drv and *.defs 
files are put into the standard places in the CUPS directories, so that 
PPDs are generated on-the-fly.

- Documentation of the README and TODO files is joined to the README 
file of cups-filters.

- Your name is in the COPYING file now.

- There are three files which I have dropped as they do not get used (no 
reference to them in the other files): drivers/generic/fr.po, 
drivers/index/fr.po, and drivers/index/ubrlto4dot.c. For what are these 
files used, especially what does drivers/index/ubrlto4dot.c do?

- I have dropped the debian/ directory. Upstream packages should never 
ship a debian/ directory, independent if it contains the files for 
generating Debian packages or something else.

- The Generic embosser PPD file passes cupstestppd, the files for the 
Index printers not. The error message is:

**FAIL**  Multiple occurrences of option IndexTable choice name 24.

and indeed the option "IndexTable" has two choices with "24" as short 
name. As I do not have the printers, I do not know how to fix this 
correctly. Can you fix this? (Found by running the command 
"/usr/lib/cups/daemon/cups-driverd cat drv:///indexv4.drv/ibrlbox4.ppd | 
cupstestppd -" on a system with the current state of the cups-filters 
BZR installed).

Thanks again for your great contribution.

    Till

