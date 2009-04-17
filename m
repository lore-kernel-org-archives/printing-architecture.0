Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2009 10:04:38 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379CD5@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CD1@EEAEX03.us.epson.net>
	<0D26240A-06BB-4952-B036-7B27A135E292@apple.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Common Dialogs for
	Printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org



> -----Original Message-----
> From: Michael R Sweet [mailto:msweet@apple.com]
> Sent: Friday, April 17, 2009 9:05 AM
> To: Petrie, Glen
> Cc: printing-architecture@lists.linux-foundation.org; printing-
> summit@lists.linux-foundation.org
> Subject: Re: [Printing-summit] Common Dialogs for Printing
>=20
> On Apr 17, 2009, at 8:15 AM, Petrie, Glen wrote:
> > All,
> >
> > I guess the addition of the actual preview to the CPD has triggered
> > more review of CPD from my perspective.
> >
> > I hope and believe the key object of this effort is focused on
> > "Common".  Thus, I now believe we may be trying to do too much in
> > the CPD and actually need three common dialogs; specifically, the
> > Common Preview Dialog (CRD), the Common Print Dialog (CPD), and the
> > Common Status/Monitoring Dialog (CSD).
>=20
> I really don't think this is necessary or useful in the long term.
> The whole idea of providing a common print dialog is to provide a
> common programming interface so that it is possible to unify key
> application UI between GUI toolkits and NOT to (re)write all of the
> printing system UI beyond the application.
>=20

What!  I hope the goal is a much more than just the APP-API's -- this is =
only a small part of the issue.  The principle issue is to provide the =
User with a common print experience no matter what application they are =
doing.  That includes preview, that includes print options; that =
includes status monitoring. Therefore, this is about having a set of =
common printing system UI's for all applications to call and User to =
use.

> Status monitoring exists separate from the application for a reason -
> you don't want multiple windows coming up, one for every job that is
> printed.  We already have monitoring applications/applets for both
> GNOME and KDE - there may be room for improvement, but that is another
> effort entirely.  Let's please keep the focus on the print dialog.

I never stated that status monitoring should be called by the =
application for the vary reason you state - but I want a common one. =
(Use what CUPS; maybe yes, maybe no)

I am focused on Printing from the User perspective; that includes =
preview, that includes print options; that includes status monitoring.

Yes, GNOME and KDE already have these; the issue is that GNOME and KDE =
have different app/applets for monitoring and the goal should be common =
printing dialogs for the User.

>=20
> > Actually, what we call print preview is really "preview of the page
> > setup" or "layout".  It is expected that printer will print the page
> > as shown in the "print preview" or "page preview".   So is this the
> > "print preview" or the applications "page preview"???
>=20
> Ideally applications should be providing a print or page view if they
> are page-oriented (that's the whole point of WYSIWYG, right?)
>=20

Even if they are page-oriented or not there should be a common =
print/page preview for all applications to use so that the user has a =
common experience on what they consider to be a print =
function/operation.


> The print dialog provides additional layout options - visualizing them
> improves usability, and seeing the actual content that is getting laid
> out is even better. On the desktop, preview time (especially for low-
> resolution previews that only exist to help the user visualize layout/
> finishing options) is insignificant for most documents, and for those
> that take a few seconds to render we can show some sort of progress/
> activity imagery.
>=20
> It doesn't matter that print preview might steal cycles from a video
> player and cause skipped frames - the user is printing something and
> is focused on that activity!

Not really, I (as a user and print driver developer) do not want or =
support printing ever being the focused activity.  Printing is and will =
always be a background function/operation.  I/Users want to submit a =
print job and go on to something else.  Why should printer interrupt =
anything else I am doing unless there is a problem!


>=20
> It doesn't matter if this won't work on an embedded device - embedded
> devices have much different UI requirements and capabilities and will
> not be using this print dialog!
>=20

I am not addressing embedded or mobile device at this time.  We have =
enough to do just getting a common print experience for desktop users.

> >
> > Background:
> > 	* We should learn from what other OS / Application have evolved
> > from or to.
>=20
> Windows has no preview and provides up to 6 layers of dialogs to set
> printer and layout options.
>=20
> Mac OS X has a standard built-in preview that is driven directly by
> Cocoa applications - we call the applications "draw" method on the
> view they have asked us to print to get  it. The preview is drawn in a
> separate thread so that the UI does not become unresponsive.
>=20

Again, from the User point-of-view, they see "printing" as preview, =
print options and status.  Whether that done in the application, OS, =
spooler, etc, it does not matter to them.

> > Print Preview Dialog:
> > n       As Johannes stated and I agree, I use Print Preview but only
> > about 20% of the time (maybe less); the other 80% I am not concerned
> > with how the content will appear printed or I already know.  The
> > key, however, is that when I want to print preview I am interested
> > in the details that really cannot be obtained from a thumbnail
> > representation of the content.
>=20
> You are not the user.

What!  I am illustrating a point by stating my experience as a User.  =
You missed the point of the paragraph.

>=20
> >   Example 1; I want to know what rows/columns of my spreadsheet will
> > fit on a page and will I be able to read the content once printed.
> > Example 2; I want to place an image at a specific place on the print
> > page.   The point is I will need to see the print content at full
> > scale (as rendered to the screen resolution as a representation of
> > the print resolution).
>=20
> IMHO, the application should be providing a mode so you can see this;
> Excel does this, Numbers does this, I think even OpenOffice does this
> (though I haven't used OpenOffice spreadsheet in a long time so I
> can't be sure...)
>=20
> In any case, on the Mac we have a button (the "PDF workflow" button)
> that allows you to get a large preview (in the Preview application, of
> course :)
>=20

Again, I am prompting a common preview dialog.  Why should each =
application write what is the same code for the same function but =
provide the user with a different experience for each application.=20

Mac may be POSIX but not open-source and not Linux.  Windows is not =
open-source. Both are developed by private companies and thus, a measure =
of control for system level functions like printing dialogs, status =
monitoring, etc.  Open-Source is a free to do what they want.  I believe =
we are proposing a common set of dialog to applications and users on an =
area (printing) that they really don't want to write code for nor =
support.=20


> > Print Dialog:
> > n       When I print, however, 95% of the time I want to see a
> > symbolic representation of the print options.  That is, which edge
> > is selected when duplex printing, where are the punch hole
> > locations, is the print BW or color, is the media in portrait or
> > landscape mode.  None of these and other print options require the
> > actual print content.
>=20
> You are not the user.
>=20

What!  I am illustrating a point by stating my experience as a User.  =
You missed the point of the paragraph.

> > o        In this case, I am not willing to wait for a thumbnail
> > representation of my actual print content because it adds no value
> > to setting print options.
>=20
> You are not the user.
>=20

What!  I am illustrating a point by stating my experience as a User.  =
You missed the point of the paragraph.

> > o        Having a consistent symbolic representation is critical
> > because it makes it easier to quickly identify what options I have
> > set or have not set.
>=20
> I have a hard time understanding what all of the "universal symbol"
> idiot lights on my car's dashboard mean. Do you expect a non-printing-
> professional to have a clue what a particular icon means WRT any
> particular printer option?

Yes non-printing-professional do have a clue.  I believe they already =
understand what the symbolic representations means; it is shown in most =
(windows) print dialogs today.  Remember, the thumbnail is just a visual =
aid to the actual print option the user has selected.  Thus, the option =
setting (button on or off) really tell the user what to expect.

>=20
> > n       Therefore, I really support using the previous version of
> > the CPD along with a symbolic representation of the print options.
>=20
> Symbolic representations only work by themselves when they are truly
> universal - skull-and-crossbones, stop sign, etc. There is a reason
> why applications have text and icons in toolbars - you need to learn
> the associations.
>=20

I am surprised that you have not seen the symbolic (iconic) =
representation of collated versus un-collated print of multiple copies; =
and the many other representation of print options that are in use =
today. =20

> A picture of what the printout will look like is the best symbolic
> representation we can provide.
>=20

What value does it add to see a thumbnail of a web page with 3/4" =
(scaled down in five pixels in the thumbnail) in setting number of =
pages, duplex, color/bw, landscape/portrait, n-up, etc.  And, if I could =
agree it has value; what is the cost in processing time.   I really =
don't believe user want printing to take a lot (any) processing time.


> > Status/Monitoring Dialog:
> > n       Some days I want to see this dialog and others days it is
> > very annoying; so careful consideration of this dialog is important.
> > o        I don't want see ink/toner levels every time I print.
> > o        I don't want see supply levels (waste, paper, trays) every
> > time I print.
> > n       What do I want to see?
> > o        I would like to have the option of three type of dialogs
> > =A7         1. A popup dialog box (option to auto close when =
complete)
> > =A7         2. A desktop iconic (with start, % complete, done)
> > =A7         3. An application bar (like the % indicator when
> > downloading a file)
> > o        First thing, and not really shown today, I want to know if
> > the printer really accepted my job
> > o        I want to know what page, of the total pages, is being
> > printed right now -- not just spooled.
> > o        I want to know what percentage of the current page has
> > actually been printed right now at the printer; not just spooled.
> > =A7         Yes, there could be a indicator that the print content =
has
> > been spooled - therefore, the user know that print content is ready
> > for physical printing.
> > o        I want to know when the job has completed.
> > n       What I do not want to see?
> > o        I do not want a dialog to popup with "Job Complete" that
> > would interrupt the work I may be doing to address an "OK done"
> > dialog.
>=20
> I believe you have described what is already available on all the
> popular distributions with their print status monitors.
>=20

Everything we are talking about in this email, including Print Dialogs, =
already exists; the point is to create a common everything so =
application and users have common experience.



> ____________________________________
> Michael R Sweet, Senior Printing System Engineer
>=20
>=20

