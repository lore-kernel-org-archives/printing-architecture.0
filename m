Message-ID: <4DDA84BF.606@gmail.com>
Date: Mon, 23 May 2011 18:01:03 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F805D70@EEAEX03.us.epson.net>
	<4DD68DAC.2020508@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F805D71@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F805D71@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 05/20/2011 06:40 PM, Petrie, Glen wrote:
> See my comment embedded in the note.
>
> Note that if I write "printing system" sometimes, it is the same as
> "print manager".
>
> [gwp] I understand but for clarification later, to me a "printing
> system" consists of a print-dialog, a print-manager and a printer
> manager (and printers).

OK.

>
> (2) is actually the model we have planned to use. ...
>
> [gwp] I was hoping we could have a dialog about which model.  Model 3
> can include the print manager establishing a "direct" connect between
> the CPD and the App "when necessary".
>

I mean that this is the model originally planned to use in a Linux 
desktop environment, mostly because this is the way how CUPS printing 
works. In other environments or to get a more universally usable 
printing system this is not necessarily the best solution.

> The preview in the dialog and the support for application-specific
> options need a lot of communication between the application and the
> dialog, so that print data gets re-rendered and resent whenever needed
> and also to allow to request only the pages from the app which are
> currently displayed in the preview (and not a full 100-page document on
> each click on an option).
>
> [gwp] Not all solution will support "preview" and is solvable by having
> the print manager establish a "direct" connect between the CPD and the
> App "when necessary".
>

OK, the bi-directional communication with the app could be done by the 
print manager. In general the print manager could provide a D-Bus 
interface for applications which need a printing dialog and an IPP 
interface for legacy apps, jobs from remote clients, ... Jobs coming via 
IPP are handled like CUPS typically handles jobs, jobs coming via D-Bus 
trigger the opening of a printing dialog and bi-directional 
communication with the application starts while the user does changes in 
the dialog.

> In addition, the dialog itself is a desktop application operated by the
> user. So it should run with the rights of the user and have access to
> the user's files. So it is easiest when it get called by the application
>
> (or desktop) and not by the printing system. The printing system runs as
>
> root or as a system user and not as the calling user, and it can even
> run on another computer.
>
> [gwp] If the CPD is a desktop application, it will have so many
> capabilities that it will be print manager!!!

A desktop application does not necessarily have a lot of capabilities. A 
program is a desktop application as soon as it is capable of displaying 
an interactive interface (a window for example) on the user's desktop. 
The simplest form of a desktop application would be a window displaying 
"Hello World!" with a "Close" button.

> [gwp] Sorry I don't understand the point about running the dialog under
> the user versus root.  Is CUPS run as root or user?

CUPS is a system daemon which is started during the boot process. The 
owner of the process is root. Especially this is needed so that CUPS can 
open privileged ports, like 631 and 443. Filtering the print job 
(converting PS or PDF to the printer's language) and sending the data 
out to the printer (CUPS backends) is done as an unprivileged system 
user ("lp"). Both root and "lp" cannot generally access the home 
directory of the user who has sent the print job (note that the user can 
have an NFS-mounted home directory) and also not to the user's X 
display. This means that if the printing dialog runs as root or "lp", it 
is rather restricted: it cannot access the user's desktop preferences, 
cannot save settings in the user's home directory, needs special methods 
to be able to display a window on the user's desktop.

If the print manager has always a daemon on the local machine (machine 
from where the user sends the print job) running, the local daemon could 
run a subprocess running as the user who has sent the job and this 
process could pop up the printing dialog, but in an environment where 
applications send jobs directly to a remote print manager (like when 
using CUPS with a remote server set in client.conf) this will not work.

>
> Therefore for me the easiest to implement architecture is (2).
>
> [gwp] Sorry, but I am not looking for easiest model; I am looking for a
> long term supportable solution for many platforms, OS's, environments
> and use-cases.  [The easiest is model 1!]
>

OK. I only wanted to tell where there are possible problems with model 
(3). In general, it is a good idea to let the printing dialog being 
supplied by the print manager.

>> I am in favor of (3).
>>
>
> (3) makes the interface for the application simpler, by simply letting
> the application send the data to the printing system and leave all the
> rest being done by the printing system, but here problems would occur
> with re-requesting print data from the application, running the dialog
> with the rights and on the machine of the calling user, ...
>
> [gwp] Making the interface to the application simpler is a big plus.
> [gwp] Beyond Cloud print management as a web service; do you really use
> another machine to do your "printing system" stuff?

There are users who have a CUPS daemon (the print manager on Linux 
systems) only running on the print server (the machine where the print 
queue is set up). The clients only have a pointer to this server 
(client.conf file in case of CUPS) and applications send jobs directly 
to the server's CUPS daemon.

>
>
>>     1. Do we want the CPD to know if a printer is on/off line
>>           1. Status in general, out-of-ink, out-of-paper, busy
>>
>
> Would be nice, makes it easier to select the correct printer, or the
> user knows that he has to call an intern to reload paper and/or ink
> before he gets his job printed.
>
> [gwp] It is nice and not "managed" by the CPD

It simply depends on what info the print system sends to the CPD when 
the CPD asks for the list of available printers. Then the dialog simply 
displays the info.

>> i.Interesting idea of showing print load in the print dialog; that is,
>> if a job is submitted, how long will it take to get printed.
>>
>
> Would be also great, at least something like
>
>      ColorLaser (Printing, 30 jobs)
>      PhotoPrinter (Idle)
>      LargeFormat (Out of paper, 21 jobs)
>      ....
> In the list of available printers. Then you know that your quick
> one-page boarding pass will come out fastest on PhotoPrinter and the
> other two let you miss your flight.
>
> [gwp] It is nice and not "managed" by the CPD.
> [gwp] For a mobile I was thinking it could even be colored dots or
> background coloring of iconics (green, yellow, red)
>

The way how to display printer status can depend on the device. A PC 
which has enough on its screen could present the information like in my 
example, as mobile phone could use colors like you suggest.


>>     2. Do we want the CPD to know how to get capabilities data
>>           1. Don't think vendors will modify (all) PPD to support CPD!
>>           2. Is it a vendor specific module
>>           3. Is it IPP
>>           4. Is it foomatics
>>           5. Is it a vendor web service/site
>
> The CPD needs to know the printer's capabilities to be able to display
> user-settable printer-specific options, and also some basic
> capabilities, like color/bw so that the user sees immediately by the
> preview that his intended color printout will get sent to a bw printer.
>
> [gwp] Interesting case; yes, the CPD needs to know whether to display
> the preview in color/bw but not have to "know" why.  Is it a bw printer,
> a bw document, or did the user select bw print mode; the CPD does not
> know which, only that the preview should be or is shown in bw.   An in
> the case of a bw document to a color printer, the user can not tell from
> the preview that it is a bw printer!
>

One can let the print manager easily send basic capability information 
about the printers along with the list of available printers. So the 
user could see whether a printer is BW or color when he selects the 
printer to print on.

>
> The CPD should obtain this info from the printing system, using the
> methods which the printing system provides. This way it is assured that
> the info corresponds to the actually used print queue, for example if
> the PPD got tweaked by the sysadmin, the printer is on a remote server
> with another distro version than the client is running, ...
>
> [gwp]  Actually, I am proposing that the print-manager "knows" about the
> printer capabilities and communicates that information is such a way
> that the CPD does not have to know!  I have not stated how the
> print-manager knows. More details on both  later.
>

The CPD simply should get basic capabilities (like BW/color, status, 
...) and user-settable options of all available printers from the print 
manager, independent how this information is managed by the print 
manager (PPD files, IPP, ...).

>
> The print manager currently supplies translations through
> internationalized PPD files and it could do even more by adding data
> (translations for languages not included in the PPD) to the output when
> a client requests a PPD file or data from it. The local desktop could
> also supply translations, so that a user can enter a network with his
> laptop using a desktop language which is not installed on the print
> server. So both print manager and desktop can supply translations and it
>
> work well with a dialog called by the application.
>
> [gwp]  Modifying PPD files for CPD is a "big ask" from print vendors.  I
> heard in a PWG meeting, the idea of phasing out PPD's!!!  The other
> locations for translation are great if they support the set of keywords
> need for printing.
>

If we have a standardized set of keywords, one could simply add this 
list to the list of translatable strings in the desktops and they have a 
lot of volunteer translators so that one gets quickly translations in 
40+ languages. Problem are the strings specific to a certain printer 
model. Here the translations must be somehow supplied by the manufacturer.

> If the print manager is a web service, it is like a remote CUPS server.
> The local CPD polls capabilities/PPD via IPP and sends back a job with
> the user's settings.
>
> [gwp] The identification of what Cloud Print even is or might be, is
> still on-going and may or may not have any association with CUPS or
> Linux.  Does Google Cloud Print fit your architecture for a CPD
> solution?
>


If one has a cloud print manager which gets all important info of the 
user's local printer (should be the case if the local printer is IPP 
everywhere) it would be no problem for a cloud (web) application to 
display the CPD in the user's web browser.

> The print manager could also send a customized PPD/option list depending
>
> on the requesting user, so that the application's/desktop's printing
> dialog only shows the printers and choices the user is allowed to use.
>
> [gwp] Again, PPD may be out.  Again, you are assigning more and more
> "print manager" functionality to the CPD.
>
>>     6. Are some printers only available at curtain times?
>>           1. Again, the Print Manager can only enumerate the printers
>>              that are available at the time.
>
> Yes, and then send only the list of currently active printers to the
> application's/desktop's printing dialog when it is opened.
>
> [gwp]  Who sends the current list; the "print manager".

Yes, the print manager sends the list of printers with its basic 
capabilities and status to the CPD, as soon as the user selects a 
printer, the user-settable options of it are sent to the CPD by the 
print manager. The print manager is always informed about who the 
requesting user is, so that the lists get adapted to what the user is 
allowed to.

    Till

