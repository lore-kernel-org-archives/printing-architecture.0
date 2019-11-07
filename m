Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=SVHK62J7F4mWcFZWJgYrsN+4GRR4cmWh9V1T6+kZj6A=;
	b=dGQju7tdaD8W7T6ZbwOd7fLo7YX08B7Yjt68pJzmYvdg3n8Cyh4lIIWZhzf5TujTW4
	7Jb+WUY3EfcfAx3X4a7W1Kv6aoz7R6CH+PWHOLu8ahDEGI9XSRo6mZUIFvZ/mCjjqRoI
	LKj5BRNPa/6Zby/04IdsszFBK/gncWbDZ9uBb5m+nw1Yii/q0u9xyW6818gft+sEcpEZ
	VOvjT5aFUiX9B3Dmb4/HxHgXk7k9PkhMHauoY22nxm6cIkZJKT+wAPkEaMAL1EgFfiDu
	tkPY8wRFsqG+Oa7Kn20cLf8VEPtx7lrAbpmh7/5QMrCNH7r/ntxaZf40+syOkZP7MkD6
	HCIg==
References: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
	<20191107164901.GB5070@shaftnet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <a04a9c9f-4c05-0cb7-7fb6-9d13f631a866@gmail.com>
Date: Thu, 7 Nov 2019 20:14:59 +0100
MIME-Version: 1.0
In-Reply-To: <20191107164901.GB5070@shaftnet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Upcoming work for OpenPrinting: Printer
 (Scanner) Applications and IPP System Service
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Solomon Peachy <pizza@shaftnet.org>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 07/11/2019 17:49, Solomon Peachy wrote:
> On Thu, Nov 07, 2019 at 04:34:32PM +0100, Till Kamppeter wrote:
>> - Legacy interface functions: For filters/PPDs and
>>    for SANE drivers.
> 
> (all of my comments are limited to printing, not SANE)
> 
> I'm not sure what form this can meaningfully take, other than
> effectively being "Legacy CUPS in a container"
> 
> In my view there are really two parallel thrusts; Wrapping existing
> legacy CUPS drivers, and the brave new world of native-IPP solutions.
> 

The wrapping of existing legacy CUPS drivers method is only for the case that 
such drivers exist and it is not worthwhile or possible to rewrite the drivers 
to get native IPP applications.

This is for example the case with

- Proprietary drivers from which we do not have the source code

- Drivers for old printers which are not maintained any more and no one wants to 
dive into the driver's internals

- Quick solution to not loose functionality/hardware support in a Linux 
distribution when the first CUPS without PPD support appears and some drivers 
are not yet converted.

The preferable way are native IPP applications. Whenever possible, especially 
for new drivers or for drivers which are actively maintained, like Gutenprint or 
HPLIP this is the way to go.

> Where they are similar is in their interfacing to the outside system
> (OS integration, port selection, dns-sd, and so forth but once you
> step past that, they diverge rapidly.  For example, CUPS
> filter wrapping is necessarily PPD-centric, but that's a lot of
> baggage (and complexity) that is presumably unnecessary for native,
> directly-integrated stuff.
> 

See above.

>> - Communication with printers and scanners,
>>    functionality of the CUPS backends.
> 
> Most printers can get away with the standard legacy CUPS backends, but
> there are custom backends to contend with (often proprietary), and a lot
> of quirks just to keep life interesting.
> 

Any custom backend code can go into the Printer Application, either as existing 
CUPS backends or in the code of a native IPP application.

>> For testing this we should create a native Printer Application from
>> Gutenprint for example, or one for PostScript printers for which we have PPD
>> files. We also should create a native Scanner Application wrapping SANE with
>> its current driver collection.
> 
> Gutenprint is a good canidate for this as, at its core, it is a library
> that provides a rich API for printer description, configuration, and
> rasterization.  Its existing CUPS driver and GIMP plugin are
> effectively stand-alone applications that rely on that library, and
> would presumably be a decent example of how one would need to integrate
> third party code into any printer application framework.
> 

Therefore I also first thought about Gutenprint to get the first native Printer 
Application.

> Gutenprint's CUPS backends are sort of bolted onto the side, and
> typically support extensive printer configuration/status reporting and
> issuing OOB commands, areas where the IPP model offers substantial
> benefits over the (significant) inadequacies of the legacy CUPS model.
> 

Is it not the case that the only backend coming with Gutenprint currently is the 
USB backend for the dye sublimation printers with proprietary USB protocol?

> ...suffice it to say I'm really looking forward to a native IPP wrapper
> around Gutenprint, and will help any way I can.
> 
>> The code should get preferably hosted at OpenPrinting as part of
>> cups-filters or in separate projects/repositories. Probably we need to
>> overtake some parts of the ippsamples code. Or should the lib then better be
>> at the PWG as part ippsamples?
> 
> I agree that this effort will require subsuming substantial chunks of
> the ippsample code, if only because of tight integration requirements
> that probably don't align well with ippsample's existing codebase.
> 
> But IMO a development goal here would be to try to keep the IPP stuff
> self-contained, and if restructuring is necessary, try to convinve
> upstream ippsample to accept those changes as to minimize everyone's
> maintenance burdens.
> 

With restructuring you mean here to spin out the functional code of the 
ippsample utilities into a library and provide an API?

> Oh, one are of concern here is licensing; As well as chosing a license
> for the (substantial) new code that needs writing, of the code we'd
> presumably want to re-use or otherwise integrate, there's quite an
> assortment.  For example, ippsample is ASL2, gutenprint is GPL2+, and
> cups-filters is a mismash of GPL2, GPL2+, GPL3, GPL3+, and MIT.

Most GPLish of cups-filters is inherited from CUPS, so we can probably turn it 
into ASL2.

    Till
