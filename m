Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446BACA6.5000604@gmx.net>
Date: Thu, 18 May 2006 01:07:18 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM>
In-Reply-To: <446BA39A.80802@Sun.COM>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Norm Jacobs <Norm.Jacobs@Sun.COM>
Cc: printing-architecture <printing-architecture@freestandards.org>

Norm Jacobs wrote:
> <RECOMMENDATION>
> 
>    Installation Locations
>       PPD
>          /usr/share/ppd/{supplier}/{manufacturer}-{model}.ppd
>             where whitespace and dash(-) are replaced with with
> unserscore(_)
>             supplier is the ppd file supplier (gutenprint, hplip, cups,
> epson,
>                                                hp, ...)
>             manufacturer is the print manufacturer name from the IEEE 1284
>                          Device ID
>             model is the printer model from the IEEE 1284 Device ID
>          Eg.
>            
> /usr/share/ppd/gutenprint/Hewlett_Packard-hp_color_LaserJet_4650.ppd
>             /usr/share/ppd/HP/Hewlett_Packard-hp_color_LaserJet_4650.ppd
> 

As some suppliers could have more than one PPD file for the same
printer, for example Foomatic PPDs can exist for one printer used with
different drivers, I suggest to add the driver or whatever is different
in the PPD after the model, separated by another dash. This should
optional but not required. In addition, there should be a directory
level between supplier and PPD for the language:

/usr/share/ppd/{supplier}/{lang}/{manufacturer}-{model}-{extra info}.ppd
/usr/share/ppd/{supplier}/{lang}/{manufacturer}-{model}.ppd

          extra-info can be the driver name or anything else which
          distiguishes PPDs for the same printer model. Spaces have
          to be replaced by underscores, as usual.

Examples:

/usr/share/ppd/foomatic/en/HP-LaserJet_4-hpijs.ppd
/usr/share/ppd/foomatic/en/HP-LaserJet_4-ljet4.ppd
/usr/share/ppd/foomatic/en/HP-LaserJet_4-opvp_pcl5e.ppd
/usr/share/ppd/HP/en/Hewlett_Packard-hp_color_LaserJet_4650.ppd
/usr/share/ppd/HP/de/Hewlett_Packard-hp_color_LaserJet_4650.ppd

[...]
>    Possibly require/recommend foomatic for LSB 3.2
>

Another question: What is "Linux Standards Base" really about? Only
LINUX or also BSD, Solaris, ...

In case of only Linux we could even require CUPS ...

> </RECOMMENDATION>

   Till

