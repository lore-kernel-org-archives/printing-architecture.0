Date: Mon, 09 Dec 2002 19:01:27 +0900
From: Yasumasa TORATANI <toratani.yasumasa@canon.co.jp>
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
In-Reply-To: <3DF0E854.3050802@easysw.com>
References: <OF69D15E56.869D8C9E-ON85256C87.0057F781@pok.ibm.com> <3DF0E854.3050802@easysw.com>
Message-Id: <20021209172714.CF10.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: Michael Sweet <mike@easysw.com>
Cc: Pete Zannucci <pzaan@us.ibm.com>, printing-architecture@freestandards.org, printing-japan@freestandards.org

On Fri, 06 Dec 2002 13:11:32 -0500
Michael Sweet <mike@easysw.com> wrote:

> > Michael Sweet wrote:
> > 
> > 
> >>FWIW, in CUPS #3 is normally handled by the backend (in CUPS 1.1
> >>and earlier) and/or by the driver (in CUPS 1.2), the idea being
> >>that the same commands/protocols will generally be used over
> >>serial, parallel, USB, and network connections, and since the
> >>driver has a copy of the device URI (the device for the printer)
> >>it can tailor its input/output accordingly.

Yes, and I think CUPS has well hierarchized, quite flexible architecture
with several filters which can handle data transformation from one type
to another, including printer command generation, and backends which
can deal with several devices and/or protocols operation.

And, as you mentioned, under the CUPS 1.1.x, if we prepare each
backend for each vendor's printers, and if each vendor's backend can
handle each vendor's protocol, we'll be able to deal with all of #3 issues. 

Additionally, if we prepare the common API between the CUPS
standard backends and each vendor's bi-di plug-in module to handle
each vendor's specific protorol, I suppose we'll be able to reuse the
common functionarities of each CUPS standard backend to control
each device port, for instance open it, close it, return the list of it, etc,
as well as to handle each vendor's functionarities for supporting #3
at the bi-di plug-in module.

The dataflow is as following;

[CUPS filters]-->[CUPS standard backend]<-->[bi-di plug-in]<-->[prt]

    or
                                   +----[bi-di plug-in]--------+
                                   |                                         |
                                  V                                        |
[CUPS filters]-->[CUPS standard backend]---->[prt]

Furthermore, if we make the bi-di plug-in API generic, everyone will
be able to reuse these modules for any other printing system if they
want.

The plug-in might be a shared library linked with the upper system,
or the individual process forked by the upper system. The target file
discriptor will be passed from the upper system to the plug-in, but all
interfaces between the upper system and the bi-di plug-in are TBD.

> The backend would have to understand the PDL, which is one of the
> reasons we've added backchannel support in CUPS 1.2 so that the
> driver (which is generating the PDL) can handle these details.

This is the point we thought.
The bi-di plug-in module would handle the vendor specific PDL
as well as to obtain the printer info from the printer with the vendor's
protocol, and the drivers also handle the info obtained from the
backchannel to make the PDL properly.

I'd appreciate any comment.
Yasumasa TORATANI.


