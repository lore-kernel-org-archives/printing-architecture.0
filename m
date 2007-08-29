DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
	b=CloJYrlzG/InV28S33dG6h9wKmgV9sG0ehQ3ThPl50WU3+Hq0A/RtoKBAUDRPVXjHsuXJu2GdZebG0cnR8i4oB1yd+Aa/dYjhyNCkgi+yujDNLW1NnGoZw8X2htgAwAA5voFyFL+peMQ230cBi1C2Vor8XPiiQX2p9RFF7UHQu8=
Message-ID: <46D59D8E.9070307@gmail.com>
Date: Wed, 29 Aug 2007 17:23:42 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] The Linux Foundation is Hiring
 Students/Interns for Implementing the PDF Printing Workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

One of the decisions which was made on the OSDL Printing Summit in 
Atlanta last year and widely accepted by all participants was to switch 
the standard print job transfer format from PostScript to PDF. This 
format has many important advantages, especially

* PDF is the common platform-independent web format for printable
   documents
* Portable
* Easy post-processing (N-up, booklets, scaling, ...)
* Easy Color management support
* Easy High color depth support (> 8bit/channel)
* Easy Transparency support
* Smaller files
* Linux workflow gets closer to Mac OS X

To turn this into reality work is needed in many components of the 
printing infrastructure. The japanese team of the OpenPrinting work 
group has already the needed CUPS filters in their Subversion repositories.

What is still missing is to make the universal print filter foomatic-rip 
(most printer drivers are integrated into the printing system with this 
filter) handling PDF input and to make the built-in printer drivers of 
Ghostscript also working with other renderers than Ghostscript, like 
XPDF/Poppler for example.

These two projects are now open for students or interns. If you like to 
take one of these challenges, go to the detailed project description 
and/or contact Till Kamppeter (till.kamppeter at gmail.com).

If you know someone who could be interested, please forward this 
message. Please spread this message also on other lists, forums, ...

    Till
