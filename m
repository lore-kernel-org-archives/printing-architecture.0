Message-ID: <4AAA050A.5070602@gmail.com>
Date: Fri, 11 Sep 2009 10:06:34 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <003801ca27d5$5481a3e0$9e72150a@nsl.ad.nec.co.jp>	<20090831082034.0AA7.E0F122DE@canon.co.jp>
	<4AA9EC87.2050502@fujixerox.co.jp>
In-Reply-To: <4AA9EC87.2050502@fujixerox.co.jp>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] [Printing-japan] <Translation>
 OpenPrinting Japan Aug. 2009 meeting minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>, printing-japan@lists.linux-foundation.org, Open Printing <printing-architecture@lists.linux-foundation.org>, Lars Uebernickel <larsuebernickel@gmx.de>, Alexander Wauck <alex.wauck@gmail.com>, Per Hermansson <hermansson.per@bredband.net>

Mihara-san, thank you for your translation, but can you directly CC it 
to the printing-architecture mailing list in the future?

Comments inline.

Osamu MIHARA wrote:
> ==========
> Date/Place
> ==========
> August 28, 2009 14:30-15:50 @ The Linux Foundation Japan Meeting Room
> 
> ==========
> Attendee
> ==========
> Kunai (TLF), Olaf (Aasys), Otani (BBR), Kanjo (BBR), Chigusa (Ricoh),
> Toratani (Canon), Mihara (Fuji Xerox), Miyata (Canon), Saitou (NEC Soft)
> 
> ==========
> Agenda
> ==========
> - CPD Status Update Review and Demo
> - Feedback to next OP US/EU/JP phone meeting
> - Vector Driver Spec 1.0 Approval process
> 
> ==========
> CPD
> ==========
> - Saito-san makes a CPD demo from latest (?) source.  (may need to
> confirm if it is really a latest)
> 
>  　　http://bzr.openprinting.org/misc/common-printing-dialog
>

This is the latest source. Both students have uploaded their changes 
regularly to there.

> OPINIONS/PROBLEMS/COMMENTS/QUESTIONS:::
> 
> - Many items are put into a place togather.  Some items may be hidden
> and need to scroll to exposure them. (Mihara)
>

The flow of option widgets into the right part of the dialog and also 
into the expansion of at the bottom (if the right part gets full) is one 
of the few things which did not get finished yet.

> - Although there is a place to show the application name, but there
> seems to be NO API to inform the app name. (Otani)
>

We have agreed on letting it simply get "Print", perhaps with the 
document name, but not more.

> - May need to apply CPD to major applications to gather public comments
> about the usability. (Mihara) ...  (GSoC work may contains integration
> of CPD to applications??? (Saitou))
>

There was no student working on patching applications, unfortunately. 
Ther was a student who has applied and we have accepted him, but he did 
not start the work due to visa problems. We are working on getting a 
project funded for finishing the CPD GUI and patching the applications 
and GUI toolkits (Lars has already started to patch GTK).

> - Will the CPD inplementaion be improved to comply CPD specification ???
> 

Yes, what we have now is simply the state how far the students got. The 
GTK dialog is very close to the specs. It mainly lacks only the 
arranging of option widgets and some bug fixes. The Qt dialog needs more 
work.

> - "Preview" has been implemented.
> 
> - There was a discussion on "CPD should follow JTAPI terms.
>    --> End users may not be able to understand JTAPI terms.
> 

"Following JTAPI terms" serves only for recognizing the meaning of 
options by their names to illustrate them in the preview. Only options 
recognized now are the CUPS options (N-up, reverse order, ...) and 
Duplex. Systematic work on the JTAPI-provided option names was not done 
yet. For end users nothing visible happens, except that it will happen 
more times that the preview changes with changing the setting of an option.

> - N-UP: How is it processed??? (Toratani)
>   If pdftopdf makes n-up process, Preview image does not present the
> exact print out.  Need to check how it is implemented. (Otani)
> 

First, was this observed with the GTK dialog or the Qt dialog? The GTK 
dialog was tested more. It was tested for the preview and the printer 
output corresponding to each other, but I do not know with which 
distributions and printers.

For the distributions note that Debian (unstable) and Ubuntu (Intrepid 
and newer) and distributions derived from these use the PDF printing 
workflow around the pdftopdf filter and all the others use the 
pstops-centric PostScript filter chain as provided by CUPS upstream. 
This means that an essential part for the preview to work reliably is 
that pstops of CUPS and pdftopdf have the same behavior concerning the 
CUPS options, especially also with combinations of them. If this is not 
the case, we have to consider this as a bug of pdftopdf. Please test all 
combinations and report any deviation to Otani-san.

Once the two filters behave the same, the dialog has to get adapted to 
this behavior. Please report any misbehavior of the dialog's preview to 
Lars and to the student who has implemented the dialog (GTK: Per, Qt: Alex).

> - CPD should utilize CUPS and Driver functions as much as possible.  For
> example, "copies" process are tend to be problem if upper part
> (application and printing system) processes it (it means it should be
> processed in the driver or device.) (Chigusa)
>   ---> In CUPS, processes, eg. n-up, are done in upper layer.  It may be
> difficult to cancel it in order to do them in the device side. (otani)
> 

Request for manufacturers on driver design: Do not let the driver do 
things which CUPS already does, like N-up, reverse order, ... This only 
causes confusion.

Request to the dialog implementors: Recognize as well as possible if the 
PPD provides options which seem to be also provide by CUPS and make sure 
that the dialog does not show both. It is more predictable how the CUPS 
options behave, so let the dialog suppress these CUPS-option-alike PPD 
options and send their neutral settings (N-up=1, reverse-order=false, ...).

> ==========================================
> Feedback to next OP US/EU/JP phone meeting
> ==========================================
> We will input the feedback on CPD.
> 
> ==========================================
> Vector Driver Spec 1.0 Approval process
> ==========================================
> - Lates ghostscript support both ver 0.2 and 1.0 vector drivers.
> - Spec approval need many steps described in:
>     ftp://www.pwg.org/pub/pwg/openprinting/Release-Procedure/
> - Shida-san may have process it??? (Worth to confirm)
> - Do we really need get approval??? It is already in GS (Toratani)
>   --> There is no explicit problem on the current status, but we may
> need get approval to put an end to a job.
> - We may continue to discuss it next time....
>

Formal approval of the spec would perhaps raise the acceptance by 
manufacturers, so we should complete it.

General note to manufacturers: As current Ghostscript ships OpenPrinting 
Vector 1.0 you can make use of it for drivers/

> ============
> Action Items
> ============
> - Toratani to feedback CPD on US/EU/JP meeting; including
>     - confirm if the source code on "bzr" is latest?
>     - confirm if GSoC work include implementation of CPD to Apps
>     - how n-up is processed.
>     - confirm if improvement on CPD continues

See my answers above.

> - Toratani to confirm current status of vector spec approval to Shida-san
> 
> =========
> Next
> =========
> Septempber 29, 2009, same time, same place

Please remember to CC the translation also to printing-architecture.

    Till
