Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=vwUhceBDuvbCGBEiwez5AyH4eHQWKXpmyJti47MUK7Y=;
	b=j3TNHSYqmdkHqy7CjUyRdXerXZfewKuJubUJ+elDSR1UE+WXs4b/4XmUmfIX+G9Lg7
	cH3sdWDW0mszTUzNdg7hRmYY6SvKvBk0BpAlUuJCXhwenoKRtJclI/15PjNMz0UnQktm
	ZyiaRC0VsrhbJdwC6neFayKgtoYYEP7adFTEnq/sMNO8VH+3zxH9/pKYriUzWrY/YBl5
	No7vPkVpCJidlDHD4kIrY7d09NTeAOdKJMXquZIdncnKOM4pncu2++39mcBz0krmYXdX
	VKNW+/a0nRVzoQ5OVF/RPaqn7krzuCaMyg+okwQeuRoQjLm/L/vs4WATP76XZ0zEI7jB
	bznw==
References: <566F564D.9040000@gmail.com> <20151215000648.GK2967@var.home>
	<566F66B8.4060106@gmail.com> <20151220235820.GU4287@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5677F4DF.6080601@gmail.com>
Date: Mon, 21 Dec 2015 10:47:27 -0200
MIME-Version: 1.0
In-Reply-To: <20151220235820.GU4287@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] documents and braille [Was:
	cups-filters 1.4.0 released!]
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <sthibault@debian.org>, Debian-printing@lists.debian.org, printing-architecture@lists.linux-foundation.org, Adam Chester <adam.chester@pentest.co.uk>, Yann Soubeyrand <yann-externe.soubeyrand@edf.fr>

On 12/20/2015 09:58 PM, Samuel Thibault wrote:
> Hello,
>
> Till Kamppeter, on Mon 14 Dec 2015 23:02:48 -0200, wrote:
>> Applications usually send only PDF when printing, CUPS usually
>> accepts also images and plain text which is also covered by these.
>
> I'm wondering about this.  Ideally the scenario that should work is:
>
> - user opens a libreoffice document
> - user prints to an ink printer
>    - that sends a PDF to cups, which prints it
> - user prints to an embosser with "ink" formatting option enabled
>    - that sends the .pdf file to cups, which uses filters to turn each of
>      its page into braille.
> - user prints to an embosser with "braille" formatting option enabled
>    - that sends the .odt file to cups, which uses filters to turn that
>      into nicely-formatted braille.
>
> This would be really useful to happen this way, notably because since
> braille takes a lot of room, page numbers are completely different
> between ink document and embossed document.
>
> In some cases the user may want to get an exact equivalent to what would
> be printed on an "ink" printer so as to be able to discuss about it
> with other people, i.e. the page references are the same, etc. So going
> through the PDF is what is expected here.
>
> In other cases the user wants his own document, with page numbers which
> follow the braille formatting, footnotes printed on the same braille
> page, etc. In that case, we really want the odt to be sent to CUPS for
> processing by filters.
>
> Is it possible to have such option between libreoffice and CUPS?

First, I would not call the two modes "ink" and "braille", but something 
like "Original layout" and "Braille-optimized layout".

Second, LibreOffice does not send .odt files when clicking "Print" in 
the print dialog. By default it sends PDF, and in the settings you can 
switch it to PostScript, but there is always one of these two formats 
selected for all printers.

At least the PDF sent by LibreOffice is not a bitmap of each page, but 
it contains the (searchable) text and instructions for formatting and 
layout (high-level/vector graphics), similar to what the .odt file 
contains. So it should be possible to extract the text and formatting 
and re-arrange it for the Braille output (as e-book readers can do it 
with PDFs or the "reflow" mode of the Adobe Reader on Android).

I also doubt whether the LibreOffice developers would implement a 
feature request of sending print data in .odt format, but I would rather 
believe in that they would implement a feature request in giving 
optimizing options for the PDF of the print output, for example for 
e-book reader/braille embosser text-reflow-friendliness.

    Till

