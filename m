Message-ID: <4810B1EF.2000604@gmail.com>
Date: Thu, 24 Apr 2008 18:14:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D383C@eitc220.eitc.epson.com>
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D383C@eitc220.eitc.epson.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] LF Collaboration Summit Open	Printin
 gMinutes from Glen Petrie
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
Cc: printing-architecture@lists.linux-foundation.org, Jonathan Riddell <jriddell@ubuntu.com>, Alexander Wauck <alex.wauck@gmail.com>

Lars, Alexander, and Jonathan, can you all subscribe to the 
printing-architecture mailing list and do all discussion concerning the 
specifications of the Common Printing Dialog and the interface between 
application and dialog here on the printing-architecture mailing list, 
so that printer manufacturers and others can participate?

Thanks.

    Till


Petrie, Glen wrote:
> Finally catching up with email...
> 
> General request; Can the specification development content of GSoC
> activities be openly communicated on the mail-list __during__ the
> development.  Manufactures and others may have comments or needs to be
> added/considered.
> 
> 
> 
> <...snip...>
> 
>>>    1. Define a specification for machine readable print setting at the
>>>       doc, app and desktop level.
>>       Will be part of Lars' GSoC work on the application/printing dialog
>>       interface
> 
> [gwp] can this part be openly discussed on the mail-list, so others can
> understand and participate?
> 
> 
> 
> <...snip...>
> 
>>>    2. Define a set of simple top level state/status indicators for top
>>>       level of the Common Print Dialog.
>>       We will tell Lars and Alex Wauck (implementation of the dialog
>>       itself in the GSoC) about taking into account this,
> 
> [gwp] Can this part be openly discussed on the mail-list.  There may be
> manufacture specific indicators (number of, state of, etc)?
> 
> 
> 
> <...snip...>
> 
>> Manufacturer extensions cannot be done by means of executable code, as
>> printer drivers run on the server and server and client can be different
>> architectures. Manufacturer extensions can only be done by PPD options,
>> the custom options of CUPS allow extended data formats.
>>
>>> -- Should application be able to restrict options?
>>>
>> This is a good idea, will pass it on to the GSoC students who will work
>> on the dialog.
> 
> [gwp] How does an application "know" / "understand" what the manufacture
> extensions/options actually do?  So an application can't really do more than
> simply turn off manufacture extensions/options.
> 
> 
> 
> <...snip...>
> 
>>> = Like in Windows, there was an expressed desire for remembering print
>>> setting at the desktop level, the application level and the document
>> level.
>> Will be no big deal: Dialog reports back option settings as simple
>> key/value pairs to app. App keeps them as text and adds them to document
>> file on saving. When dialog is opened again, app sends saved options to
>> dialog.
> 
> [gwp] This may be a big deal if it requires the document format to change!
> 
> 
> 
> <...snip...>
> 
>>> -- Thus the desktop group is looking for a machine readable definition
>>> (specification) of print settings.
>>>
>> Simply use key-value pairs:
>>
>> PageSize=A4
>> Resolution=1200dpi
> 
> [gwp] As I remember the conversation; this is exactly what they did not
> want. They want a binary representation (machine readable, not human
> readable) definition.  
> Example
> 0x07 0x42		(means PageSize(0x07) = A4 (0x42)
> 0x08 0x04 0xB0	(means Resolution(0x08) = 1200 (0x04 0xB0)
> 
> [gwp] We need to get clarification 
> 
> 
> <...snip...>
> 
>>> = Want the CPD to have a state/status tab.
>>>
>>> -- After some discussion, what the desktop people also wanted was some
>>> very simple indicators in the main CPD window showing the "status"
>>> ("state", "condition", "readiness", "busyness") of the printer.   That
>>> is, they want to know that the printer is really ready/available for
>>> printing.  Is the printer out of ink, is the print out of paper, is the
>>> printer busy, is the printer online.   The idea was that the indicators
>>> are simple colored boxes.  For example, a box for ink-level is green if
>>> ink/toner level is ok, blue if ink/toner low, red if ink/toner out.
>>> Same for the other status items.  The user could go to the state/status
>>> tab if they need more information.
>>>
>> Dialog could poll status from CUPS and show it somewhere.
> 
> [gwp]  The desktop people stated the "somewhere" should be the main dialog
> window/view.  The user should not have to go to a tab to get this info.
> 
> 
> <...snip...>
> 
>>> = The desktop group would like to see the CPD be a plug-in solution
>>> versus a separate process.
>>>
>> Problems of plug-in: Dialog and app is one process, dialog and app
>> cannot be of arbitrary licenses then, crash of dialog would crash app.
> 
> [gwp] Then I support separate process model.
> 
> 
> gwp
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> 

