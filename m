Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=pqtZP/yweSEmdHtKM1Gfv5Rt8NGiwPKkPWM9fOgdqio=;
	b=ElQcOuNPx8kfgMzzDiiHDomC4uzJj+vGrMVHQXtzTRvuTqtwGX9NnpmqwG1nZ67o7v
	JVGGTgF7WoBDUaHUCqCy81Vv859+ZiwfcNBZzwWCe215VDZEGstYv9ZB3vuSEn22SizF
	65utVV8tv0LVFAmKpZyM4ji1EYcMIlA6FZBPiOUQmY4An0sWRycgzY9dBrH9GHo8aSDL
	1FZT58kFtGuNn2KzhoI23/YQMOyFk+bkIvQG6ZyOgVca5TvwJfE8ELZKX40CHytumL1f
	XU0jOg4O1QHTTBwFFaq9WTOSeK3NNXuy0agJv6CCmi6VqvorzifLdcL6oHrs4sw0K1yE
	CWcw==
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5669E0B4.9040009@gmail.com>
Date: Thu, 10 Dec 2015 18:29:40 -0200
MIME-Version: 1.0
In-Reply-To: <20151209102736.GC16751@var.bordeaux.inria.fr>
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

Hi,

Thank you very much for this great effort. This is really missing in the 
Linux operating system.

I am looking into integrating it into cups-filters, but I would like to 
have the following improvements on it:

1. PPD files: If there are different options, like LibLouis2, libLouis3, 
... their name translations/long names should also be different, not 
having "Additional Braille transcription" for all of them, but rather 
"Additional Braille transcription (2)" for LibLouis2, "Additional 
Braille transcription (3)" for LibLouis3, ... Otherwise it is rather 
confusing having several options showing with the same name in a print 
dialog.

2. Cluttering of /usr/lib/cups/filter/: This directory should only 
contain the actual CUPS filters (executables called by CUPS in the 
filter chain for a job. The auxiliary files should go into a separate 
directory, like /usr/share/cups/braille/ (if there are no 
architecture-dependent executables or libraries) or 
/usr/lib/cups/braille (if there are architecture-dependent executables 
or libraries).

3. Binary bytes in shell scripts: Some scripts, like 
drivers/index/textbrftoindexv3 contain binary bytes. This leads to 
problems with version control systems like GIT or BZR. Please avoid any 
binary bytes in scripts or source files, generally in any file contained 
in the source tarball. There are ways to express this with pure text. Or 
do everything in C (this is even better), there are for sure ways to 
avoid binary bytes.

I am grateful if you could fix that.

    Till


On 12/09/2015 08:27 AM, Samuel Thibault wrote:
> Hello,
>
> I have been working on braille embosser support for CUPS, so that
> embossing a document can be as easy as printing it.  I have attached the
> result.
>
> The principle I have followed is to use the cups architecture to
> separate on one hand frontends which turn documents into braille text
> (text/vnd.cups-brf) or braille graphics (image/vnd.cups-brf), notably
> based on liblouis, and on the other hand backends which emboss braille
> text or braille graphics (I have implemented a generic driver which
> should work on all embossers, and a driver for the Index embosser which
> I can actually test).
>
> For now, I have made a separate package, so it is easy to test it
> already, but ideally, I would like to see this work integrated into CUPS
> filters, so that blind people don't need to install a separate package,
> but just configure CUPS for their embosser.  How should we proceed?
> Perhaps first iterate over the packaged version, until the code is fine
> for integration, and then I'll submit a patch against cups-filters?
>
> Samuel
>
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

