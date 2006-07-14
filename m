Return-Path: <till.kamppeter@gmx.net>
Message-ID: <44B7F6EE.3020207@gmx.net>
Date: Fri, 14 Jul 2006 21:56:30 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D10EE78@mailsrvnt05.enet.sharplabs.com>
In-Reply-To: <789E617C880666438EDEE30C2A3E8D10EE78@mailsrvnt05.enet.sharplabs.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] directory structure / file name conve
 ntions
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@lists.freestandards.org

McDonald, Ira wrote:
> Hi,
> 
> Staying conformant to FHS (required for LSB conformance)
> appears to need some significant thought and modifications
> to our previous FSG/OP concensus (see Wendy Phillips' note
> yesterday).
> 
> For those having trouble finding the authoritative source
> for the FHS spec (I did), below is the home page:
> 
>   http://www.pathname.com/fhs/
> 
> The most recent release is v2.3 (29 January 2004) - there
> are links for PDF, PS, HTML, etc. versions of FHS/2.3 on
> the above web page.
> 
> Does anyone know if there is work-in-progress for a newer
> version of FHS?  Thirty months is a long time in computers.
> 
> I don't think the FSG/OP should recommend a hierarchy std
> for printing that is broken across the 'shipped with system'
> versus 'later vendor packages'.  But I suspect that's just
> what Debian, SUSE, and others want, for security reasons.
> Yuck!
> 
> Comments?
> 

Having one directory would make configuring the security enhancements
(SELinux, AppArmor) easier, but if the appropriate maintainers of the
distros pre-configured them once correctly it should not be a problem.

So we are probably better of to define at least two directories, one for
 drivers to be shipped with the distro and one for distro-independent
drivers.

Or can we even go with one directory when it is not in /usr? For example
/opt/(open)printing/ppd/ and /opt/(open)printing/drivers/. Note that for
example the KDE and GNOME which ships with SuSE is also in /opt. Or does
SuSE violate the FHS with that?

   Till

