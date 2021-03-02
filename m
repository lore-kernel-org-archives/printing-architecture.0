Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Tue, 02 Mar 2021 13:04:41 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <878ddede-d75c-f422-304f-5a6ce517216a@gmail.com>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <878ddede-d75c-f422-304f-5a6ce517216a@gmail.com>
Message-ID: <72f7a2243e4fef36d586af0c753d3370@suse.de>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Future of Printer Setup Tools
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


Hello,

thank you Till for your comprehensive and explanatory summary.

It helps so much that you act as a kind of "moderator" who
moves discussions forward in a positive and constructive way.

On other mailing lists or forums I see it too often that long
and elaborated discussions fade away in a vague pending state
because there is nobody who acts as a moderator who summarizes
current results so that all know what the current state is.


On 2021-03-02 11:58, Till Kamppeter wrote (excerpts):
> Now to transition to the new architecture, where printers (and
> scanners) are IPP services and not CUPS queues with assigned
> filter/PPD drivers any more, we should transition the two parts as
> follows:
> 
> 1. The main window: Here we list all IPP services. Each IPP service
> (defined by a host and a port) is a main entry. Under an IPP service
> there can be 0 (e. g. Printer Application before creating the first
> print queue), 1 (e. g. simple single-function IPP printer), or more
> (e. g. IPP multi-function printers, Printer Application with more than
> one queue) entries for printers/scanners/faxes. Each main entry should
> get two buttons, one to open the web admin interface and one for IPP
> System Service status/configuration. The printer/scanner entries can
> also have buttons, for example to directly link to job list, options
> panel, ... in the web interface, for pause/resume, set as default, ...
> All info for this can be taken from DNS-SD (see avahi-discover
> output).
> 
> 2. The add-printer wizard: Here we should have a guide for the user to
> find and set up classic printers. by listing discovered printers,
> listing installed Printer Applications (with polling them whether they
> support the printer), do a Snap Store search with the make/model of
> the printer and the word "printer", ... No auto-association and
> evaluation of drivers to the printer required.
> 
> (1) Can also get extended to a general DNS-SD-based network service
> lister (imaging the user can also reach the web interfaces of his
> router and his smart home devices by a click on a button). This is
> so-to-say the user-friendly version of the admin tool avahi-discover.
> 
> These tools can be stand-alone, but ideally (1) would be a module of
> the GNOME Control Center and (2) would pop up by a button at the top
> of (1) (like the current "Printers" module in GNOME Control Center).

my first offhanded thought when reading it was:

Why having that functionality separated in a different tool
and not in the normal printing (or scanning or faxing) dialog?

I describe here only the printing case.

What I have in mind is:

The end-user sits in front of his current application program
and now - all of a sudden - he wants to print from within
his current application program so he opens its print dialog, cf.
https://en.opensuse.org/Concepts_printing#User_expectations
------------------------------------------------------------------
The usability experts Peter Sikking and Jan Mühlig did some
research with real average users. Peter Sikking wrote at
http://www.mmiworks.net/eng/publications/labels/openPrinting.html
...
1st rule of printing: printing does not exist
...
for users there is no worthwhile, productive activity
between the moment they want to see something printed and
the moment it comes out of the printer
...
And guess what: there is no such thing as printing.

It does not exist as a task, as a meaningful activity.
One moment you decide to see it on paper,
the next it rolls out of the printer.
------------------------------------------------------------------

In a proper IPP Everywhere environment all he needs to print
is "magically" already there so he can "just print".

But if not things go wrong for the end-user because he does
not see the needed "buttons" to set up legacy (USB) printers
or to establish access to DNSSD-announced network IPP printers
in his normal print dialog.

So I think printer setup things should be integrated
into the normal print dialog.

If printer setup can be done as normal user all is fine.

If printer setup requires 'root' permissions an appropriate
authentication dialog should pop up. If the user does not know
the root password he knows at least that he would have to contact
an admin to get that task done.

Of course I know that
"there is no such thing as THE normal print dialog"
but this could be another good reason why there should be
one single common print dialog framework/backend
that is used "under the hood" by the desktop toolkits
and (free software) stand-alone applications.

If printer setup functionality could be integrated,
the Common Print Dialog Backends
https://openprinting.github.io/projects/04-print-dialog/
might be better re-named something like
Common Print User Interface Backends (or Framework)


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
