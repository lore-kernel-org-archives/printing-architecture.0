Message-ID: <b801b6f40806161700h67a5d528uc8829687eebe30dd@mail.gmail.com>
Date: Mon, 16 Jun 2008 19:00:29 -0500
From: "Alex Wauck" <alex.wauck@gmail.com>
In-Reply-To: <485642B1.2070600@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_949_2997359.1213660829487"
References: <20080616182717.3FB5.TORATANI.YASUMASA@canon.co.jp>
	<485642B1.2070600@gmail.com>
Subject: Re: [Printing-architecture] CPD development status
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
Cc: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, printing-architecture@lists.linux-foundation.org

------=_Part_949_2997359.1213660829487
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I've got the layout stuff more or less done.  I'm mainly waiting for the
DBUS API, an application that implements it (I was told I would eventually
be provided one), information on how to group the printer options for the
configuration matrix, and modified PPD files (if necessary) that implement
the extensions.  I'm currently working on implementing user-defined
presets.  Also, I don't know quite how I should implement the two buttons in
the lower left hand corner, as I'm not entirely convinced that a button that
pops up a menu is a good idea.

Alex

On Mon, Jun 16, 2008 at 5:38 AM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> see my remarks below.
>
> Lars, Alex, Jonathan, Peter, please add your answers and your progress
> report here, too.
>
> TORATANI Yasumasa wrote:
> > Hi Till,
> >
> > This is Toratani.
> >
> > We will have an OpenPrinting Japan June f2f meeting on 19th, and will
> > have discussion of Common Printing Dialog (CPD), so, could you please
> > let us know about the following points?  (These points are based on
> > the questions/suggestions by Japanese members.)
> >
> > - What the current status of the CPD development?
> > CPD spec has already been released as "beta" version?
> > CPD implementation has already started?
> >
>
> Follow these links to see the progress of the development:
>
> Requirements:
>
> http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogRequirements
>
> Specs for PPD extensions and application/dialog interface:
>
> http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogSpecifications
>
> Specs for the dialog's user interface:
> http://wiki.openusability.org/printing/index.php/Specification
>
> BZR repository for the dialog's user interface implementation:
> http://bzr.openprinting.org/devel/common-printing-dialog
>
> BZR repository for the application/dialog interface:
> http://bzr.openprinting.org/devel/cpdapi
>
> The specifications for the PPD extensions are practically ready. They
> will only be modified if there is any problem in the course of the
> implementation of the dialog.
>
> The interface between application and dialog is mostly defined and
> implemented. Lars has promised to write down the specs soon. Lars, can
> you write down the specs ASAP?
>
> The user interface of the dialog is also mostly defined. Peter, how far
> are the specs.
>
> As much as possible of all the specs is needed for the OpenPrinting
> Japan meeting on Thursday (Japanese time, Wednesday afternoon in the US,
> Night between Wednesday and Thursday in Europe).
>
> > - Interface between CPD and applications has already been defined?
>
> Yes, it is mostly defined and implemented by Lars. Lars, can you please
> write down the specs ASAP? Thanks.
>
> > We (Japan members) think that the interface should be IPC, and CPD
> > and applications process should be separated to avoid the application
> > crash caused by CPD.
> >
>
> The interface is IPC, more precise to say DBUS. So the application and
> the dialog are separate processes. This improves stability and allows
> the application and the dialog to be of different incompatible licenses.
>
> > - Current CPD spec includes both "Printing Option Settings" and
> > "Printer Status"? We hope that the implementation group focuses on
> > only "Printing Option Settings" spec and implementation as a first step.
> > to drive the CPD implementation faster.
> >
>
> Yes, this is the way we are working. Current work is focused on setting
> the options.
>
> > - Please let us know where we can see the "document" of the grouping
> > rule of CPD printing options to define them in PPD files.
>
> PPD extension specs are practically ready. For the option grouping se
> the section "Option Tagging" and for the quick preset buttons the
> section "Quick Presets" on the page with the PPD extension specs.
>
>    Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>

------=_Part_949_2997359.1213660829487
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I&#39;ve got the layout stuff more or less done.&nbsp; I&#39;m mainly waiting for the DBUS API, an application that implements it (I was told I would eventually be provided one), information on how to group the printer options for the configuration matrix, and modified PPD files (if necessary) that implement the extensions.&nbsp; I&#39;m currently working on implementing user-defined presets.&nbsp; Also, I don&#39;t know quite how I should implement the two buttons in the lower left hand corner, as I&#39;m not entirely convinced that a button that pops up a menu is a good idea.<br>
<br>Alex<br><br><div class="gmail_quote">On Mon, Jun 16, 2008 at 5:38 AM, Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Hi,<br>
<br>
see my remarks below.<br>
<br>
Lars, Alex, Jonathan, Peter, please add your answers and your progress<br>
report here, too.<br>
<div class="Ih2E3d"><br>
TORATANI Yasumasa wrote:<br>
&gt; Hi Till,<br>
&gt;<br>
&gt; This is Toratani.<br>
&gt;<br>
&gt; We will have an OpenPrinting Japan June f2f meeting on 19th, and will<br>
&gt; have discussion of Common Printing Dialog (CPD), so, could you please<br>
&gt; let us know about the following points? &nbsp;(These points are based on<br>
&gt; the questions/suggestions by Japanese members.)<br>
&gt;<br>
&gt; - What the current status of the CPD development?<br>
&gt; CPD spec has already been released as &quot;beta&quot; version?<br>
&gt; CPD implementation has already started?<br>
&gt;<br>
<br>
</div>Follow these links to see the progress of the development:<br>
<br>
Requirements:<br>
<a href="http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogRequirements" target="_blank">http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogRequirements</a><br>
<br>
Specs for PPD extensions and application/dialog interface:<br>
<a href="http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogSpecifications" target="_blank">http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogSpecifications</a><br>
<br>
Specs for the dialog&#39;s user interface:<br>
<a href="http://wiki.openusability.org/printing/index.php/Specification" target="_blank">http://wiki.openusability.org/printing/index.php/Specification</a><br>
<br>
BZR repository for the dialog&#39;s user interface implementation:<br>
<a href="http://bzr.openprinting.org/devel/common-printing-dialog" target="_blank">http://bzr.openprinting.org/devel/common-printing-dialog</a><br>
<br>
BZR repository for the application/dialog interface:<br>
<a href="http://bzr.openprinting.org/devel/cpdapi" target="_blank">http://bzr.openprinting.org/devel/cpdapi</a><br>
<br>
The specifications for the PPD extensions are practically ready. They<br>
will only be modified if there is any problem in the course of the<br>
implementation of the dialog.<br>
<br>
The interface between application and dialog is mostly defined and<br>
implemented. Lars has promised to write down the specs soon. Lars, can<br>
you write down the specs ASAP?<br>
<br>
The user interface of the dialog is also mostly defined. Peter, how far<br>
are the specs.<br>
<br>
As much as possible of all the specs is needed for the OpenPrinting<br>
Japan meeting on Thursday (Japanese time, Wednesday afternoon in the US,<br>
Night between Wednesday and Thursday in Europe).<br>
<div class="Ih2E3d"><br>
&gt; - Interface between CPD and applications has already been defined?<br>
<br>
</div>Yes, it is mostly defined and implemented by Lars. Lars, can you please<br>
write down the specs ASAP? Thanks.<br>
<div class="Ih2E3d"><br>
&gt; We (Japan members) think that the interface should be IPC, and CPD<br>
&gt; and applications process should be separated to avoid the application<br>
&gt; crash caused by CPD.<br>
&gt;<br>
<br>
</div>The interface is IPC, more precise to say DBUS. So the application and<br>
the dialog are separate processes. This improves stability and allows<br>
the application and the dialog to be of different incompatible licenses.<br>
<div class="Ih2E3d"><br>
&gt; - Current CPD spec includes both &quot;Printing Option Settings&quot; and<br>
&gt; &quot;Printer Status&quot;? We hope that the implementation group focuses on<br>
&gt; only &quot;Printing Option Settings&quot; spec and implementation as a first step.<br>
&gt; to drive the CPD implementation faster.<br>
&gt;<br>
<br>
</div>Yes, this is the way we are working. Current work is focused on setting<br>
the options.<br>
<div class="Ih2E3d"><br>
&gt; - Please let us know where we can see the &quot;document&quot; of the grouping<br>
&gt; rule of CPD printing options to define them in PPD files.<br>
<br>
</div>PPD extension specs are practically ready. For the option grouping se<br>
the section &quot;Option Tagging&quot; and for the quick preset buttons the<br>
section &quot;Quick Presets&quot; on the page with the PPD extension specs.<br>
<font color="#888888"><br>
 &nbsp; &nbsp;Till<br>
</font><div><div></div><div class="Wj3C7c">_______________________________________________<br>
Printing-architecture mailing list<br>
<a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
<a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br>
</div></div></blockquote></div><br>

------=_Part_949_2997359.1213660829487--
