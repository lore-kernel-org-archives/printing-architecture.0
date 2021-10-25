Return-Path: <cups@accounts.christian-wolf.click>
From: Christian Wolf <cups@accounts.christian-wolf.click>
Date: Mon, 25 Oct 2021 16:36:23 +0200
Message-ID: <1880865.CGEiM1yXm4@cwolf-work>
In-Reply-To: <1489e0d9-cacb-bd92-7985-9fef4afb02bb@gmail.com>
References: <34184587.8yKaOjHuOU@cwolf-work>
 <1489e0d9-cacb-bd92-7985-9fef4afb02bb@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Printing-architecture] Deprecation of all modules except for
	everywhere
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hello,

> Classic CUPS printer drivers are replaced by Printer Applications and
> Printer Applications are emulations of IPP Everywhere printers. With
> trhis all printers will appear as IPP Everywhere (or driverless IPP)
> printers. The modern ones do this already by themselves, for the old
> ones we use Printer Applications.

so, I see there is a fallback plan in place. If I understand this correctly, 
one mainly sourced the usage of PPDs out into standalone applications so the 
CUPS core is free of bloat. Makes sense.

> Most existing free software CUPS drivers are already available as
> Printer Applications. You get them here:
> 
> https://snapcraft.io/search?q=OpenPrinting

I will have a look there soon. Eventually, I will return in case of problems. 
:)

Thanks anyhow for the detailed information (also to Zdenek)

Christian



