Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=M0it8jdKC/ps2QO51RJhDBsKNjTqWzooYaUmmShCYkY=;
	b=NOtf3wRTH+9mCW8tMnrFCuaXjryI8HpSf30Fv7VW7lHVJB1fqn534bsZqNFjhbViQs
	fTWjmCkiYNUiSzAqSCgn8Wa2+xDvTN/3M/DXxlZ9PHQSkcxTT/5Bo1M40XsNNEaG1C8G
	2bcgsq71dwc9YuuVlhiSS1mowogECfHu7qKSS3bNTdJ/xuR9V9yic8/SjSXNZRCQSt4o
	3BY74zkTull58K3lDR9Pz4tq5o/0PukGXkyuEFLuyuBGXBKKlsc29FB11jMS5YNYPZ1p
	CuKK2vV8d/sleo/OIcOKRB9VmVo8+FgZYXz5BBDGzUHm315ShpDlG1JwG9O2AuqoBEcd
	FG4A==
Message-ID: <5433D8C5.1010700@gmail.com>
Date: Tue, 07 Oct 2014 14:12:53 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
	<23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>
	<CA+3RNfgwqWxqc6D4Fe1fC8--xy0pV_c4SDHukwpwrC+N=G=WpA@mail.gmail.com>
	<0392028E-75B3-45B1-8826-3886A5EEC7E9@apple.com>
	<5433D336.1070205@gmail.com>
	<0E925EEB-00F2-42DD-9600-DAACBFDF2DC4@apple.com>
In-Reply-To: <0E925EEB-00F2-42DD-9600-DAACBFDF2DC4@apple.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
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

On 10/07/2014 01:55 PM, Michael Sweet wrote:
> Till,
> 
>> On Oct 7, 2014, at 7:49 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> On 10/06/2014 05:32 PM, Michael Sweet wrote:
>>> Alex,
>>>
>>> The cupsFilter2 keyword has a different value syntax:
>>>
>>>    *cupsFilter2: "src/type dst/type cost filter"
>>>
>>> For a PDF printer you want:
>>>
>>>    *cupsFilter2: "application/pdf application/vnd.cups-pdf 10 pdftopdf"
>>>
>>
>> What do I have to add to a /usr/share/cups/drv/*.drv filr to generate a
>> cupsFilter2 line? "Filter" only generates cupsFilter lines.
>>
>> Or do I need to create completely static PPD files?
> 
> Attribute cupsFilter2 "" "src/type dst/type cost filter"
>

Thanks, I ended up with this, too. I only thought that there is perhaps
something specific.

   Till

