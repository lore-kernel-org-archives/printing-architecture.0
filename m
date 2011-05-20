Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 20 May 2011 09:40:37 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F805D71@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F805D70@EEAEX03.us.epson.net>
	<4DD68DAC.2020508@gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] CPD and the rest of the print system
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

See my comment embedded in the note.

Note that if I write "printing system" sometimes, it is the same as=20
"print manager".

[gwp] I understand but for clarification later, to me a "printing
system" consists of a print-dialog, a print-manager and a printer
manager (and printers).

On 05/19/2011 11:34 PM, Petrie, Glen wrote:
> Hi,
>
> I want to start a dialog on the CPD and it interactions (or
> dependencies) with other print system components.
>
> My first question is how to model the CPD in the systems.
>
> What are the other print components to consider:
>
>    1. The Print Manager (think CUPS)
>          1. Can be a very, very thin manager for mobile devices
>    2. The Printer Manager (this there really such a thing today).
>          1. Again, can be a very, very thin manager for mobile devices

What do you mean with this? Hardware communication module (like CUPS=20
backend, port monitor, ...)? Management software for printers in a
network?

[gwp] Similar (maybe) to CUPS but not CUPS.  Communications I have had
with mobile solution providers is that CUPS is way to big; but striped
down or lean version of a print manager is needed.

>    3. The printers
>    4. The printer capability data base (think Foomatic)
>    5. (The User!!!!)
>
>    1. Should the CPD (an instance) be a direct connection between the
>       user and an App/Desktop/OS.
>    2. Should the CPD directly connect to applications and then, the
>       applications to a Print Manager.
>    3. Should the App/Desktop/OS have a direct connection to a "Print
>       Manager", the "Print Manager" directly connect to the CPD and
the
>       CPD connects to the user.
>
> I believe (please correct me if wrong) that (2) is the current model
or
> approach for the CPD.
>

(2) is actually the model we have planned to use. The user calls the=20
print function of the application and the application calls the CPD=20
then. The application sends info about application-specific options and=20
the data to be printed. After that the dialog opens and the user selects

his desired setting. This can cause the dislog to request the print data

from the application again, if this is needed for correct display of the

preview or for the final printing (especially after changing an=20
application-specific option). When the user clicks "Print" the settings=20
and the data are sent to the printing system.

[gwp] I was hoping we could have a dialog about which model.  Model 3
can include the print manager establishing a "direct" connect between
the CPD and the App "when necessary".

The preview in the dialog and the support for application-specific=20
options need a lot of communication between the application and the=20
dialog, so that print data gets re-rendered and resent whenever needed=20
and also to allow to request only the pages from the app which are=20
currently displayed in the preview (and not a full 100-page document on=20
each click on an option).

[gwp] Not all solution will support "preview" and is solvable by having
the print manager establish a "direct" connect between the CPD and the
App "when necessary".

In addition, the dialog itself is a desktop application operated by the=20
user. So it should run with the rights of the user and have access to=20
the user's files. So it is easiest when it get called by the application

(or desktop) and not by the printing system. The printing system runs as

root or as a system user and not as the calling user, and it can even=20
run on another computer.

[gwp] If the CPD is a desktop application, it will have so many
capabilities that it will be print manager!!! =20
[gwp] Sorry I don't understand the point about running the dialog under
the user versus root.  Is CUPS run as root or user?

Therefore for me the easiest to implement architecture is (2).

[gwp] Sorry, but I am not looking for easiest model; I am looking for a
long term supportable solution for many platforms, OS's, environments
and use-cases.  [The easiest is model 1!]

> I am in favor of (3).
>

(3) makes the interface for the application simpler, by simply letting=20
the application send the data to the printing system and leave all the=20
rest being done by the printing system, but here problems would occur=20
with re-requesting print data from the application, running the dialog=20
with the rights and on the machine of the calling user, ...

[gwp] Making the interface to the application simpler is a big plus.=20
[gwp] Beyond Cloud print management as a web service; do you really use
another machine to do your "printing system" stuff?=20


>    1. Do we want the CPD to know if a printer is on/off line
>          1. Status in general, out-of-ink, out-of-paper, busy
>

Would be nice, makes it easier to select the correct printer, or the=20
user knows that he has to call an intern to reload paper and/or ink=20
before he gets his job printed.

[gwp] It is nice and not "managed" by the CPD

> i.Interesting idea of showing print load in the print dialog; that is,
> if a job is submitted, how long will it take to get printed.
>

Would be also great, at least something like

    ColorLaser (Printing, 30 jobs)
    PhotoPrinter (Idle)
    LargeFormat (Out of paper, 21 jobs)
    ....
In the list of available printers. Then you know that your quick=20
one-page boarding pass will come out fastest on PhotoPrinter and the=20
other two let you miss your flight.

[gwp] It is nice and not "managed" by the CPD. =20
[gwp] For a mobile I was thinking it could even be colored dots or
background coloring of iconics (green, yellow, red)

>    2. Do we want the CPD to know how to get capabilities data
>          1. Don't think vendors will modify (all) PPD to support CPD!
>          2. Is it a vendor specific module
>          3. Is it IPP
>          4. Is it foomatics
>          5. Is it a vendor web service/site

The CPD needs to know the printer's capabilities to be able to display=20
user-settable printer-specific options, and also some basic=20
capabilities, like color/bw so that the user sees immediately by the=20
preview that his intended color printout will get sent to a bw printer.=20

[gwp] Interesting case; yes, the CPD needs to know whether to display
the preview in color/bw but not have to "know" why.  Is it a bw printer,
a bw document, or did the user select bw print mode; the CPD does not
know which, only that the preview should be or is shown in bw.   An in
the case of a bw document to a color printer, the user can not tell from
the preview that it is a bw printer!


The CPD should obtain this info from the printing system, using the=20
methods which the printing system provides. This way it is assured that=20
the info corresponds to the actually used print queue, for example if=20
the PPD got tweaked by the sysadmin, the printer is on a remote server=20
with another distro version than the client is running, ...

[gwp]  Actually, I am proposing that the print-manager "knows" about the
printer capabilities and communicates that information is such a way
that the CPD does not have to know!  I have not stated how the
print-manager knows. More details on both  later.


>    3. Can a lot of responsibility be pushed to the Print Manager
>          1. One big item is internationalization.
>
> i.With the goal of "common", it is expected that the print dialog
> strings will be well defined and, thus, internationalization could be
> managed in one place. No reason the CPD could not do it, but the print
> manager may need the same information.
>

The print manager currently supplies translations through=20
internationalized PPD files and it could do even more by adding data=20
(translations for languages not included in the PPD) to the output when=20
a client requests a PPD file or data from it. The local desktop could=20
also supply translations, so that a user can enter a network with his=20
laptop using a desktop language which is not installed on the print=20
server. So both print manager and desktop can supply translations and it

work well with a dialog called by the application.

[gwp]  Modifying PPD files for CPD is a "big ask" from print vendors.  I
heard in a PWG meeting, the idea of phasing out PPD's!!!  The other
locations for translation are great if they support the set of keywords
need for printing.


>    4. What if the CPD is a web service (think cloud); it would be
easier
>       to have the Print Manager worry about connectivity to the CPD
>          1. What if the Print manager is a web service (think cloud)
!!!

If the print manager is a web service, it is like a remote CUPS server.=20
The local CPD polls capabilities/PPD via IPP and sends back a job with=20
the user's settings.

[gwp] The identification of what Cloud Print even is or might be, is
still on-going and may or may not have any association with CUPS or
Linux.  Does Google Cloud Print fit your architecture for a CPD
solution?


>    5. In this model, the Print Manager can customize the CPD according
>       to the User's Rights (color/no-color, doc length < 50/ doc
length
>        > 50, etc)
>          1. If the user (via the CPD) never sees an option they have
no
>             rights for; then it is easier to control.

The print manager could also send a customized PPD/option list depending

on the requesting user, so that the application's/desktop's printing=20
dialog only shows the printers and choices the user is allowed to use.

[gwp] Again, PPD may be out.  Again, you are assigning more and more
"print manager" functionality to the CPD.

>    6. Are some printers only available at curtain times?
>          1. Again, the Print Manager can only enumerate the printers
>             that are available at the time.

Yes, and then send only the list of currently active printers to the=20
application's/desktop's printing dialog when it is opened.

[gwp]  Who sends the current list; the "print manager".

    Till
