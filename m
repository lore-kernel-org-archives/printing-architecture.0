Message-ID: <4B0722A1.7050208@gmail.com>
Date: Fri, 20 Nov 2009 17:13:37 -0600
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <003601ca5887$d1e33c80$9e72150a@nsl.ad.nec.co.jp>
	<4B034874.7020400@fujixerox.co.jp>
In-Reply-To: <4B034874.7020400@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	Oct. 2009 meeting minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Osamu MIHARA wrote:
> <Action Items Follow-up>
> <Telecon (US/EU) Review>
> - (review meeting minutes)
> - Internationalization is needed for OpenPrinting Web Site and download site
>   -> Who will work for this?
> 

I will talks with Dan Lopez (LF web developer) about the implementation 
of internationalization. The OpenPrinting database itself supports 
internationalization.

> <Printer Driver Seminar (Till's Proposal)>
> - Posting from Till for the previous meeting minutes is reviewed.
>   -> "Training" is preferable compared with "Lecture."

Yes, it is planned to be a hands-on training session.

>   -> Explanation of CPD does not necessarily need an application which
> supports CPD.

No application needed. For demonstration one can start the CPD from the 
command line.

> - A question arised from Kunai: Do any printer vendor currently consider
> to provide printer drivers supports CPD?  Do they needs any training for
> CPD?

I am working together with one manufacturer currently who is preparing 
packages for auto-download via OpenPrinting.

>    -> Printer vendors thinks it's too early to incorporate CPD in their
> drivers.  It is because the spec is not fixed yet, then it doesn't show
> definite merits yet.

The dialog is nearly complete and the PPD extensions are unlikely to 
change now. The PPD extensions are the interface with which the driver 
developer controls the dialog. So you can safely use the PPD extensions. 
As long as the CPD is not actually there, the extensions will be ignored 
and the driver will still work with the old dialogs.

>    -> Main topic will be Printer Driver.  CPD part will be just a
> introduction.

That is true. Central topic is designing and packaging the drivers. The 
CPD will be shown to demonstrate the effects of the PPD extensions.

> - Timing/Schedule: Japan Linux Symposium in next fall (2010) will be
> good timing for the seminar.

I think this is too late, we should already do it earlier like early 2010.

> - We'd like the developers of applications and GUI tool kits to come to
> the seminar.
> 

The seminar is for printer driver developers. We can have another 
(one-day) session at the symposium for further discussion of the CPD.

    Till

