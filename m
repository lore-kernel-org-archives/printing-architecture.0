From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Wed, 16 Jan 2008 13:47:09 +0900
Message-ID: <871w8iv0ky.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: [Printing-architecture] Some thoughts on the * Print* Dialog
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
Cc: Kurt Pfeifle <k1pfeifle@gmx.net>, Jan Muehlig <jan.muehlig@relevantive.de>, Peter Sikking <peter@mmiworks.net>, printing-architecture@lists.freestandards.org, Celeste Lyn Paul <celeste@kde.org>

I left the 2008-01-10 Printing Japan Meeting with a little bit of home
work.  This is the result.

 # I Cc:d the OpenUsability people individually for lack of knowledge
 # of a mailing list I could use instead.

To get my bearings again, I've read Peter's ever-growing blog[1] head
to toe and the bulk of related communications on the printing-japan[2]
and printing-architecture[3] lists of the last two months or so.

 # The archive for printing-japan[2] is pretty much unusable for posts
 # in Japanese (or posts by Glen) at the moment ... :-(

 | Disclaimer: I'm a scanner guy, I get printing backwards ;-)


 * waterfall <--> tracer bullet[4]

The thread started by Mr. Sekiguchi[5] gave me the impression that the
feedback/spec "impasse" may be due to a misunderstanding of the styles
of development used by both sides.  My (limited) experience is that
there is still quite of bit of "spec first" attitude towards software
projects in Japan. The openUsability approach is much more agile.  It
wants much more frequent feedback based on much more vaguely defined
concepts.

I've brought this up at our meeting and I think the misunderstanding
is mostly resolved now.  Just keep this is mind on both sides so that
we don't get a repeat.


 * what's in a name

While going through all the information I noticed that everyone seems
to be using a slightly different name for this printing dialog.  Hence
my wildcarded "* Print* Dialog" in the subject.  I don't really mind
but it would be nice (and maybe less confusing) to pick a single name.
I think the name should make it very clear that the dialog is about
_printing_ and *not* about the _printer_.  Only vendors care about the
printer ;-)  Users care about what comes out of it.

For the record, I've seen:

   - Open Usability Printing Dialog
   - Common Printing Dialog
   - Linux Print Dialog


 * dialog

I like the dialog and the reasoning behind it.  I definitely would
like to see it in action with a bit of code behind the UI.  It's OK to
hardcode the PPD info for demo purposes as far as I'm concerned.  The
area that I would like to see in action most is that of conflict
resolution.  I realize that level one[6] and level two[7] are not
particularly likely to trigger conflicts.  Most conflicts will occur
with level three[8] so it will be a bit of an exception.  However, I
have the feeling that doing the conflict resolution correctly may have
quite a big effect on part of the implementation.  Noticing a conflict
is the easy part and is covered in Peter's "gray zone".  Backing out
of it, either manually or automatically, can be a lot harder.  Note,
the use of tags creates another means of triggering conflicts.  Also
note that I really like the idea of tags ;-)

Another topic that I'd like to see in action is that for printing to a
remote printer.  There are a number of things that you can do with
local printers (parallel, USB, etc) that you can not do with a remote
printer (via CUPS or otherwise).  Will local vs. remote differences
impact the design/implementation?  That's something I'd like to find
out early.  Are there things that could/should be solved elsewhere in
the printing architecture to facilitate the dialog?

I understand the current design is geared toward the general inkjet[9]
and some of the design decisions may reflect that.  Is any work being
done on a design for the high volume[10] case?  If so, I bet some of
us would like to see.  If not, maybe it's time to start so you can get
an idea of how much of the inkject ideas (and code?) can be shared.
Maybe some of the high volume ideas and solution should flow back to
the general inkjet case.

I was also going to ask about the PPD keyword for tags and how one
would make a suitable PPD for the dialog but it seems that Till has
already answered most of that on the printing-architecture list[11].

Finally, I couldn't help but notice that Peter's blog mentions some
fixed(?) dialog dimensions.  With respect to I18N needs, this may not
be such a good idea.  Some languages are rather verbose and use long
words (German for example ;-P), others need a lot less horizontal
space (Chinese for example).  Also, while you may be able to reduce
font size quite comfortably for Latin alphabets, for things like the
CJK ideographs anything less than 10 points is next to unreadable on
the screen.

Semi-related, how do all these nifty UI tricks work out in terms of
accessibility?  Is this something that will be left to the various
toolkits' accessibility support?


 * printer maintenance

This may be a bit off-topic but has any thought been given to the idea
of kick-starting external applications from the printing dialog?  This
functionality was mentioned during our discussion at the Printing
Japan Meeting.  It seems the Windows dialog allows this and it is
often used to fire up a printer maintenance application.

 # Sorry, I wouldn't know.  I haven't used Windows in ages.  It's a
 # license thing ;-)

Personally, I don't think _printer_ maintenance should be incorporated
in a _printing_ dialog.  It's a system's activity and not a user's
activity.  But, as with today's single user configurations being the
norm rather than the exception, there is something to say for this.
Of course, one could think of a printing or user's activity that would
warrant such functionality.  I can't think of any right now, though.

While on the topic of hooks into the dialog, will it be setup solely
through what is in the PPD or will there also be a programmatic
extension API?  Something like a plug-in architecture for example,
where the plug-in name may be set in the PPD file but additional
functionality is provided by the plug-in.  Of course, the plug-in will
be in a perfect position to completely ruin the beauty of the dialog
with stuff that the vendor thinks is good for you in ways the vendor
thinks they ought to look but that is another issue ;-)

 # Programmatic extensions for remote printers will be fun!  Not.


 * extensions

Personally, I'm no big fan of vendor extensions.  They are confusing
when you switch printers.  Rather than see a "Extensions" tag with all
vendor stuff dumped there, I think it would be better when vendors tag
their extensions with tags from the "default" tag set wherever this is
possible.  Whatever doesn't fit nicely should just *not* get tagged.
These untagged settings are probably only relevant for level three[8]
anyway.  They can use the fallback behaviour mentioned earlier by
Till[11].

Now application extensions are a different thing because you use these
to do specific kinds of things naturally.  You are not going to use an
image manipulation program like the GIMP to write an essay.  However,
chances are you use the same printer to get either onto paper (except
perhaps in the level three[8] use case).  What I'm trying to say is
that you switch applications much more purposefully than you switch
printers and because of that application extensions in the printing
dialog are OK.  Printer extensions should be discouraged, IMHO, but
not be made impossible altogether.


Just my two yen.


References:
  [1] http://www.mmiworks.net/eng/publications/labels/openPrinting.html
  [2] https://lists.linux-foundation.org/mailman/listinfo/printing-japan
  [3] https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
  [4] http://www.artima.com/intv/tracer.html
  [5] https://lists.linux-foundation.org/pipermail/printing-japan/2007-December/013774.html
  [6] http://www.mmiworks.net/eng/publications/labels/openPrinting.html#level1
  [7] http://www.mmiworks.net/eng/publications/labels/openPrinting.html#level2
  [8] http://www.mmiworks.net/eng/publications/labels/openPrinting.html#level3
  [9] http://wiki.openusability.org/printing/index.php/General_inkjet
 [10] http://wiki.openusability.org/printing/index.php/High_volume
 [11] https://lists.linux-foundation.org/pipermail/printing-architecture/2008/001245.html

Hope this helps,
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
