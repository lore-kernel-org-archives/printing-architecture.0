Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44C659EA.8000602@gmail.com>
Date: Tue, 25 Jul 2006 19:50:34 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <D90275D3D462F94E9B3892626804E08C015CE87E@orsmsx412.amr.corp.intel.com>
	<17606.15861.773455.901325@localhost.localdomain>
In-Reply-To: <17606.15861.773455.901325@localhost.localdomain>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] resend notes from lastweek
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Christopher Yeoh <cyeoh@samba.org>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Michael Sweet <mike@easysw.com>, printing-architecture <printing-architecture@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>, freestandards-fhs-discuss@lists.sourceforge.net, Wendy Phillips <wendy.phillips@sun.com>

Christopher Yeoh wrote:
> 
> Yea, I agree /opt/vendor appears scattered, but symlinking them in
> through into /opt/lib/ and /opt/share/ should bring them all together
> without the need for adding a special printing directory to /opt. I'd
> like to avoid having a special case here unless it can be shown to be
> really necessary.
> 
> We would of course need agreement from all of the major distributions
> before adding this to the FHS.
> 
> Note that although 3rd party vendors will only have to install into
> one place, applications that look for them will still need to look in
> /usr/lib and /usr/local/lib in addition to /opt and at a higher level
> someone will need to work out precedence rules (say /usr/local ->
> /opt/ -> /usr in order of decreasing importance)
> 

I got the following suggestion from a De Zeurkous <zeurk (at) xs4all.nl>:

------------------------------------------------------------------------
Personally I'd suggest using /usr/opt for this kind of cases, and put all
the relatively generic data in there -- libraries in /usr/opt/lib, manual
pages in /usr/opt/man, perhaps binary symlinks to /usr/opt/bin instead of
in /usr/bin, etc. For the vendor-specific issue, i'd suggest just adding
the supplier tag as a directory and then symlinking back --
/usr/opt/lib/printerdrivers/foo -> /usr/opt/lib/acme/foo and so on.

De Zeurkous
-----------

------------------------------------------------------------------------

I think this is somewhat strange, is this FHS compliant?

   Till

