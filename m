Message-ID: <4903751E.2000507@fakenhamweb.co.uk>
Date: Sat, 25 Oct 2008 20:35:58 +0100
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>	<49035AC2.5000000@fakenhamweb.co.uk>
	<200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>
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

> Right, but that's not efficient for printing large documents at high
> resolution over a network.

Agreed.

> I don't think that that's quite good enough.  I'm OK with having the
> CPD itself provide only a limited set of options, as long as it's
> possible for both users and administrators to create preset bundles
> that may reference options not provided in the PPD file.  Requiring
> use of a client side RIP in order to use custom linearization curves
> isn't acceptable to me.

Fair enough - and I tend to agree - I'm just trying to figure out what 
we can do within the bounds of the current infrastructure, and whether, 
or to what extent, we need new facilities!

> So someone might want to create a preset bundle that includes
> linearization curves and other settings for a particular paper type,
> resolution, and ink set (e. g. photo or matte inks).  I think a user
> should be able to do that just as well as an administrator.

In the scenario I outlined, a user is able to do that.  The sticking 
point is that actually *installing* it, so that the changes can be used 
via the CPD, would require admin rights.

> Note that the preset bundle may actually be a large amount of data.

Yes indeed.

All the best,
--
Alastair M. Robinson

