Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FQIMS83WmBqpSxxKIEJl9a/JZwHtXcUWUOt961I1HYA=;
 b=Xl0xbl8dJN6XZBAX6/eymLld+OQR05DlrHeGUaEPs7DMhpF7k60DKfi7zTZ8Nm/qC7
 srrpXEpUjfkpl7+XnH362UnU5Y5epIG9co7OBB07p8LISeNOOm9Pnq8OV1caAL32mrOl
 KeoUh1tGShxiUhsHG7fAXsxj50YQLC/RLs3ofhcv2agP6evVtmkgVFMA3iC9+DIvQqZP
 +yMzyAY8iGTRYlAIyDAxSMfR6fpDKXnLTBlKL/WRWpqy0vdXAn3CkQBxf2K425lmWguS
 4sdP7XAMAYdQBBU8yz1hJXnHYwv9KQyEV5QXDR0wLl2CyDuiRZvS8AoNzrBzCNW1R/6d
 O2PA==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <54aefb59-d506-8e30-8891-9d051ef81fed@gmail.com>
Date: Wed, 24 Feb 2021 18:40:10 +0100
MIME-Version: 1.0
In-Reply-To: <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

In principle you are right, but

- We will get a lot of user complaints that something which worked 
before does not work any more, but probably we must somehow inform the 
users that if they have a legacy printer they have to set it up in a web 
interface.

- If there are many Printer Applications installed simultaneously 
(distro which wants to support everything) there are many web interfaces 
on https://localhost:80XX/ where the user has to find the right one to 
set up his printer. In addition, these many Printer Applications are 
racing for a port number on every boot, meaning that the Printer 
Applications are on different ports everytime. CUPS copes with this, as 
it uses DNS-SD-service-name-based URIs, but a user will not find the 
correct web interface when he wants to change something.

Probably distros should not ship Printer Applications and users should 
install from the Snap Store the ones they need, but then we would need this:

https://forum.snapcraft.io/t/hardware-associated-snaps-snap-store-search-by-hardware-signature/

Or the classic printer setup tool (in GNOME Control Center for example) 
should be replaced by something which lists all available IPP servers 
(this includes driverless network printers and also installed Printer 
Applications) with for each list entry two buttons, one leading to the 
web interface and one opening an IPP System Service status/config 
window. This way the user finds the correct web interface without 
knowing the port.

    Till


On 24/02/2021 15:17, Michael Sweet wrote:
> I'm torn on this, as nearly all currently shipping printers support AirPrint and/or IPP Everywhere.  There are still a couple outliers in the desktop printing arena at the very low end (!) but mobile (Android, iOS, iPadOS), ChromeOS, macOS, and Windows 10 have driven vendors to support the standards we've been working so hard on for the past 20+ years.  So that leaves supporting "legacy" printers for people that haven't bought a new printer in 10 years as well as special-use printers like the Epson/HP/Canon large format inkjets and the various label printers (which are starting to come around...)
> 
> Right now, the *expected* behavior is that the user has a compatible IPP printer and they don't need any special software for it.  The *exception* is that a user has a printer that needs extra software.  And setting up a printer (with whatever software) is not a common occurrence for most people - ordinary users do not operate a printer testing lab or go out to buy every new printer that comes out.
> 
> So I'm not thinking we need to go out of our way to engineer an efficient solution for adding a printer, and as Solomon notes I doubt we have enough information to make such a solution work.
> 
> Probably the best approach is to build a "registry" of manufacturers and command sets that each printer application supports. Then when a printer is connected or discovered, the desktop tool can:
> 
>      IPP Everywhere Printer?  ---> YES, we are done
>          |
>          | NO
>          v
>      < Which Printer Application(s) supports this manufacturer or command-set? >
>          |
>          v
>      Is the Printer Application installed?  --> YES, do auto-add
>          |
>          | NO
>          v
>      Does the user want to install the Printer Application?  --> YES, install and auto-add
>          |
>          | NO
>          v
>      Cry in beer
> 
> 
> Note: I am fully aware that in the photo/art printing arena there are people that will still want to use Gutenprint or other special purpose software rather than the standard IPP interface - that's fine, and that is what the Printer Application is for in the long term. But those users are "experts" and will know how to install the application and configure it for their printer.
