Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=lWncK+9qt+kCNTK5ATYtehbN5SSBePl10o/2Zyxaf6g=;
	b=PrglR1b5DhGd862I/6omHiNNcYh5WHS45q8CcLNVkPZoleqIWVeeVfcA2vQXAIbTsA
	NOqIH7FZhgYmWRDmLquURuPqYx6UcrP/fOJe0OhFXXqylv26H0P3rCctDvNrIN7nBiy6
	ySxeRNK+yDuZbtOQp/uPmKrmorkXgRKPDwTBTLkBj6aq05UavGppjRfEpdEtLGvcMrwS
	QhiEDtUqkN7d7iVbvRt109L149W0NGaIwfXkIk9WEFLCiEJcF5Zg00y3PxAxa0Ec9f75
	WE9f2di1wtqBLIUWn16d/7AW/L2h3CDkiDzc7AfOTKUVEgIQPBAt5d/AkuPAHF0X83wI
	QaQg==
References: <20151212083605.GX2764@var.home> <566C0ACD.2040305@gmail.com>
	<20151213024001.GR2765@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566D5181.6010103@gmail.com>
Date: Sun, 13 Dec 2015 09:07:45 -0200
MIME-Version: 1.0
In-Reply-To: <20151213024001.GR2765@var.home>
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

On 12/13/2015 12:40 AM, Samuel Thibault wrote:
> Hello,
>
> Till Kamppeter, on Sat 12 Dec 2015 09:53:49 -0200, wrote:
>> Thanks, the problems I mentioned are solved by the patches, but the new
>> fr-braille.po file has some problems (output of cupstestppd):
>
> It seems my mailer simplified the encoding of the attachment, thus
> turning the file into latin1 instead of utf-8. Here is a patch.
>
> Samuel
>

Thank you very much. The patch works and I have applied and committed 
it. Now please download the BZR of cups-filters and check whether 
everything is OK. Thanks.

    Till

