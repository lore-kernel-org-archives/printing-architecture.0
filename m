Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D8D47E.70300@gmail.com>
Date: Tue, 08 Aug 2006 20:14:22 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <D90275D3D462F94E9B3892626804E08C0182122F@orsmsx412.amr.corp.intel.com>
In-Reply-To: <D90275D3D462F94E9B3892626804E08C0182122F@orsmsx412.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IJS example code causing a segfault
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Cc: printing-architecture <printing-architecture@freestandards.org>

Fujinaka, Todd wrote:
> I'm trying to use the example code from ijs-0.35 and I'm getting
> segfaults. I'll go digging some more, but when I do a
> 
> 
> ./configure; make; gs -sDEVICE=ijs -sIjsServer=./ijs_server_example -
> sOutputFile=testout -dNOPAUSE -dBATCH example.ps
> 
> I get segmentation faults on SLED10 and FC5, but not on RHEL4U3.
> 
> Is this the list for this? I tried desktop_printing, but that list is no
> longer available.

desktop_printing is replaced by printing-summit@lists.freestandards.org

http://lists.freestandards.org/mailman/listinfo/printing-summit

as the organization of the Printing Summits has moved to FSG due to my
employment at FSG. Everyone who was subscribed to desktop_printing is
now subscribed to printing-summit (Todd, you are subscribed to
printing-summit, too). Also the archives are moved to printing-summit.
You can browse the complete archives here:

http://lists.freestandards.org/pipermail/printing-summit/

The official list for IJS was the inkjet-architecture forum of
linuxprinting.org. Now this forum merged (including archives and
members) with the printing-driver@lists.freestandards.org mailing list:

http://lists.freestandards.org/mailman/listinfo/printing-driver/

as IJS is a general driver architecture and not only for inkjets.

I think you should also get in contact with the right people posting
here on printing-architecture. Another possibility is considering IJS as
a part of GhostScript (every GhostScript ships with IJS) and file a
GhostScript bug.

Note that IJS did not change for a long time and distros do not build
the example code (they build only the IJS interface in GhostScript and
the IJS library), so the example code can use interfaces to standard
libraries which have changed with the time.

   Till

