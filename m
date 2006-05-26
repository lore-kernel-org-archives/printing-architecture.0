Return-Path: <mike@easysw.com>
Message-ID: <4477404C.7070909@easysw.com>
Date: Fri, 26 May 2006 13:52:12 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Notes of today's telecon
References: <789E617C880666438EDEE30C2A3E8D10EE1E@mailsrvnt05.enet.sharplabs.com>
	<44773DF8.9010802@gmx.net>
In-Reply-To: <44773DF8.9010802@gmx.net>
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
Cc: Wendy Phillips <wendyp@sun.com>, Norm Jacobs <Norm.Jacobs@Sun.COM>, "McDonald, Ira" <imcdonald@sharplabs.com>, printing-architecture <printing-architecture@freestandards.org>

Till Kamppeter wrote:
> McDonald, Ira wrote:
>> Hi,
>>
>> I'm going to support Michael's point here.  The prevailing
>> usage in the localization industry and in most file systems
>> is to use language tag directories immediately _before_ the
>> terminal filename in a path.
>>
> 
> So you suggest
> 
> /usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-ljet4-en.ppd
> /usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-pxlmono-en.ppd
> /usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-hpijs-en.ppd
> /usr/share/ppd/gutenprint/HP/en/HP-LaserJet_4050-standard-en.ppd
> /usr/share/ppd/gutenprint/HP/en/HP-LaserJet_4050-simplified-en.ppd
> /usr/share/ppd/gutenprint/HP/de/HP-LaserJet_4050-simplified-de.ppd
> 
> Is this what you mean?

I'd actually suggest having the language first, e.g.:

     /usr/share/ppd/gutenprint/de/HP/HP-LaserJet_4050-simplified-de.ppd

> Having the language directory as the last level makes it also easier to
> install (and also to uninstall) selected languages.
 > ...

Putting the language first makes this trivial; burying it a few
levels deep makes things more difficult, which is why we (and Apple)
make it first...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

