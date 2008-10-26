Message-ID: <4903BCCF.6060308@fakenhamweb.co.uk>
Date: Sun, 26 Oct 2008 01:41:51 +0100
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>	<49035AC2.5000000@fakenhamweb.co.uk>	<200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903751E.2000507@fakenhamweb.co.uk>
	<200810251950.m9PJoeFa030284@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810251950.m9PJoeFa030284@dsl092-065-009.bos1.dsl.speakeasy.net>
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

> Right, but if the infrastructure's missing something, we need to know
> what it is and if necessary how to work around it.

What's missing, I think, is any way of storing persistent data 
server-side on a per-user basis.  The cups filters have access to the 
name of a job's "owner", yes?  So as far as I can see, fetching a user's 
overrides (for those parameters which are out-of-band as far as the 
Common Printing Dialog is concerned) would be easy enough if there were 
anywhere suitable to store them.

> And that's a very big problem -- the whole point of creating presets
> like this is to use them.

Yup, absolutely.

All the best,
--
Alastair M. Robinson

