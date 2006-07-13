Return-Path: <todd.fujinaka@intel.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 Jul 2006 09:44:18 -0700
Message-ID: <D90275D3D462F94E9B3892626804E08C013E5B1D@orsmsx412.amr.corp.intel.com>
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Printing-architecture] directory structure / file name
	conventions
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: printing-architecture@lists.freestandards.org

>-----Original Message-----
>From: Till Kamppeter [mailto:till.kamppeter@gmx.net]
>Some questions:
>
>- Should we also have similar alternatives for /usr/lib/print-drivers/?
>Theoretically driver could be put anywhere with absolute paths in PPDs,
>but for enhanced security environments it is important to have them at
>determined places and also for the drivers themselves we must be FHS
>compliant.

Yes. I was just focusing on the PPD files because I thought I should get
the idea out first.

>- Can we use /opt/printing instead of /opt/openprinting, as the
>drivers/PPDs do not come from FSG OpenPrinting.

It's really supposed to be /opt/<vendor>. I think /opt/openprinting
would be in the spirit of that, but /opt/printing would require some
discussion with the FHS.

>- "/usr is shareable, read-only data" for me would only mean that while
>running programs this should not be written, but software packages can
>be installed here. Is there another clause in the FHS telling that only
>software of the OS distribution can be installed here?

This is just the understanding I have from Debian developers who are
held to the FHS standard. They told me that /usr is read-only, but you
can write to it to update things that are there already. It's
questionable whether new packages can be written there, but an OS vendor
can probably get away with installing things in /usr on their own OS.

>- There is still one problem with integrating these directories with
>CUPS: If a printer needs a special backend for the low-level
>communication, like for example the "hp" CUPS backend for the HP
>printers used with HPLIP, dropping them into something like
>/usr/lib/print-drivers/<supplier>/ will not work, as CUPS looks only in
>/usr/lib/cups/backend and absolute paths as device URI are not
possible.
> How can one solve this problem.


Todd

