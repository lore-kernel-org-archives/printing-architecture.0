Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=XFARmSCP6IsYHH5V8S2kAZR72csGdFTyzg49+vAvWzY=;
	b=s8t9IBOE3J3PxrdrpA8xqAA/siWXbp9X3sgC1Y0w7lN6VdsgxKLavb63E1Nln6KFo4
	BXpdDSA6bVsrjX8we9NqXDjfe6mlgQbtKaX4+PzohmByvIJOBK+oFpG9LkMoZeOV1GTo
	8GSEwUDgcEwjTh9PVPW+O3/AsyAqYtTeC18m9DuCxsyAAdxu9W1i7XivWHf7cu45Tm4G
	y1my9LL8kG62n0qlGXMu4bZ2dxKLJi4pirke7Ra3Vwul/jZJd4sRgXeFNXdCcaxeTcqa
	fjt3X66Usv8mJEpV9FzNC1MLfIYBKkpzR4Pp6iUNhK0HpMyr7HuwU/ShzygPHdDzqyNi
	e+kw==
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <aeeb7c9d-b8b9-ade7-88a3-7d9b1e3b87c7@gmail.com>
Date: Wed, 13 Feb 2019 22:26:29 +0100
MIME-Version: 1.0
In-Reply-To: <B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OpenPrinting News
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
Cc: Aveek Basu <aveek.basu@lexmark.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 13/02/2019 21:34, Michael Sweet wrote:
> Till,
> 
>> On Feb 13, 2019, at 1:14 PM, Till Kamppeter <till.kamppeter@gmail.com 
>> <mailto:till.kamppeter@gmail.com>> wrote:
>> ...
>> According to Zdenek, Michal tried this with the co-maintainership already.
>>
>> Seems that Trent is refusing any cooperation or completely ignoring 
>> the project.
>>
>> My suggestion is to fork the project and use one of the locations 
>> suggested by me, but who should be the upstream maintainer then.
> 
> Well, if you fork and put the fork under openprinting, then you can give 
> access to the various Linux packagers of Avahi and let them merge any 
> bug fixes, etc. there at least.  And then *if* Trent starts maintaining 
> Avahi again and accepting pull requests you can easily get those changes 
> back to him...

I could do so and I can imagine that the distros will adopt this, but 
important is that I am not able to do the full upstream maintainer work. 
I cannot swallow all free software projects which are somehow needed for 
printing to work but given up upstream.

As interim upstream maintainer of Avahi I could do things like assign 
commit rights to distro package maintainers, do releases, perhaps also 
merge pull requests, but I cannot move forward the development. Here I 
need contributors (for example distro packagers) who create the code (or 
mentor a GSoC student on an Avahi project, the slot I could provide).

By the way, who is the original author of Avahi?

    Till
