Message-ID: <4903C566.7000700@fakenhamweb.co.uk>
Date: Sun, 26 Oct 2008 01:18:30 +0000
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>	<49035AC2.5000000@fakenhamweb.co.uk>	<200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903751E.2000507@fakenhamweb.co.uk>	<200810251950.m9PJoeFa030284@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903BCCF.6060308@fakenhamweb.co.uk>
	<200810260049.m9Q0nTIw032617@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810260049.m9Q0nTIw032617@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Hi :)

Robert Krawitz wrote:

> Why does it have to be server-side?  The print dialog could implement
> it.

Well, this whole discussion started with the question of how gutenprint 
will work with the Common Printing Dialog.

You said: "There are a lot of low level ink controls that I would be 
happy to move elsewhere, but it's not clear to me where that "elsewhere" 
is provided."

I'm brainstorming here - simply exploring the idea that it may fall to 
Gutenprint to create that "elsewhere" for itself, out-of-band as far as 
the main printing dialog goes.  Making out-of-band data available to the 
print filters without requiring admin permissions is not an easy problem 
to solve, but it's one that we need to solve at some point anyway, I 
think, in order to support the easy creation and sharing of 
linearization curves.

All the best,
--
Alastair M. Robinson
