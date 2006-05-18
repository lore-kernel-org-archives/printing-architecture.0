Return-Path: <mike@easysw.com>
Message-ID: <446CD245.6070501@easysw.com>
Date: Thu, 18 May 2006 16:00:05 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM> <446BBE7C.5090500@easysw.com>
	<446CB026.4020804@gmx.net> <446CCE7F.4070501@easysw.com>
	<446CD01E.7020002@gmx.net>
In-Reply-To: <446CD01E.7020002@gmx.net>
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
> It delegates file type conversion to a2ps (or another converter, it is
> configurable). Norm, feel free to add more sophisticated file type
> conversion functionality.

Hmm, well, if we mandate CUPS driver support then we'll have the
CUPS APIs around for a CUPS-based file converter, and the amount
of code required for that is extremely small...  I'll see if I can
put together an example along with a System V interface script that
uses it...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

