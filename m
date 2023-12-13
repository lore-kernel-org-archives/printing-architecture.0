Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 024A441579
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66CA9408ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702499836; x=1703104636;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZZRziBYkdiAcoO9MH+jGt+xVB9Q4NjvF45keaIuxf/w=;
 b=C/TSYAoJc0uWDMXmU2BStjq41N72MmFp5VoZQ31IduWQvghcfh5bTwHuciUXys95Dq
 Mnzp98oLXVQEZhwevF8GEiYPXBhsj7qhMMBv4lax0jlN1vkRgJvwUpIi00srnqv1fLcR
 Nt20wtAkofirgi+wKTQVLie4JLMW9OvHKjB4KJCRuObu6cI5u1WZfSQTtFlVUw9bvAZJ
 HD5o2wxYtNxsR8s5x7EVvvt1fze2MpdPY+nymA32Fve6mDD8lkJKnWtepXMNQtbOto0p
 TiYznDwJ2OSffV+IlSgE126AWr+v71OWrQDRpe7o7ZEsL8XNgN0dUFZRdDJXUKbbYDQz
 ks/w==
Message-ID: <63d1702c-3cfc-4c0b-8273-d10cd83f92e5@gmail.com>
Date: Wed, 13 Dec 2023 21:37:15 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <CCC014DE-78D5-4CC7-839B-8C0C23F080DC@msweet.org>
 <4c51b17b-e5e6-4212-8144-0fff694fa909@apevzner.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <4c51b17b-e5e6-4212-8144-0fff694fa909@apevzner.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Pevzner <pzz@apevzner.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 13/12/2023 19:57, Alexander Pevzner wrote:
>>> They already won't be able to print from iOS or macOS, and probably 
>>> not from Windows (IPP class driver) or Android (Mopria print 
>>> provider) because the Get-Printer-Attributes response cannot be 
>>> parsed.  And if they actually ask someone about the problem they can 
>>> be pointed to Pantum to get a firmware update.
>>
>> Interesting that this device included into the Apple's list of 
>> supported AirPrint devices: https://support.apple.com/en-us/HT201311
> 
> I'm not sure *when* it was certified (I can ask) but assuming the bug 
> still exists in current firmware then it would fail certification on the 
> first test.
>

Alex, Could you install and run the self-certification software from the 
PWG (should be available as source code) to check whether this printer 
is still passing certification?

    Till
