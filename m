Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=+WAb1GdQWYU5fUeg+Zsvq3A/GHsw/pqiOdFbkWvTu38=;
	b=Wb8WCVbjbMUJzsBHWY7A1dgKiPsXxZ/PxralkZDfZuUMozKsvf3zbdROA8I0AFmF6f
	PUbX+2PXPmhTbKHSwjK675mJe/PJXf6qcXkG/rtLNMjbvnz1m8IkEf9euyoU6mzTeio1
	JPmy5Qsk8/zFCur6iiQy/wYglazkUXcmhJGjXqUHMRGDgZeJ+Y1X93h0oSyOxl6zJc3Z
	he75AtSeZZMMgjvgRlAdu7HkpmAxRIjFkTtWfr6/vz/Z/AK1MM2+olPKiVUpvY2RS6mc
	40rTQtBAavfge/VQJw8KQ031KWSA/F0NYuq/YDC5XpRiW51/k1w6KMWJ8/sL5NPJWOv2
	Wsxw==
References: <20151212083605.GX2764@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566C0ACD.2040305@gmail.com>
Date: Sat, 12 Dec 2015 09:53:49 -0200
MIME-Version: 1.0
In-Reply-To: <20151212083605.GX2764@var.home>
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

Thanks, the problems I mentioned are solved by the patches, but the new 
fr-braille.po file has some problems (output of cupstestppd):

       **FAIL**  Bad UTF-8 "fr" translation string for option Edge.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexFirmwareVersio
n.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexFirmwareVersio
n, choice 102000.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexFirmwareVersio
n, choice 103000.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexTable, choice
1.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexTable, choice
2.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexTable, choice
3.
       **FAIL**  Bad UTF-8 "fr" translation string for option 
IndexTable, choice 4.

Can you fix that?

    Till


On 12/12/2015 06:36 AM, Samuel Thibault wrote:
> Actually they could even be merged, that'd be better since otherwise
> there would be a lot of duplication.  I have attached the resulting
> merge.
>

[...]

>> - The Generic embosser PPD file passes cupstestppd, the files for the Index
>> printers not. The error message is:
>>
>> **FAIL**  Multiple occurrences of option IndexTable choice name 24.
>>
>> and indeed the option "IndexTable" has two choices with "24" as short name.
>
> Oops... I must admit I didn't test polish & dutch braille since I speak
> them and don't have an index4 device :)  I have attached a patch.
>


