Message-ID: <4DD68DAC.2020508@gmail.com>
Date: Fri, 20 May 2011 17:50:04 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F805D70@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F805D70@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Note that if I write "printing system" sometimes, it is the same as 
"print manager".

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

What do you mean with this? Hardware communication module (like CUPS 
backend, port monitor, ...)? Management software for printers in a network?

>    3. The printers
>    4. The printer capability data base (think Foomatic)
>    5. (The User!!!!)
>
>    1. Should the CPD (an instance) be a direct connection between the
>       user and an App/Desktop/OS.
>    2. Should the CPD directly connect to applications and then, the
>       applications to a Print Manager.
>    3. Should the App/Desktop/OS have a direct connection to a “Print
>       Manager”, the “Print Manager” directly connect to the CPD and the
>       CPD connects to the user.
>
> I believe (please correct me if wrong) that (2) is the current model or
> approach for the CPD.
>

(2) is actually the model we have planned to use. The user calls the 
print function of the application and the application calls the CPD 
then. The application sends info about application-specific options and 
the data to be printed. After that the dialog opens and the user selects 
his desired setting. This can cause the dislog to request the print data 
from the application again, if this is needed for correct display of the 
preview or for the final printing (especially after changing an 
application-specific option). When the user clicks "Print" the settings 
and the data are sent to the printing system.

The preview in the dialog and the support for application-specific 
options need a lot of communication between the application and the 
dialog, so that print data gets re-rendered and resent whenever needed 
and also to allow to request only the pages from the app which are 
currently displayed in the preview (and not a full 100-page document on 
each click on an option).

In addition, the dialog itself is a desktop application operated by the 
user. So it should run with the rights of the user and have access to 
the user's files. So it is easiest when it get called by the application 
(or desktop) and not by the printing system. The printing system runs as 
root or as a system user and not as the calling user, and it can even 
run on another computer.

Therefore for me the easiest to implement architecture is (2).

> I am in favor of (3).
>

(3) makes the interface for the application simpler, by simply letting 
the application send the data to the printing system and leave all the 
rest being done by the printing system, but here problems would occur 
with re-requesting print data from the application, running the dialog 
with the rights and on the machine of the calling user, ...


>    1. Do we want the CPD to know if a printer is on/off line
>          1. Status in general, out-of-ink, out-of-paper, busy
>

Would be nice, makes it easier to select the correct printer, or the 
user knows that he has to call an intern to reload paper and/or ink 
before he gets his job printed.

> i.Interesting idea of showing print load in the print dialog; that is,
> if a job is submitted, how long will it take to get printed.
>

Would be also great, at least something like

    ColorLaser (Printing, 30 jobs)
    PhotoPrinter (Idle)
    LargeFormat (Out of paper, 21 jobs)
    ....

In the list of available printers. Then you know that your quick 
one-page boarding pass will come out fastest on PhotoPrinter and the 
other two let you miss your flight.

>    2. Do we want the CPD to know how to get capabilities data
>          1. Don’t think vendors will modify (all) PPD to support CPD!
>          2. Is it a vendor specific module
>          3. Is it IPP
>          4. Is it foomatics
>          5. Is it a vendor web service/site

The CPD needs to know the printer's capabilities to be able to display 
user-settable printer-specific options, and also some basic 
capabilities, like color/bw so that the user sees immediately by the 
preview that his intended color printout will get sent to a bw printer. 
The CPD should obtain this info from the printing system, using the 
methods which the printing system provides. This way it is assured that 
the info corresponds to the actually used print queue, for example if 
the PPD got tweaked by the sysadmin, the printer is on a remote server 
with another distro version than the client is running, ...

>    3. Can a lot of responsibility be pushed to the Print Manager
>          1. One big item is internationalization.
>
> i.With the goal of “common”, it is expected that the print dialog
> strings will be well defined and, thus, internationalization could be
> managed in one place. No reason the CPD could not do it, but the print
> manager may need the same information.
>

The print manager currently supplies translations through 
internationalized PPD files and it could do even more by adding data 
(translations for languages not included in the PPD) to the output when 
a client requests a PPD file or data from it. The local desktop could 
also supply translations, so that a user can enter a network with his 
laptop using a desktop language which is not installed on the print 
server. So both print manager and desktop can supply translations and it 
work well with a dialog called by the application.

>    4. What if the CPD is a web service (think cloud); it would be easier
>       to have the Print Manager worry about connectivity to the CPD
>          1. What if the Print manager is a web service (think cloud) !!!

If the print manager is a web service, it is like a remote CUPS server. 
The local CPD polls capabilities/PPD via IPP and sends back a job with 
the user's settings.



>    5. In this model, the Print Manager can customize the CPD according
>       to the User’s Rights (color/no-color, doc length < 50/ doc length
>        > 50, etc)
>          1. If the user (via the CPD) never sees an option they have no
>             rights for; then it is easier to control.

The print manager could also send a customized PPD/option list depending 
on the requesting user, so that the application's/desktop's printing 
dialog only shows the printers and choices the user is allowed to use.

>    6. Are some printers only available at curtain times?
>          1. Again, the Print Manager can only enumerate the printers
>             that are available at the time.

Yes, and then send only the list of currently active printers to the 
application's/desktop's printing dialog when it is opened.

    Till
