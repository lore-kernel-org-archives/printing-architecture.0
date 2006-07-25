Return-Path: <imurdock@gmail.com>
Message-ID: <44C60094.3030809@imurdock.com>
Date: Tue, 25 Jul 2006 07:29:24 -0400
From: Ian Murdock <imurdock@imurdock.com>
MIME-Version: 1.0
References: <D90275D3D462F94E9B3892626804E08C015CE3C2@orsmsx412.amr.corp.intel.com>	<44C5DD23.1030400@gmail.com>
	<44C5FBEE.5070901@easysw.com> <44C5FE6D.3010803@gmail.com>
In-Reply-To: <44C5FE6D.3010803@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Sender: Ian Murdock <imurdock@gmail.com>
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Michael Sweet <mike@easysw.com>, lsb-discuss <lsb-discuss@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

Till Kamppeter wrote:
> Michael Sweet wrote:
>> Till Kamppeter wrote:
>>> Are more directories needed?
>>
>> /usr/local/share/ppd/<supplier>/<manufacturer>
>> /usr/local/lib/printdrivers/<supplier>
>>
> 
> Is it not enough agreeing on one ofthe pairs
> 
> /usr/local/share/ppd/<supplier>/<manufacturer>
> /usr/local/lib/printdrivers/<supplier>
> 
> and
> 
> /opt/printing/ppd/<supplier>/<manufacturer>/
> /opt/printing/drivers/<supplier>/
> 
> Why are both pairs needed?

/usr/local is where system administrators can install printer drivers
(say, downloaded manually from linuxprinting.org), and /opt is where
vendors can install printer drivers (say, installed via an LSB package
downloaded from the vendor's website) that aren't shipped as part of
the operating system. Question: Is /opt/printing consistent with the
FHS? Wouldn't it be /opt/<vendor>? Yes, that means there's no
canonical place for vendors to drop printer drivers so they
are available system-wide, but that's the equivalent problem of
not having a single path element for third-party
executables, and should presumably be solved in the same manner.

(Adding lsb-discuss to this discussion, so we can get FHS feedback.)

-- 
Ian Murdock
317-863-2590
http://ianmurdock.com/

"Don't look back--something might be gaining on you." --Satchel Paige

