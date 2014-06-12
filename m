Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=2S5DI7zROuoQblvpzahfJZ9vGyElm3qYA1XGV380IhY=;
	b=HP7LtSjLGbeSM6bnI4LQS18r4a98WxQpwbzj8AOX16AtxheVnN5hIaI1F0j+EHhyQ8
	izg2XbrAwnKzKDAIWf/aMtuQq8PAz7oe0/1ivFOLRZqU5OETAasgQCQJH3GRFg8KSmQ9
	BdsTDKvsQdqnEBvPGTgmn8KP7qgandYvcqJQUh5rJdJyCD9IwqaB04hGJgDRWFhooptf
	v2Zg7rF9xv/xFhY3d2pRfOlaK3+VPMxV5P87wtcBYS3JhATOAvpiMXGnGGKKme92ZXLT
	oxQc0GGlsqbmmCp7rJhAw2Jy4hqVwUU6yjy//AbKwaDWDgioDX3I99lb/L0xfNbyAzQG
	3eHw==
Message-ID: <539A19FB.80303@gmail.com>
Date: Thu, 12 Jun 2014 23:22:03 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <53997D3F.2060803@gmail.com>
	<CAERbVPTANK7nmPN0MBZiJQ-cAVZwL2-xQsZLhTKNtR+fiwpRGQ@mail.gmail.com>
In-Reply-To: <CAERbVPTANK7nmPN0MBZiJQ-cAVZwL2-xQsZLhTKNtR+fiwpRGQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] "no-color-management" not a good idea
 for a name of a boolean CUPS option
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Joseph Simon <jsimon383@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

OK, Joseph.

Thank you to everyone to give your opinion.

   Till

On 06/12/2014 08:15 PM, Joseph Simon wrote:
> Hi Till,
> 
> I agree on the name change for the CUPs bool option.
> The name "cm-calibration" seems to make the most sense, and I will make
> the change in the filters.
> 
> Joe Simon
> 
> On Jun 12, 2014 3:12 AM, "Till Kamppeter" <till.kamppeter@gmail.com
> <mailto:till.kamppeter@gmail.com>> wrote:
> 
>     Hi,
> 
>     I have encountered a problem with the "no-color-management" and
>     cupsGetOption() not be able to recognize that the user has supplied "-o
>     no-color-management" on the command line.
> 
>     If you have an arbitrary boolean option in CUPS filters or backends,
>     like "xxx" the variants
> 
>        -o xxx
>        -o xxx=1
>        -o xxx=on
>        -o xxx=yes
>        -o xxx=true
> 
>     are supposed to let it be interpreted as set and
> 
>        -o noxxx
>        -o xxx=0
>        -o xxx=off
>        -o xxx=no
>        -o xxx=false
> 
>     let it be interpreted as not set. To support the "-o noxxx" case
>     cupsGetOption() seems to split a "no" in the beginning of the name off
>     if there is no '='. Therefore "no-color-management=" works but
>     "no-color-management" not. The latter is probably interpreted as
>     "-color-management=false".
> 
>     Mike, am I right with this?
> 
>     So I suggest something like "calibration-mode", "cm-calibration-mode",
>     "cm-calibration", or similar.
> 
>     WDYT?
> 
>        Till
> 

