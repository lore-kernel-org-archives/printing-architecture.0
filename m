Return-Path: <mike@easysw.com>
Message-ID: <446F3A8F.1020504@easysw.com>
Date: Sat, 20 May 2006 11:49:35 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM> <446BACA6.5000604@gmx.net>
In-Reply-To: <446BACA6.5000604@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
Cc: Norm Jacobs <Norm.Jacobs@Sun.COM>, printing-architecture <printing-architecture@freestandards.org>

Till Kamppeter wrote:
> ...
> optional but not required. In addition, there should be a directory
> level between supplier and PPD for the language:
> 
> /usr/share/ppd/{supplier}/{lang}/{manufacturer}-{model}-{extra info}.ppd
> /usr/share/ppd/{supplier}/{lang}/{manufacturer}-{model}.ppd
> ...
> /usr/share/ppd/HP/en/Hewlett_Packard-hp_color_LaserJet_4650.ppd
> /usr/share/ppd/HP/de/Hewlett_Packard-hp_color_LaserJet_4650.ppd

IMHO, the focus should be on "globalized" PPD files; the DDK will
(soon) provide a ppdmerge utility to make this process trivial.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Publishing Software        http://www.easysw.com

