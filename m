Return-Path: <mike@easysw.com>
Message-ID: <4477142E.4040502@easysw.com>
Date: Fri, 26 May 2006 10:43:58 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Notes of today's telecon
References: <44763048.4080605@Sun.COM> <4476495D.70901@gmx.net>
In-Reply-To: <4476495D.70901@gmx.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: Wendy Phillips <wendyp@sun.com>, Norm Jacobs <Norm.Jacobs@Sun.COM>, printing-architecture <printing-architecture@freestandards.org>

Till Kamppeter wrote:
> Norm Jacobs wrote:
>>    Till also suggested the "extra" tag. I'm not clear why. Till?
>>
> 
> For one and the same printer there can be more than one driver but the
> PPDs come from the same supplier. There are PPDs from Foomatic for the
> HP LaserJet 4050 for the "ljet4", the "pxlmono", and the "hpijs" driver
> for example. Gutenprint has standard (full option set) and simplified
> (reduced option set) PPDs.
> 
> Then we can do
> 
> /usr/share/ppd/foomatic/HP/HP-LaserJet_4050-ljet4-en.ppd
> /usr/share/ppd/foomatic/HP/HP-LaserJet_4050-pxlmono-en.ppd
> /usr/share/ppd/foomatic/HP/HP-LaserJet_4050-hpijs-en.ppd
> /usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-standard-en.ppd
> /usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-simplified-en.ppd

FWIW, I'm not keen on putting multiple languages in a single
directory.  Most file systems don't like to deal with 60k+ files
in a single directory, and the CUPS globalized/multiple-language
PPD files don't need the suffix (or if they did use a suffix, you'd
list all of the supported locales...)

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

