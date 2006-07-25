Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44C65452.9040603@gmail.com>
Date: Tue, 25 Jul 2006 19:26:42 +0200
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

Would /opt/share/ppd/<supplier> and /opt/lib/printerdrivers/<supplier>
violate the FHS or can we define this as the standard places for
third-party files?

> Note that although 3rd party vendors will only have to install into
> one place, applications that look for them will still need to look in
> /usr/lib and /usr/local/lib in addition to /opt and at a higher level
> someone will need to work out precedence rules (say /usr/local ->
> /opt/ -> /usr in order of decreasing importance)

In a typical Linux distro with CUPS /usr/share/cups/model will contain
symlinks to /usr/share/ppd, /usr/local/share/ppd, and /opt/share/ppd and
so it will see all PPDs. The drivers are found by absolute paths in the
PPDs. Problem is how will CUPS handle priorities. If there are three
PPDs with equal NickNames but in different directories, the web
interface will show three equal list entries.

The priorities you suggested are good. /opt overrides /usr and so
manufacturer drivers (or updates downloaded as LSB packages from
linuxprinting.org) have priority against distro-included drivers. With
/usr/local having highest priority, drivers installed from source, for
example hacked by the admin will be preferrably used. So admins do not
need to wonder why their patches or CVS updates to not work due to the
distro's version of the driver still being installed.

> freestandards-fhs-discuss@lists.sourceforge.net is the best place for
> FHS discussions. Apologies if I hadn't responded to you before, but
> for some reason SourceForge unsubscribed me from the list and I didn't
> realise (I'm an FHS person). We go through periods of not much
> activity until there is enough in the queue to justify a new release.

Would the suggestion with /opt/share/ppd/<supplier> and
/opt/lib/printerdrivers/<supplier> for third-party drivers need a change
on FHS?

   Till

