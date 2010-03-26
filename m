Message-Id: <77B651FE-6B30-499A-BFC6-DA4753374D97@mmiworks.net>
From: kate price <kate@mmiworks.net>
In-Reply-To: <4BABC456.4030005@gmail.com>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 26 Mar 2010 10:27:27 +0100
References: <ED4094DE5E8ACD4BBDACA6AD398E608F0242AF@EEAEX03.us.epson.net>
	<4BABC456.4030005@gmail.com>
Subject: Re: [Printing-architecture] Another Epson Question on the Common
	Print	Dialog
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
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org

Hi all - here is the reaction from the UI perspective-
There are a couple of major points here as far as I am concerned:

1. By borderless printing we assume you to mean printing with minimum =20=

margins/maximum printable area, as opposed to printing without a =20
border line.

I understand that borderless printing is a special feature of some =20
printers and manufacturers and as such may need a high visibility. =20
However generally, for clarity and logic's sake across all printer =20
clusters, we have included this into the "print on" group of controls. =20=

This sets media type and size, and therefore margin size according to =20=

the media selected.

2. To this end, when we state that changes in margin size should be =20
reflected in the preview, it of course follows that borderless =20
printing should be shown in the preview too. We are working from the =20
basis that printable area and orientation are two obvious parameters =20
that the app must know to transform.

Apologies if this was not clearly enough stated in the spec. This has =20=

been rectified.

Kate
m+mi works

On 25 Mar 2010, at 21:15, Till Kamppeter wrote:

> On 03/25/2010 05:16 PM, Petrie, Glen wrote:
>> All,
>>
>> Another question has been asked by Epson internal on the Common Print
>> Dialog.
>>
>> The issue is on borderless printing.
>>
>>   1. Is the follow flow correct?
>>
>> In addition, we want to ask a question regarding the borderless =20
>> printing
>> with Common Printing Dialog (CPD).
>>
>> We are understanding the borderless printing scenario with CPD as
>> follows. Is it right?
>>
>> 1) Users select the "Borderless" option.
>>
>> 2) The "Borderless" option is reported back to the application.
>>
>> 3) The application =93expands=94 the image for "Borderless" printing, =
and
>> send the expanded PDF to CPD.
>>
>> 4) CPD shows the preview of received PDF.
>>
>> 5) If users judge that it is OK, CPD sends the =93expanded=94 PDF to =20=

>> CUPS.
>>
>>   2. If the above flow is correct; then, how does the application
>>      =93expand=94 the image ?
>>         1. by how much ?
>>         2. if the image size does not equal media size, the how is =20=

>> the
>>            scale ratio of the expanding decided?
>>         3. what is the method used by the application to expand the
>>            image? There are other methods beyond simple scaling.
>>
>> Borderless printing, today, is done by the printer driver =20
>> independent of
>> the application.
>>
>> I will forward your replies to internal Epson.
>
> Not exactly, this is more the workflow of an application-supplied
> option, where the setting of the option determines how the application
> should create the document to be sent to the printer.
>
> Borderless is usually simply a boolean option supplied by the driver.
> One does not expect that the application needs to re-render the PDF. =20=

> The
> driver takes care of appropriate overspray expansion when rendering =20=

> the PDF.
>
> I general, the app can only react to option settings with re-rendering
> if the options is an option supplied by the app and not from the
> printer, driver, or printing system (CUPS).
>
>    Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

