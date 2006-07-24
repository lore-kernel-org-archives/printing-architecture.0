Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44C53DDF.6090201@gmail.com>
Date: Mon, 24 Jul 2006 23:38:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <D90275D3D462F94E9B3892626804E08C01580B06@orsmsx412.amr.corp.intel.com>
In-Reply-To: <D90275D3D462F94E9B3892626804E08C01580B06@orsmsx412.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Cc: Wendy Phillips <wendy.phillips@sun.com>, printing-architecture <printing-architecture@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

Fujinaka, Todd wrote:
>>-----Original Message-----
>>From: printing-architecture-bounces@lists.freestandards.org
>>[mailto:printing-architecture-bounces@lists.freestandards.org] On
> 
> Behalf Of
> 
>>Michael Sweet
>>
>>Till Kamppeter wrote:
>>
>>>...
>>>Does this mean that putting a third-party CUPS filter into
>>>/usr/lib/cups/filter/ is no violation of FHS?
>>
>>Technically yes, since they aren't part of the standard printing
>>system.  That said, there is a long history of putting drivers
>>(or interface scripts, or filters, etc.) in /usr/share, so it
>>might make sense to add a grandfather clause for this, or make
>>it one of several possible directories - OS vendors put them in
>>/usr/share, other vendors in /opt/printing/share, local drivers
>>in /usr/local/share, etc.
> 
> 
> It is my understanding that /usr/share shouldn't change. I think Till is
> forgetting that CUPS is included by the distro, so having things in
> /usr/share/CUPS at install time is not a problem.
>

But third-party CUPS drivers go into /usr/lib/cupss/filter and
/usr/share/cups/model. So there is third-party software which goes into
/usr.

> 
>>>Would then putting a driver and its PPD into the directories
>>>
>>>/usr/share/ppd/<supplier>/<manufacturer>/
>>>
>>>and
>>>
>>>/usr/lib/printdrivers/<supplier>
>>>
>>>because these directories are a core part of the OS?
>>>
>>>Or do we still need the alternative location /opt/printing/?
>>
>>I'd say to support both - /usr for OS-supplied stuff, /opt and
>>/usr/local for locally-installed stuff.
> 
> 
> It is my understanding nothing should be installed into /usr while the
> system is running normally. There are times when packages are updated,
> but I think the assumption is that updates are not happening during
> "normal use." Also, /usr is the domain of the distro and I doubt they
> want you to touch it without their OK.
> 
So third-party CUPS drivers are violating the standards currently, due
to requirements of CUPS.

   Till

