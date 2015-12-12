Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=MLu/uRi9XaCApunoZAFKaFWg+5Jd5NYjETt8/W9tAR8=;
	b=fS36pBgtoxnzRTXuEy4FkDahTuq1nQG3ek4ZfHD4lBkzSl3G7R7gUXREivnIpP1Tf+
	Y50sCeEGVwNqL1FAb+Tg5PU/6WCmsdZPEMxWFqMJkRYAFDRwqAlSON/L3LIx93nJkqZl
	KnlGsBeE1lWhddjBkO56IfnXEdlH5IYvQLEEyLzbUOUA57DPwl5RitjFmu1L7XRAOK58
	BqqbLmhEeuTCXr4uyB2R4srS50SYXJdbF8lNqZUBZDooXKf0YIga0V71JGcRpkNauZ3E
	t0nRkm98nicLwinMjRkywNC6DmslhJXRP23/z8slYshY7wS0bdY46pBpt1ULRq2J+LdS
	aQ1Q==
References: <20151212083605.GX2764@var.home> <566C0ACD.2040305@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566C0D61.9070201@gmail.com>
Date: Sat, 12 Dec 2015 10:04:49 -0200
MIME-Version: 1.0
In-Reply-To: <566C0ACD.2040305@gmail.com>
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


I have committed your changes now, but pleas fix the translations. Thanks.

    Till

On 12/12/2015 09:53 AM, Till Kamppeter wrote:
> Thanks, the problems I mentioned are solved by the patches, but the new
> fr-braille.po file has some problems (output of cupstestppd):
>
>        **FAIL**  Bad UTF-8 "fr" translation string for option Edge.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexFirmwareVersio
> n.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexFirmwareVersio
> n, choice 102000.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexFirmwareVersio
> n, choice 103000.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexTable, choice
> 1.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexTable, choice
> 2.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexTable, choice
> 3.
>        **FAIL**  Bad UTF-8 "fr" translation string for option
> IndexTable, choice 4.
>
> Can you fix that?
>
>     Till
>
>
> On 12/12/2015 06:36 AM, Samuel Thibault wrote:
>> Actually they could even be merged, that'd be better since otherwise
>> there would be a lot of duplication.  I have attached the resulting
>> merge.
>>
>
> [...]
>
>>> - The Generic embosser PPD file passes cupstestppd, the files for the
>>> Index
>>> printers not. The error message is:
>>>
>>> **FAIL**  Multiple occurrences of option IndexTable choice name 24.
>>>
>>> and indeed the option "IndexTable" has two choices with "24" as short
>>> name.
>>
>> Oops... I must admit I didn't test polish & dutch braille since I speak
>> them and don't have an index4 device :)  I have attached a patch.
>>
>
>

