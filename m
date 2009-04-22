Message-ID: <49EF7E44.6040700@gmail.com>
Date: Wed, 22 Apr 2009 22:29:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de>	<ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-summit] Print
 Dialog:	PreviewProcessing: Only A Question
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
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Michael Sweet <msweet@apple.com>

In case of a page-oriented apps we could have for example the following 
options:

1. Page Size: Choices "Document Page Size(s)" (Default) and all page 
sizes from the PPD.

2. Fit to Page: Selects behavior when for "Page Size" "Document Page 
Size(s)" is NOT selected: "Shrink to fit" (Default), "Scale to fit", 
"Crop to fit". This option gets grayed out if "Page Size" is set to 
"Document Page Size(s)".

For non-page-oriented apps (brower, e-mail, ...) the "Document Page 
Size(s)" in "Page Size" and the "Fit to Page" will either not be shown 
or grayed out.

WDYT?

    Till


Petrie, Glen wrote:
> Another thought;  have a preference setting for the dialog that would
> always allow the media size to be enabled in the dialog.  This way
> sophisticated get what they need.
> 
>> -----Original Message-----
>> From: printing-architecture-bounces@lists.linux-foundation.org
>> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
>> Behalf Of Petrie, Glen
>> Sent: Wednesday, April 22, 2009 11:00 AM
>> To: Tobias Hoffmann
>> Cc: printing-architecture@lists.linux-foundation.org; printing-
>> summit@lists.linux-foundation.org; Michael Sweet
>> Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog:
>> PreviewProcessing: Only A Question
>>
>>>> [gwp] I think I understand your point. I would like to explore the
>>>> case where the app does the "layout" settings and, then, the print
>>>> dialog has "layout" settings. What is your expectation if the app
>>>> (like OpenOffice Write) sets (and flows) the document to letter
>> size;
>>>> then the print dialog offers "page size" attribute and the user
> now
>>>> selects A4. Would you expect the print dialog to send the info
> back
>> to
>>>> application to reformat/reflow the document or clip letter content
>>>> exceeding A4 or scale the letter content (without calling the
>>>> application) to fit A4. I guess I would you go with the last
>>>> option....but I have seen the system where letter formatted
> content
>> is
>>>> printed on 4x6 cards (silly I know) by simply clipping the letter
>>>> content to 4x6. I had not seen any implementation of calling back
> to
>>>> the application.
>>>>
>>> In general: Only the application knows the "right" way to print it's
>>> content onto a differently sized paper:
>>> - e.g. a PDF Viewer, or a DTP program has a fixed destination page
>> size.
>>> So they will most likely give the user an option like "scale
> contents
>> to
>>> fit page", as the user might want to get either of these.
>>> - a web-brower or OO Writer will want to reflow the content.
>> [gwp] Michael's (Apple's) solution I think is the best for the typical
>> end-user; that is, smart application will inform the dialog to gray
> out
>> media size and margins.  There is always the sophisticated user -
>> requires more thought on how support them. (see may next comment
> below)
>>
>>> Actually its more a question of Media Size - and Media selection -
> vs.
>>> Content Size:
>>> I might (just a thought) want to print a Document flowed to A5
>> (Content
>>> size) to a A4 medium, and have it scaled to 141% e.g. for proofing
>> fine
>>> details.
>> [gwp] This is a good feature; but if following the typical end-user
>> solution above; then you might not get the media size (A4) options if
>> the application has requested to gray out the media size.  A quick
>> thought is have some kind of "advanced mode" that always allow the
> user
>> to set the print media size no matter what the content size is or what
>> the application has requested be grayed out.  The issue here is the
>> complexity of the dialog; anyway...  Thus, the gray-out (non-advanced)
>> mode protects the typical user from printing media-size-1 to
>> media-size-2 (which may produce strange/unexpected results) while
>> allowing sophisticated user the capability they need.
>>
>>> The content size is technically only a matter of the application,
> and
>>> the medium size only matters for the printing process. And the user
>> has
>>> to decide whether to scale or print in 100% - when these size don't
>> match.
>>> The casual user, however, will never want to know any of these
> details
>>> and IMO in the reflowable case expects the media size to directly
>> affect
>>> the content size, or being offered "scale-to-fit" for the fixed
>> content
>>> size case (what does the usability testing say?).
>>>
>> [gwp] Agreed, if you don't implement the suggested solution above.  In
>> this case, the user (typical or sophisticated) can change the print
>> media size.  If this approach is used, I would recommend that
>> scale-to-fit be the default.  At least this way the end-user will get
>> all content printed; and if they really want clipping to occur; they
>> will have to set that condition.
>>
>>
>>> Last but not least, the preview has to always show what the user
> will
>>> get, so callback to the application for potential reflow is
> necessary
>>> whenever the _content size_ changes.
>>>
>> [gwp] I have some concerns about the "back to the app for reflow"; but
>> that's a discussion for another mail thread.
>>
>>
>>> Tobias
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>>
> https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
> e
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> 

