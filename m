DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	bh=s9+0ZHP2UOp9asbVJfDQdH4WF7uRZwTW907S180y8LA=;
	b=rVv2lz8NITF1kQBBeFiqaRF6dWEo4014pCiczNGlqfk5uHdEq1Ug3wgHB5e48R7v3BpesxOt74sgIL0SubA6N1PqQBKXDD/RIq6VMQy25mMWT/uL9jb4x27wS5Be0tw0CG44JrQIjIr5WIQy0RkaLpvsz3kFU8wyfH3hhspPALo=
Message-ID: <47386A3D.3080109@gmail.com>
Date: Mon, 12 Nov 2007 07:59:09 -0700
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] RE: [Printing-summit] RE: where is th
	e	info on driver directories
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CB0@eitc220.eitc.epson.com>
	<873avcs4w8.fsf@penguin.avasys.jp>
In-Reply-To: <873avcs4w8.fsf@penguin.avasys.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>

Olaf Meeuwissen wrote:
> "Petrie, Glen" <glen.petrie@eitc.epson.com> writes:
> 
>> A thought I did not complete in the last email is the directory structure
>> for pdpca.  With in the $bindir/pdpca directory, do we ...
>>
>> 1.)  Have no sub directories for the pdpca files
>> 2.)  Have subdirectories based on <dev>
>>
>> I actually like number '1.)'.  The first reason is that I believe that <dev>
>> will start having sub-dir, with more sub-dir, with more sub-dir etc..  I
>> find this to be a pain-in-neck when I am trying to locate something of the
>> nature of the pdpca.  It is ok for the <dev> but not typically anyone else.
> 
> Then have a tool locate it for you, as per my previous mail.
> 
>> Another advantage of '1.)' is there can never be two files with the same
>> filename.  This will prevent bad naming or improper naming by various
>> independent developing parties.
> 
> Just put the driver specific tool with the rest of the driver, that is
> somewhere below /opt/<supplier>, and have the LSB DDK add the links to
> the right place.  As it does now already for everything else.
> 
> It's up to the <supplier> to make sure there are no conflicts in their
> little piece of the file system.  Personally, I'd suggest following
> the conventions of the GNU people modulo --prefix=/opt/<supplier>, so
> your driver specific tools will probably live in /opt/<supplier>/bin/
> or /opt/<supplier>/lib/.
> 

This is also how I would do it in the distro-independent packages. The 
LSB DDK already adds /opt/<supplier>/bin/ and /opt/<supplier>/sbin/ to 
the $PATH, so a test tool can started by the user like any auxiliary 
utility (as ink level checkers, etc.).

    Till
