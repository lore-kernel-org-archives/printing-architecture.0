Return-Path: <naruoga@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=vXSxqNRNktx5Dll/3o/zRcx+B7pWg7EpO8PJbBEI59A=;
	b=WNVYiYH9CAgIBhHV5pXmS1tjGUEfOaESyNkSi8fbCbjo/niGQ3UU+ccTysFODamQr5
	FgN7cItcfeVL8GiQcl1RFtCRjxjw4Umsg9bYcAaFRoo3NYHtL0+GFm7CZeQ9Rf2KV9U0
	WIWSFyu/4Jsyk5zBM+43K1Y5zHYqxckAblHmSJxFvIm2iTequsFYcGvLTkR0BEby3o56
	CcRvTWK6NrAV8L9PL6kxVYR1KLfkEmkyf/GzzMcU34LCR1udswhS9iyv9qlWEByCKxBS
	mcHneR9T17XBTHqVtqnOorXkteNTaIgoIw8dlWaGWX44Pzw7hkS48fHprzDxFylhmiYj
	d5Yg==
MIME-Version: 1.0
In-Reply-To: <AECFED11-16E9-438E-9EDE-9E59E49D38B9@apple.com>
References: <AECFED11-16E9-438E-9EDE-9E59E49D38B9@apple.com>
Date: Fri, 12 Jul 2013 15:04:02 +0900
Message-ID: <CA+PBKyK-JofRsT3n=fzMq4Zk4c=+ouNmO5W6kYda1Hh-0Gsbtg@mail.gmail.com>
From: Naruhiko Ogasawara <naruoga@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] CUPS 1.7rc1 now live
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

Hi Mike,


Thanks for working new CUPS 1.7; lots of improvement about IPP related feat=
ures.

Anyway, I just checked cups_ja.po of CUPS 1.7rc1 and 147 untranslated messa=
ges
(because of ipptool improvement and new ippfind tool?).
I've not checked web template files yet but they might have a new messages.

So we, Japanese localization team should start to translate, but how do we =
do?
CUPS web page is still temporary and no forum we have.
Where is a good place to send our translation result to you?  In this list?


Thanks,


2013/7/12 Michael Sweet <msweet@apple.com>:
> Not just one CUPS release but two!
>
> CUPS 1.7rc1 is our first release candidate for CUPS 1.7.0 and includes th=
e
> fixes from CUPS 1.6.3, adds a new ippfind utility, fixes some issues in t=
he
> ipptool utility, and fixes some general printing bugs. Changes include:
>
> =95 Printer xxx-default values were not reported by Get-Printer-Attribute=
s or
> lpoptions (<rdar://problem/14401795>)
> =95 Fixed deprecation warnings for many functions on OS X so they are tie=
d to
> the deployment version when building (<rdar://problem/14210079>)
> =95 Fixed a build issue on ARM-based Linux systems - unable to validate
> va_list arguments.
> =95 Added a new ippfind tool for finding IPP printers and other Bonjour
> services (<rdar://problem/13876199>)
> =95 Fixed some issues with conversion of PWG media size names to hundredt=
hs of
> millimeters (<rdar://problem/14065748>)
> =95 The IPP backend could crash on OS X when printing to a Kerberized pri=
nter
> (<rdar://problem/14040186>)
> =95 The ipptool program now automatically extends timeouts when the outpu=
t
> buffer is filled (<rdar://problem/14016099>)
> =95 The ipptool program now supports the --help and --version options.
> =95 The ipptool program did not continue past include file errors by defa=
ult
> (<rdar://problem/13875803>)
> =95 The ipptool program now supports FILE-ID and TEST-ID directives and
> includes their values in its XML output (<rdar://problem/13876038>)
> =95 The ipptool program now supports WITH-HOSTNAME, WITH-RESOURCE, and
> WITH-SCHEME expect predicates to compare the corresponding URI components
> (<rdar://problem/13876091>)
>
> Enjoy!




--
Naruhiko Ogasawara (naruoga@gmail.com)
