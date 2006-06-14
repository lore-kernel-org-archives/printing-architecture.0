Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <44907987.5040604@Sun.COM>
Date: Wed, 14 Jun 2006 16:03:03 -0500
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
References: <44907703.50807@gmx.net>
In-Reply-To: <44907703.50807@gmx.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPI RPM implementation for Mandriva's
	Cooker
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
Cc: Wendy Phillips <wendyp@Sun.COM>, printing-architecture <printing-architecture@freestandards.org>

Thanks for the pointer.  I will incorporate the RPM spec file
into the subversion repository today (hopefully)

    -Norm

Till Kamppeter wrote:
> Oi,
>
> in todays architecture telecon we have talked about the implementration
> of PAPI in the distros and my PAPI RPMs for Mandriva.
>
> Here you find source and binary RPMs for Mandriva's Cooker and also the
> source tarball (SVN rev 171) and the spec file:
>
> http://www.freestandards.org/~till/tmp/papi/
>
> There are no patches, all file manipulation is done with Perl. The
> libraries are renamed and selected by update-alternatives (default is
> IPP library for CUPS), as libpapi-dynamic does not work very well with
> CUPS. This scheme should perhaps be adopted upstream for easier
> integration in distros.
>   
Yes, the libpapi-dynamic support uses /etc/printers.conf, which
doesn't exist on linux distros.  Replacing libpapi with a link to
psm-ipp will make it talk directly (no interposed library) to an
IPP server (CUPS).  psm-ipp also understands the CUPS_SERVER
and a PAPI_SERVICE_URI environment variable to override any
autoconf provided default default ipp service uri.

> You also see the splitting of binary RPMs to be able to install only
> needed stuff, not breaking things, and not introducing too many
> dependencies.
>
>    Till
>   

