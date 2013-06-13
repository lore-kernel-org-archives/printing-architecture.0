Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=t0Oun7jwBcJb3xEVpzKHRIxXdUV1dieyGNIzzdbcZlM=;
	b=Pl0lbdXEsa4zsThtfgwrTcf+LH6zWUfziOpL5RZkH8aHeY3OWZgpBMtH5FR57YqGHx
	9xV6CnTREeDkqFZN/4hz03WFnz2BQ48pItAZsN2cjjHU5NI/dgJvxLg1DKu633kcXEkD
	wtoEVoNT6C6lniHuPo2/0kTjmS7PFLynTXwhcWHRkCvdTsCVgerfAUd5ebiZtraBO5sV
	vAmOeY/YO3IUrTRre7iIcc/JQ3kyZKkbwteQQTNXp5P4tKDG1+E4X2kqns4DNshSVaVi
	fb/GYOihcdyFT+aRZGX2Y0AaYWkMKQb++BvzEeWZShVKKx15I+F/p5GLmZgY4MFHwMI3
	vJrQ==
Message-ID: <51B99AD7.1090005@gmail.com>
Date: Thu, 13 Jun 2013 12:11:35 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
	<51967371.5080508@gmail.com>
	<D36BAB03-9A91-42E9-A994-DC0D3C6C254D@apple.com>
In-Reply-To: <D36BAB03-9A91-42E9-A994-DC0D3C6C254D@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

During the discussion I asked this:

On 05/18/2013 08:29 AM, Michael Sweet wrote:
>> If I create a raw CUPS queue, can I send a job to it with special IPP
>> attributes so that CUPS applies a filter chain? This way I could make
>> cups-browsed only create raw queues to avoit IPP polling and the dialog
>> then could poll the printer's capabilities when the User selects the
>> printer, create the option panel PPD-less and send the job with IPP
>> attributes for the options and for making CUPS applying filters to get
>> the output into the format needed by the printer.
>> 

Is this possible with CUPS?

Then CUPS could work as spooler and filter when the exact printer
capabilities are only discovered at the moment when the user selects the
printer for a job via the print dialog. cups-browsed creates only a raw
queue on the Bonjour discovery of a printer to avoid waking up the
printer and complete capabilities are polled via IPP only if the user
selects a printer in the dialog and the dialog has to show the option panel.

   Till

