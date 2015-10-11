Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=QiecWENdbrczmYw2auvytIQXqoD+V1WB9Rw9clV1KCU=;
	b=xbRdA3N5VVNzVFbNw2gc4ZnrbkDn+SenSJGAs+oSnzVENyjX/ALeceqof945sXPk+I
	UNHSe7lVrEGFnsWxjtQDx5O1gFIowYfRsD6cuEp2MpRyMUWN680xQtyT74lBbaO58eMg
	ZseImP6r4mSED8U9KfISuXS/4O/UQ5uz7Gm7elCYPB1Q5uimn1f3zz4/7up3zB37+cBN
	0T1c65mnQooe3WusRjjas2bXt3GKuxSww25z7qvH+n2rJS3cEjPy/vTmCzNRdflD1NV9
	BDnXUKOjhi2wnXHqDiwpSnhyNiRyS4QvOzxbdKkUnfYvNzBceQ5NXgk3CYKraTU6dl+7
	Lpxg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <561AB144.3080203@gmail.com>
Date: Sun, 11 Oct 2015 19:58:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Driver for native XPS printers urgently
	needed
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: gs-devel@ghostscript.com
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Helge Blischke <HelgeBlischke@web.de>

Hi,

in the segment of high-end laser printers there is a trend to XPS-only 
printers and this is a well-known protocol/PDL (Ghostscript/GhostPDL can 
be used with it, as both input and output format). Therefore it should 
be possible to develop a working generic XPS printer driver soon.

I got aware of this by this thread on the CUPS user mailing list:

Printing to native XPS printers using CUPS

on

http://www.cups.org/pipermail/cups/2015-October/thread.html

or

http://www.cups.org/pipermail/cups/2015-October/027167.html
http://www.cups.org/pipermail/cups/2015-October/027168.html
http://www.cups.org/pipermail/cups/2015-October/027171.html
http://www.cups.org/pipermail/cups/2015-October/027172.html
http://www.cups.org/pipermail/cups/2015-October/027173.html

Ghostscript has already an "xpswrite" output device, but the device is 
missing the needed flexibility. Pages are converted to Tiff with 96 dpi 
for sending, Only RGB color is available as color space, ...

I want to request as a new feature for GS 9.19 that Ghostscript's 
"xpswrite" device gets a real printer driver where you can choose a 
resolution, color/bw, ...

Then I would add a gstoxps filter to cups-filters and a PPD for a 
"Generic XPS printer" to not need to list such printers as Paperweight 
and make it difficult for users to print from Linux on modern printers.

WDYT?

    Till
