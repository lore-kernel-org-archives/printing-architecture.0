References: <871w8iv0ky.fsf@geek.avasys.jp> <478EAF57.9090409@gmail.com>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Fri, 18 Jan 2008 11:06:33 +0900
In-Reply-To: <478EAF57.9090409@gmail.com> (Till Kamppeter's message of "Thu\,
	17 Jan 2008 01\:28\:55 +0000")
Message-ID: <878x2nx4ye.fsf_-_@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: [Printing-architecture] Some thoughts on the Common Printing Dialog
	(was Re: [Printing-japan] Some thoughts on the * Print* Dialog)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org
Cc: Kurt Pfeifle <k1pfeifle@gmx.net>, Jan Muehlig <jan.muehlig@relevantive.de>, Peter Sikking <peter@mmiworks.net>, printing-architecture@lists.freestandards.org, Till Kamppeter <till.kamppeter@gmail.com>, Celeste Lyn Paul <celeste@kde.org>

Till, thanks for the quick feedback.  My comments are inlined, but
there is one thing that I'd like to "repeat" here for the people who
don't want to read the whole thing.

 - if it is not embedded in the PPD file, it will not be in the dialog

Till Kamppeter <till.kamppeter@gmail.com> writes:

> Olaf Meeuwissen wrote:
>>
>> [snipped comment about different names for dialog]
>
> I use "Common Printing Dialog" as it is supposed to be a dialog to be
> used by all desktops and all applications. The latter, "Linux Print
> Dialog" is a bad choice, as the desktops and apps under consideration
> are also running under other operating systems, like Solaris for
> example.

Same opinion here.  Let's stick to "Common Printing Dialog".

> [snip]
>>
>> Another topic that I'd like to see in action is that for printing to a
>> remote printer.  There are a number of things that you can do with
>> local printers (parallel, USB, etc) that you can not do with a remote
>> printer (via CUPS or otherwise).  Will local vs. remote differences
>> impact the design/implementation?  That's something I'd like to find
>> out early.  Are there things that could/should be solved elsewhere in
>> the printing architecture to facilitate the dialog?
>
> Printing options do not differ depending on the connection type (USB,
> network, ...) or depending on being on the machine where the CUPS
> queue is defined or being on a machine where a remote CUPS queue is
> available via broadcasting. Independent of all of this you use the
> same PPD for a printer with the same capabilities (trays, color/bw,
> finishers, qualities, ...). So one and the same printer has the same
> capabilities and so should show the same options in the dialog,
> independent whether it is local or remote.

Summarising:

 - if it is not embedded in the PPD file, it will not be in the dialog

Right?

>> I understand the current design is geared toward the general inkjet[9]
>> and some of the design decisions may reflect that.  Is any work being
>> done on a design for the high volume[10] case?  If so, I bet some of
>> us would like to see.  If not, maybe it's time to start so you can get
>> an idea of how much of the inkject ideas (and code?) can be shared.
>> Maybe some of the high volume ideas and solution should flow back to
>> the general inkjet case.
>
> The dialog is not inkjet-specific, the example in the blog is for an
> inkjet. The concept is suitable for all types of printers. The dialog
> will simply show the options as defined in the PPD file. For a
> high-end laser the quick presets on the left will simply be something
> like "Draft printout", "Letter/no special finishing", "Stapled
> document", "Booklet", ... and not "Draft", "Normal", "Photo" and
> trhere will be tags like "Finishing", "Binding", "Packing", ...

So I guess I'd like to see an example for the high volume case.
Reading Peter's blog I got the impression that some of the dialog
layout decisions were influenced by their effect on screen real
estate.  If there are more quick presets and/or tags, that might
change the way you want to arrange things.

> [snip]
>
>> Finally, I couldn't help but notice that Peter's blog mentions some
>> fixed(?) dialog dimensions.  With respect to I18N needs, this may not
>> be such a good idea.  Some languages are rather verbose and use long
>> words (German for example ;-P), others need a lot less horizontal
>> space (Chinese for example).  Also, while you may be able to reduce
>> font size quite comfortably for Latin alphabets, for things like the
>> CJK ideographs anything less than 10 points is next to unreadable on
>> the screen.
>
> The fixed dimensions Peter is giving are most probably not intended to
> be standardized on. My suggestion is to do it like with dialogs
> defined with GLade, the adapt themselves to the size of the content
> elements, like text for example.
>
>> Semi-related, how do all these nifty UI tricks work out in terms of
>> accessibility?  Is this something that will be left to the various
>> toolkits' accessibility support?
>
> Here we must really ask the OpenUsability people, but also the GUI
> toolkit gurus.

Agreed.  The automagic layouting done for dialogs defined with Glade
is fine with me.  Actually, that's how I would have implemented it.
Now let's hope that vendors do not want detailed control over how
things should look.  At the Tokyo F2F this topic was mentioned ...

>>  * printer maintenance
>>
>> This may be a bit off-topic but has any thought been given to the idea
>> of kick-starting external applications from the printing dialog?  This
>> functionality was mentioned during our discussion at the Printing
>> Japan Meeting.  It seems the Windows dialog allows this and it is
>> often used to fire up a printer maintenance application.
>
> Problem here is that in the current Unix (CUPS) printing environment
> drivers are totally server-side, no printer-specific executable is run
> on the clients. So the clients can be any architecture and OS running
> CUPS, the printer manufacturer/driver developer does not need to
> support all these platforms. Only possibility would be embedding some
> kind of scripts in the PPD files which would be executed on the
> clients, but the language would need to be one which is available on
> every client (required by the LSB). Or the plug-in app has to run on
> the server but with its window on the client (no problem for X, but it
> would need an ssh connection besides the CUPS connection).

Understood, but I don't think PPD embedded scripting is the way to go,
nor do I like the idea of displaying server-run applications on the
client much.  I know we're talking GNOME and KDE implementations at
the moment so we can assume X on the client, but that may not be the
case for embedded systems.  Besides, as you mentioned, the client will
need an SSH client and the server needs an X-forwarding SSH server and
then there is also the firewalling implications.

Reading the above over again, it seems that embedded scripting is the
only sane alternative if this kind of extended functionality is really
required in the dialog.

> [snip]
>>
>>  * extensions
>>
>> Personally, I'm no big fan of vendor extensions.  They are confusing
>> when you switch printers.  Rather than see a "Extensions" tag with all
>> vendor stuff dumped there, I think it would be better when vendors tag
>> their extensions with tags from the "default" tag set wherever this is
>> possible.  Whatever doesn't fit nicely should just *not* get tagged.
>> These untagged settings are probably only relevant for level three[8]
>> anyway.  They can use the fallback behaviour mentioned earlier by
>> Till[11].
>
> All options should be tagged, vendor-specific tags for vendor-specific
> options should be allowed. Fallbacks for untagged options should only
> serve for legacy PPD files. There should be no splitting of the dialog
> into standard and vendor-specific options. Vendor-specific options can
> be under standard tags (or vice-versa) if suitable. Keep in mind that
> one option can be under more than one tag.

Watch out.  Don't mix up vendor-specific OPTIONS and vendor-specific
TAGS.  Are you sure you want the latter too?  Vendor-specific options
should be tagged with the standard tags as much as possible.

>> Now application extensions are a different thing because you use these
>> to do specific kinds of things naturally.  You are not going to use an
>> image manipulation program like the GIMP to write an essay.  However,
>> chances are you use the same printer to get either onto paper (except
>> perhaps in the level three[8] use case).  What I'm trying to say is
>> that you switch applications much more purposefully than you switch
>> printers and because of that application extensions in the printing
>> dialog are OK.  Printer extensions should be discouraged, IMHO, but
>> not be made impossible altogether.
>
> For application-specific options we need a way to define them so that
> we can inject them into the dialog. What the app sends into the dialog
> and what it gets back from the dialog should not be platfor-specific
> executable code as long as we cannot gurantee that the application and
> the dialog are running on the same machine (can we require that?).

The application starts the dialog, so the application "injects" these
options into the dialog, IMHO.  The easiest approach would be to allow
applications to pass (a reference to) an application specific PPD file
snippet in addition to the printer's PPD file.

What would an application need to get back from the dialog?  I can
only think of things that the dialog itself should deal with.

Hope this helps,
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
