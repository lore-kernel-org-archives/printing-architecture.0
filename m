Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=p0GkrcEft17DOxHU0P4MUBB8MJ6jkiwfxVokfAz0mYo=;
	b=vEdiG+gzlqcVR7PZAYCOXvGKWpqmYEEHPfzSjOFjMFYC5d/xZwyAddPOx6WCpn2u0j
	GC4AKgAjrhFEmQwqa2ioeensDXLU0+3co97knwn5L3IdJ/77lcuKq7JbjXMjK7LOXkx1
	4ou7Z0QozfNYZ8rivy+9twG2EhjZFPzw7O+ky8yvVkcu502U4ZBMRjQMnAjZSN9+a+Tp
	iv+Ffc27eqm0l4lbTgpUcKGX9X/NyxGNbB2tur795t/oLAQNyTwcLum+2Sv6Az/EZ31b
	dapp6T7aNbKeEb5n69GafE5ukHSlnhX4MCqXGXGLdsM91SnVv9AWSbSTFi29bbEfwu7g
	myJQ==
Message-ID: <528CDEA3.1030605@gmail.com>
Date: Wed, 20 Nov 2013 17:09:07 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<5273A1A5.6000809@redhat.com> <52864861.3030309@redhat.com>
	<528CDCE6.2070603@redhat.com>
In-Reply-To: <528CDCE6.2070603@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>

Marek, thank you for the patch.

Mike, should printer status (for example Paused) not be in the TXT
record or somewhere else in the Bonjour broadcast, so that a client can
determine the status without further query?

   Till

On 11/20/2013 05:01 PM, Marek Kasik wrote:
> Hi,
> 
> I've filled bug for the waking of Avahi printers up here:
> https://bugzilla.gnome.org/show_bug.cgi?id=712751 .
> Unfortunately the print dialog doesn't show state of such printers
> before user selects them because I don't have information about paused
> state (e.g. through "printer-state-reasons") of the printer in TXT records.
> 
> Regards
> 
> Marek
> 
> 
> On 11/15/2013 05:14 PM, Marek Kasik wrote:
>> Hi all,
>>
>> just an update. I'm working on the problem of waking avahi printers up
>> in gtk print dialog. It will show just name, location and state when the
>> printer is not selected but once it is selected it will perform an IPP
>> request to get its abilities.
>>
>> Regards
>>
>> Marek
> 

