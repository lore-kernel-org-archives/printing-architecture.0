DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	bh=qXitZeIw/aqn844pVtFWb20YjF0O4/SDeHZyJ59q+bg=;
	b=B3Fgxo0MF9mxMRPmV8RvrA2p6hsu4rtSgCx5nMKM34AWWmIYRYba97kZvhfDC0QA7tbA3t8tBrP6Z0hsJmg/pvJeLM+Nuhv9lwOeVfIoB7WQq19vYNyBYtJt81CXIVpZ09YaLG8DLAVA1Km8YcetrVC0FQ8YFAOHS8W6Kttj22c=
Message-ID: <478EAF57.9090409@gmail.com>
Date: Thu, 17 Jan 2008 01:28:55 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <871w8iv0ky.fsf@geek.avasys.jp>
In-Reply-To: <871w8iv0ky.fsf@geek.avasys.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Printing-japan] Some thoughts on the *
	Print* Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Cc: Kurt Pfeifle <k1pfeifle@gmx.net>, Jan Muehlig <jan.muehlig@relevantive.de>, Peter Sikking <peter@mmiworks.net>, printing-architecture@lists.freestandards.org, printing-japan@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>

Olaf Meeuwissen wrote:
> I've brought this up at our meeting and I think the misunderstanding
> is mostly resolved now.  Just keep this is mind on both sides so that
> we don't get a repeat.
>

Great, thanks for doing this important step.

> 
>  * what's in a name
> 
> While going through all the information I noticed that everyone seems
> to be using a slightly different name for this printing dialog.  Hence
> my wildcarded "* Print* Dialog" in the subject.  I don't really mind
> but it would be nice (and maybe less confusing) to pick a single name.
> I think the name should make it very clear that the dialog is about
> _printing_ and *not* about the _printer_.  Only vendors care about the
> printer ;-)  Users care about what comes out of it.
> 
> For the record, I've seen:
> 
>    - Open Usability Printing Dialog
>    - Common Printing Dialog
>    - Linux Print Dialog
>

I use "Common Printing Dialog" as it is supposed to be a dialog to be 
used by all desktops and all applications. The latter, "Linux Print 
Dialog" is a bad choice, as the desktops and apps under consideration 
are also running under other operating systems, like Solaris for example.

> 
>  * dialog
> 
> I like the dialog and the reasoning behind it.  I definitely would
> like to see it in action with a bit of code behind the UI.  It's OK to
> hardcode the PPD info for demo purposes as far as I'm concerned.

It would be great if someone could do a quick-and-dirty coding for 
demoing the dialog on meetings, like the OpenPrinting Japan Meeting on 
March 11 and the Desktop Architects Meeting on April 8-10.

> The
> area that I would like to see in action most is that of conflict
> resolution.  I realize that level one[6] and level two[7] are not
> particularly likely to trigger conflicts.  Most conflicts will occur
> with level three[8] so it will be a bit of an exception.  However, I
> have the feeling that doing the conflict resolution correctly may have
> quite a big effect on part of the implementation.  Noticing a conflict
> is the easy part and is covered in Peter's "gray zone".  Backing out
> of it, either manually or automatically, can be a lot harder.  Note,
> the use of tags creates another means of triggering conflicts.  Also
> note that I really like the idea of tags ;-)
> 
> Another topic that I'd like to see in action is that for printing to a
> remote printer.  There are a number of things that you can do with
> local printers (parallel, USB, etc) that you can not do with a remote
> printer (via CUPS or otherwise).  Will local vs. remote differences
> impact the design/implementation?  That's something I'd like to find
> out early.  Are there things that could/should be solved elsewhere in
> the printing architecture to facilitate the dialog?
> 

Printing options do not differ depending on the connection type (USB, 
network, ...) or depending on being on the machine where the CUPS queue 
is defined or being on a machine where a remote CUPS queue is available 
via broadcasting. Independent of all of this you use the same PPD for a 
printer with the same capabilities (trays, color/bw, finishers, 
qualities, ...). So one and the same printer has the same capabilities 
and so should show the same options in the dialog, independent whether 
it is local or remote.

> I understand the current design is geared toward the general inkjet[9]
> and some of the design decisions may reflect that.  Is any work being
> done on a design for the high volume[10] case?  If so, I bet some of
> us would like to see.  If not, maybe it's time to start so you can get
> an idea of how much of the inkject ideas (and code?) can be shared.
> Maybe some of the high volume ideas and solution should flow back to
> the general inkjet case.
> 

The dialog is not inkjet-specific, the example in the blog is for an 
inkjet. The concept is suitable for all types of printers. The dialog 
will simply show the options as defined in the PPD file. For a high-end 
laser the quick presets on the left will simply be something like "Draft 
printout", "Letter/no special finishing", "Stapled document", "Booklet", 
... and not "Draft", "Normal", "Photo" and trhere will be tags like 
"Finishing", "Binding", "Packing", ...

> I was also going to ask about the PPD keyword for tags and how one
> would make a suitable PPD for the dialog but it seems that Till has
> already answered most of that on the printing-architecture list[11].
> 

Here we only need to do some fine tuning for things like encoding logos 
and icons in PPD files (one of the wishes of the printer manufacturers).

> Finally, I couldn't help but notice that Peter's blog mentions some
> fixed(?) dialog dimensions.  With respect to I18N needs, this may not
> be such a good idea.  Some languages are rather verbose and use long
> words (German for example ;-P), others need a lot less horizontal
> space (Chinese for example).  Also, while you may be able to reduce
> font size quite comfortably for Latin alphabets, for things like the
> CJK ideographs anything less than 10 points is next to unreadable on
> the screen.
> 

The fixed dimensions Peter is giving are most probably not intended to 
be standardized on. My suggestion is to do it like with dialogs defined 
with GLade, the adapt themselves to the size of the content elements, 
like text for example.

> Semi-related, how do all these nifty UI tricks work out in terms of
> accessibility?  Is this something that will be left to the various
> toolkits' accessibility support?
> 

Here we must really ask the OpenUsability people, but also the GUI 
toolkit gurus.

> 
>  * printer maintenance
> 
> This may be a bit off-topic but has any thought been given to the idea
> of kick-starting external applications from the printing dialog?  This
> functionality was mentioned during our discussion at the Printing
> Japan Meeting.  It seems the Windows dialog allows this and it is
> often used to fire up a printer maintenance application.
> 

Problem here is that in the current Unix (CUPS) printing environment 
drivers are totally server-side, no printer-specific executable is run 
on the clients. So the clients can be any architecture and OS running 
CUPS, the printer manufacturer/driver developer does not need to support 
all these platforms. Only possibility would be embedding some kind of 
scripts in the PPD files which would be executed on the clients, but the 
language would need to be one which is available on every client 
(required by the LSB). Or the plug-in app has to run on the server but 
with its window on the client (no problem for X, but it would need an 
ssh connection besides the CUPS connection).

>  # Sorry, I wouldn't know.  I haven't used Windows in ages.  It's a
>  # license thing ;-)
> 
> Personally, I don't think _printer_ maintenance should be incorporated
> in a _printing_ dialog.  It's a system's activity and not a user's
> activity.  But, as with today's single user configurations being the
> norm rather than the exception, there is something to say for this.
> Of course, one could think of a printing or user's activity that would
> warrant such functionality.  I can't think of any right now, though.
> 
> While on the topic of hooks into the dialog, will it be setup solely
> through what is in the PPD or will there also be a programmatic
> extension API?  Something like a plug-in architecture for example,
> where the plug-in name may be set in the PPD file but additional
> functionality is provided by the plug-in.  Of course, the plug-in will
> be in a perfect position to completely ruin the beauty of the dialog
> with stuff that the vendor thinks is good for you in ways the vendor
> thinks they ought to look but that is another issue ;-)
> 

Keep in mind that on clients nothing printer-specific should be required 
to be installed, see above.

>  # Programmatic extensions for remote printers will be fun!  Not.
> 
> 
>  * extensions
> 
> Personally, I'm no big fan of vendor extensions.  They are confusing
> when you switch printers.  Rather than see a "Extensions" tag with all
> vendor stuff dumped there, I think it would be better when vendors tag
> their extensions with tags from the "default" tag set wherever this is
> possible.  Whatever doesn't fit nicely should just *not* get tagged.
> These untagged settings are probably only relevant for level three[8]
> anyway.  They can use the fallback behaviour mentioned earlier by
> Till[11].
> 

All options should be tagged, vendor-specific tags for vendor-specific 
options should be allowed. Fallbacks for untagged options should only 
serve for legacy PPD files. There should be no splitting of the dialog 
into standard and vendor-specific options. Vendor-specific options can 
be under standard tags (or vice-versa) if suitable. Keep in mind that 
one option can be under more than one tag.

> Now application extensions are a different thing because you use these
> to do specific kinds of things naturally.  You are not going to use an
> image manipulation program like the GIMP to write an essay.  However,
> chances are you use the same printer to get either onto paper (except
> perhaps in the level three[8] use case).  What I'm trying to say is
> that you switch applications much more purposefully than you switch
> printers and because of that application extensions in the printing
> dialog are OK.  Printer extensions should be discouraged, IMHO, but
> not be made impossible altogether.

For application-specific options we need a way to define them so that we 
can inject them into the dialog. What the app sends into the dialog and 
what it gets back from the dialog should not be platfor-specific 
executable code as long as we cannot gurantee that the application and 
the dialog are running on the same machine (can we require that?).

    Till
