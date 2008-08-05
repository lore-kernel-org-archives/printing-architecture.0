Message-Id: <6758938C-39C9-40CD-B97C-C8896C0D47B3@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <48980F94.40306@gmail.com>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v926)
Date: Tue, 5 Aug 2008 14:36:07 +0200
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>
	<200808031431.06482.hvengel@astound.net>
	<48978139.3070005@gmail.com>
	<200808050116.25204.hvengel@astound.net> <48980F94.40306@gmail.com>
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
	Dialog: Color Management (was)PPD extension specs updated
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel@lists.sourceforge.net, "Hal V. Engel" <hvengel@astound.net>

Till + Hal wrote:

>> It was in the color settings for photoprinters (there was a color =20
>> management item that listed setting the ICC profile) but it was not =20=

>> in the wide format printer spec.

I have updated the intent of the clusters at the top of this page:

<http://wiki.openusability.org/printing/index.php/Printer_type_clusters>

"Do not take the clusters too literal=85"

>> I remember seeing in the design docs that since it is a dialog it =20
>> should be a fixed size. I am not sure where this "rule" comes from =20=

>> but I think that this should depend on the dialog.

and in this case, after looking carefully at the role of each area in
the printing dialog, the answer is no user resizing. the dialog
resizes itself to accommodate all parameters.

the preview is very important, it takes the voodoo out of printing.
it shows that everything is going to be OK, on a macroscopic level.
it has just enough size and enlargement to do that, but not more.

it should not start leading a life of its own as a document viewer.

>> In some (actually in most) cases I would agree totally. In this =20
>> case I don't. Part if this gets back to use cases. My interests are =20=

>> more focused on PhotoPrinting and color critical work where the =20
>> preview can be very important.

being the principal interaction architect of both this project and
of the redesign of GIMP, I am just about the only person in the whole
wide world who can answer your question.

the printing dialog does not live in a vacuum. we have a general
solution: if the transformation part (getting it on paper) is
demanding or hands-on, then this task shall be performed in a
sizeable (like the main-) window before the print dialog is entered.

The printing dialog can even be skipped (in a Just Print fashion)
after this big transformation window. (note the use of dialog and window
for these two different types of interaction).

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



