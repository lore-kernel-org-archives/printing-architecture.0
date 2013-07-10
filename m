Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=71BYibBDWG/mVmlt5EUbwDMahbDi26dKwL8vCbo8Smw=;
	b=l5BeFY8AzdmO5WN73QrnklBIjoiBs1rQG449k9P7XSQWL5jA7iarcqcKxSZWQAWjMS
	mNHVu90YDUCLC478haeQyaCaHu6yV47y6rTMBc1Kjz5LhrmqC4W4SN6gMhSQF3NRhzWc
	WzTubzA8k9KkxDiyCdMGPPzuv8b4zxJpvtJlZO4Zyqsm3Q33byCr1q4PDtxi4a9/BggI
	im5y3DKYl5bnLbjoPNjawzTNHG8TSXRCb0lwOT03WSVTwZ7ml/44GKyWIoE2evj1drbo
	ygVfA9a81WRcDgQPMZGa7Tfs6wEfl03ryrc0X6W7SjkSVSyH/gkpI8iIKvtajDmEEP21
	hlOw==
Message-ID: <51DDABAA.90100@gmail.com>
Date: Wed, 10 Jul 2013 20:44:58 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD95A9.1000506@gmail.com>
	<10E1A012-2576-49D5-ABE1-ED036D5E0531@apple.com>
In-Reply-To: <10E1A012-2576-49D5-ABE1-ED036D5E0531@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Options in /etc/cups/printers.conf
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Sorry, on both machines where I observed the bug I was already on CUPS
1.7.x. I have downgraded to the official Ubuntu package (1.6.2) on my
Saucy (13.10) machine and there the bug indeed did not show. So the
problem got introduced in 1.7.x and I will apply your patch to my 1.7.x
packages on my PPA.

Thank you for the patch anyway, as now the bug will not appear when
distros switch over to 1.7.x.

   Till

On 07/10/2013 07:30 PM, Michael Sweet wrote:
> Till,
> 
> I don't know if you saw my followup message or not - I was unable to reproduce on TOT 1.6.  You can test TOT 1.6 from the GIT repository with:
> 
>     git clone -b branch-1.6 http://www.cups.org/cups.git cups-1.6
> 
> 
> On Jul 10, 2013, at 1:11 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
>> Unfortunately, this patch applies to a completely new concept of CUPS
>> 1.7.x which did not exist in 1.6.x. Can you also supply a fix for CUPS
>> 1.6.x, so that I can do a patch release of CUPS for Ubuntu 13.04? Thanks.
>>
>>   Till
>>
>> On 07/10/2013 04:44 PM, Michael Sweet wrote:
>>> Till,
>>>
>>> Here is the patch for 1.7 (1.7rc1 to be released soon):
>>>
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 

