Return-Path: <m.weghorn@posteo.de>
References: <CAN40gSsa6nn5DMYKtbHapet88ybiSTDaZBWVE8KuUYNaZ2R0hw@mail.gmail.com>
From: Michael Weghorn <m.weghorn@posteo.de>
Message-ID: <56F70AE1.4080304@posteo.de>
Date: Sat, 26 Mar 2016 23:19:13 +0100
MIME-Version: 1.0
In-Reply-To: <CAN40gSsa6nn5DMYKtbHapet88ybiSTDaZBWVE8KuUYNaZ2R0hw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Status and future of the Common
 Printing Dialog (CPD)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi Ira,

thank you very much for pointing me at the Common Mobile Print Dialog.

I have had a look at the presentation and the code. To be honest, I
currently do not understand much of it.
I was able to compile the Sample Mobile Print Client contained in the
"op.cmpc.64.bit.tar.gz" which is also shown on slide 17 of the presentation.

Not knowing much about Print Job Ticket and related topics, it seems to
me like the sample client mostly allows to set the values for the
different PrintJobTicket elements.

However, I currently cannot see where the other printing components
mentioned in the presentation come into play. Particularly, I cannot see
the connection to any "real" printing system/service so far.
(I did not yet have a closer look at the zip files on the server. At
first glance, they looked to me like they contained mostly
Windows-specific things - or at least the binaries were last built on
Windows...).

Not having understood much of it, I am currently not sure whether the
Common Mobile Print Dialog is actually an approach to target the
situation my organization is in (which would basically be quite
interesting to know before investing much time in something that may be
interesting but not really help us further...).


Background information:
Our organization is running a (K)Ubuntu-based distribution on several
thousand desktop clients. Various applications are using different print
dialogs (e.g. GTK, Qt4, LibreOffice, Java, ...).

Having various different print dialogs does not seem to be optimal from
the user-experience point of view and also is not from the maintenance
point of view (e.g. features and bugs have to be dealt with multiple
times, s. my last email).
In addition, the Qt 5 print dialog (which we will probably start using
with our release based on (K)Ubuntu 18.04) does currently not support
setting arbitrary PPD options (s. [1]). This is a feature we will need.

Not yet knowing whether the Qt community will "by itself" implement this
feature before we start the migration to Qt 5, I am currently thinking
what would be the best way to deal with it.

One idea that came to my mind was to take this as an occasion to
evaluate whether the use of the Common Printing Dialog (or something
similar) was an option (which could possibly also significantly improve
user experience and simplify maintenance). Another option would be to
implement this feature in Qt 5 (or probably rather have it implemented).
There may be other alternatives, but I wanted to get an assessment of
the CPD (or similar alternatives) before starting to think about other
ways more intensely.

The solution is currently not urgent (as we will probably have time
until 2018), but should be thought of in time.

Best regards,
Michael

[1]
http://lists.qt-project.org/pipermail/interest/2015-September/thread.html#18692

On 2016-03-26 20:31, Ira McDonald wrote:
> Hi Michael,
> 
> Many thanks to GTK and QT folks for responding.
> 
> My comments are informal.  CPD was focused on large-screen laptops and
> desktops and explicitly ruled out UI for smartphones.  That focus drew some
> criticism at the time. 
> 
> Before his retirement from EPSON, Glen Petrie did some excellent work
> on a lightweight Common Mobile Print Dialog that was scaleable across all
> mobile devices, screens, and input methods and specifically optimized for
> small-screen smartphones and written in pure C (for portability).  The
> design,
> code, and presentations are archived on the IEEE-ISTO PWG FTP server at:
> 
>   http://ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/
> 
> Till and I would both be delighted to see CMPD work resumed and completed.
> 
> Cheers,
> - Ira
> 
> 
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
> 
> 
> On Sat, Mar 26, 2016 at 2:19 PM, Michael Weghorn <m.weghorn@posteo.de
> <mailto:m.weghorn@posteo.de>> wrote:
> 
>     Thank you for your quick replies.
> 
>     If neither GTK+ nor Qt are planning to support the CPD, this does not
>     sound like it had a very bright future.
> 
>     Maybe it might be a good idea to add some note about the current status
>     in the CPD section on the website so that other people looking at it can
>     quickly get an idea of it.
> 
>     Are there possibly other plans/ideas to provide a more consistent user
>     experience in printing dialogs across various applications?
>     The current situation with so many different printing dialogs (e.g. GTK,
>     KDE, LibreOffice, Java, several applications having their one one's,
>     ...) that look differently and have a different set of features does not
>     seem optimal to me.
> 
>     Also, from a developer's point of view it is non-optimal when adding a
>     new feature or fixing a bug potentially requires making that change
>     several times in totally different code bases (I only know LibreOffice,
>     Qt 4 and GTK)...
> 
>     Best regards,
>     Michael
> 
>     On 2016-03-26 18:01, John Layt wrote:
>     > On 26 March 2016 at 15:42, Richard Hughes <hughsient@gmail.com
>     <mailto:hughsient@gmail.com>> wrote:
>     >> On 26 March 2016 at 15:03, Michael Weghorn <m.weghorn@posteo.de
>     <mailto:m.weghorn@posteo.de>> wrote:
>     >>> Could somebody possibly say something about the current status
>     of the
>     >>> Common Printing Dialog?
>     >>
>     >> Last time I spoke to the GTK maintainers and the GNOME Design team
>     >> there was a total lack of support for the project.
>     >>
>     >> Richard
>     >
>     > While the usual Qt policy is to use the host platform facilities where
>     > available, Qt has no interest in using CPD either, at least not in the
>     > architecture proposed. There were too many implementation issues and
>     > no funding for the required cross-platform architectural changes that
>     > Qt would have required.
>     >
>     > John.
>     > _______________________________________________
>     > Printing-architecture mailing list
>     > Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     >
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>     >
>     _______________________________________________
>     Printing-architecture mailing list
>     Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
> 
