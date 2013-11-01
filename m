Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=rlwvd6wIg42Fpd0i9cNpXLf3t1At8O/CxeN+LEum5oI=;
	b=WE++tRILGjIOfqv5MWLGj0WBXL1cIi5XZ7FFWN8zquCOcLlHivU+Va0WC0abQ1tnJ5
	iTDCWEWFWgja4CdA6oFuNvO3wFsuHPJ2W5bIhH/fijOn4neRePha8Pe9kE2vIY256mfe
	cfcCIyEUD1NYxKzXjofKvj8ZjD/XgYPkTuqwpdq6YTxsF86+aqV94ustGi/CHmybLcgs
	2XuYOGYzN2WyJOfrdNvVQfuYYYktjOLNZFc4X1/gNmdS0tQ99F0qRIDi2ufJZ4KJcwrY
	dM0Wo6fa4rIEkSB/8MQeYlbeHPSoIeVhRH2SWt5yA7wa3XbfsNvW85w8JM0/PByHG1c3
	Ry9A==
Message-ID: <5273C36D.4000600@gmail.com>
Date: Fri, 01 Nov 2013 16:06:21 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
In-Reply-To: <B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>

On 11/01/2013 03:48 PM, Michael Sweet wrote:
> Till,
> 
> On Oct 30, 2013, at 6:18 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> What is required from a GUI is that as soon as the user selects a
>> printer for printing (or with the default printer when just opening the
>> dialog) is that if the printer is such PPD-less queue, to poll the
>> printer via IPP (code example below) to get its capabilities, show the
>> user-settable options on the dialog's option panel (like PPD options)
>> and send the job accompanied with the option settings, including the
>> ones which the user has not changed and the ones which have only one
>> choice (and so are not changeable). The job itself should be in PDF
>> format and (if the printer supplies appropriate info) in a page size
>> supported by the printer.
> 
> Till, I am curious why you are not using the CUPS APIs from 1.6 and later for this?
> 

Which new CUPS APIs do you mean?

> Also, I have my concerns of this approach - with cupsd not knowing anything about the printer, and with there being no way for a non-aware app to know what the printer's capabilities are, I foresee a lot of interoperability issues.

What alternative would there be without waking up the printer when the
mobile device enters the WLAN?

   Till

