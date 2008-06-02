Date: Mon, 02 Jun 2008 20:30:23 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <4843D0FB.6070100@gmail.com>
References: <482D53E9.4030201@gmail.com> <4843D0FB.6070100@gmail.com>
Message-Id: <20080602201741.C1CA.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Where should we track bugs in the LSB
	DDK?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Hi Till,

How about the following flow?
- Printer manufacturere or other developer/user posts the bugs related to printing
  first to the OpenPrinting bug tracker.
- OpenPrinting bug tracker admin (Till?) assigns the developer for each bug.
  If the bug is caused by the LSB base modules, admin registers the bug into the
  LSB bug tracker, and also records the LSB tracker bug id into the OpenPrinting
  bug tracker. If the bug is caused by OpenPrinting specific modules, developer
  of the module should be assigned.

TORATANI

On Mon, 02 Jun 2008 12:52:43 +0200
Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Hi,
> 
> no one has any opinion about this? I need it done quickly, as printer 
> manufacturers are asking me where to report bugs.
> 
>     Till
> 
> Till Kamppeter wrote:
> > Hi,
> > 
> > I got already the first bug report for the LSB DDK (Driver Development 
> > Kit) by e-mail.
> > 
> > As there are two suitable bug tracking systems
> > 
> > - LSB: http://bugs.linuxbase.org/
> > - OpenPrinting: http://bugs.linux-foundation.org/ (Prod.: OpenPrinting)
> > 
> > I am in doubt where to report these bugs. WDYT? I would say it is better 
> >  located in the LSB bug tracker.
> > 
> > This shows also that we should have only one bug tracker for the Linux 
> > Foundation. So bugs can be more easily moved, for example an LSB-DDK bug 
> > from OpenPrinting to LSB.
> > 
> >    Till
> > 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

-----------------------------------------
TORATANI Yasumasa

