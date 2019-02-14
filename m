Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=3djeFOFJtfmaMrhtoKvNp+3+XGIYXgBuGTauH9rc0+Q=;
	b=Ykypw6sjTfj1ZFuTUJ+NUfSxIzhdpjoO0JVmsVEiMWad6+e0o0lJxNjETiclG2wcXk
	xYc2VX0PdLWLqpyMdsfwMe8gMDU8z9ZtCOirJ2Fo40K44dO7ZwWu9io4vien47zKe+db
	Td6SdngOd0PJCCbZOtvLfnyk0QR2AYpMP46BbMBsNgKdKKTU058TUwdl0a1kA/qQJCB8
	4wBugpulbYxmSxrw30XdnJkhwhRfzXC9W+P7WOF3QizpmCpFNhyMs4AeIsJKczqmKQ2J
	0IRf98eaTv8OjXf1kNcBN+k4yADEuxxZczxdVYQrsVdXvy4rzW3pznTx3PqmjqbEv9V/
	A7sA==
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
	<aeeb7c9d-b8b9-ade7-88a3-7d9b1e3b87c7@gmail.com>
	<20190213235604.GE28869@shaftnet.org>
	<CAK+62whQu7X+PwS3RsZk__vY7q1deG-HwejpTTkqWV-4He-pow@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <74fba676-bbc2-e318-724f-131f30b5ec07@gmail.com>
Date: Thu, 14 Feb 2019 21:57:59 +0100
MIME-Version: 1.0
In-Reply-To: <CAK+62whQu7X+PwS3RsZk__vY7q1deG-HwejpTTkqWV-4He-pow@mail.gmail.com>
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
To: kurt.pfeifle@gmail.com, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Cc: Aveek Basu <aveek.basu@lexmark.com>

On 14/02/2019 18:49, Kurt Pfeifle wrote:
> This is not correct.
> 
> Avahi was initially created by Trend Lloyd in early 2004. He was 
> certainly inspired by Apple's Bonjour, which unfortunately was not Open 
> Source initially, so there as a strong motivation to implement a FOSS 
> ZeroConf stack, since all of the relevant specs (mDNS + DNS-SD) were 
> already there at IETF, and open.
> 
> Later that same year Lennart Poettering started a similar project to 
> implement mDNS/DNS-SD functionality called "FlexMDNS".
> 
> Both projects united and merged their code bases sometime in 2005. 
> Though I have no idea which of the two guys wrote more lines of code 
> that still exists in today's code base, Poettering surely had a heavy 
> impact on today's Avahi.
> 
> Apple released Bonjour as Open Source software under the Apache License 
> only in 2006.
> 
> Avahi's name certainly was Trend's decision, and he started his 
> implementation half a year before Poettering.
> 
> Poettering's last commit into Avahi's GitHub code was in Sept  2012. 
> Trend's last commit was 10 days ago. The last time Trend merged a major 
> pull request was in August 2018. See 
> https://github.com/lathiat/avahi/commits?author=lathiat.
> 
>   According to https://github.com/lathiat Trend works for Canonical.
> 

That is interesting to know. Now I understand why Trent does not like 
that someone will take the project away from him.

The best would be if Trent would allow some additional persons to 
directly upload and perhaps even to do releases, so that he does not 
have the full workload but still be part of his project.

He needs to admit that he is not able to carry the load and 
responsibility of leading a project which is an integral part of the OS.

For me it looks like that we have to prepare a fork to have a version 
where the distros can work with and rely on.

    Till


