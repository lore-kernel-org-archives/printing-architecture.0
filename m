Message-ID: <4E033025.1080502@gmail.com>
Date: Thu, 23 Jun 2011 14:23:01 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F805DBE@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F805DBE@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OpenPrinting Mobile Behavior Guidelines
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

On 06/20/2011 11:55 PM, Petrie, Glen wrote:
> All,
>
> I had an action item to produce the “OpenPrinting Mobile Behavior
> Guidelines”. It is time to start.
>
> Please comment on the following: do you agree or do you have another
> opinion (explain your opinion)?
>
> What should be in the guidelines:
>
> General what the mobile device (client) needs to do and can expect. And,
> what the print “interface” needs to do and can expect.
>
>  From my presentation at the last F2F, I had defined the guidelines
> would include such things as
>
> 1.Definition of objects, elements and attributes
>
> 2.Definition ranges or the set of extensible and non-extensible values
>
> 3.Groupings of related objects, elements and attributes
>
> 4.Interrelationships between objects, elements, attributes and their values
>
> 5.Constraints between objects, elements, attributes and their values
>
> Looking at the list above, the first three things are covered the JTAPI.
> So I would propose that the Guidelines state that elements of JTAPI be used.
>

OK.

> For item 4 and 5, I can go through the various combinations to determine
> the determinable constraints and relationships.
>

Constraints and relationships often depend on the particular printer, 
some can do duplex on envelopes, others no. For that the client (the 
mobile device) needs to be able to poll this info from the 
printer/server before displaying a printing dialog.

> I can go through the various combinations and create a set of predefined
> print mode (photo, web page, etc) that mobile devices (clients) can
> specify and will be understood by the print services or printer.
>

Presets are a good idea on mobile as the limited space cannot hold lots 
of fine-tune options and most users want to select a simple document 
type instead of lots of settings. By the way, Apple AirPrint also uses 
presets.

> What would the simplest print-architecture look like and various levels
> of complexity. That is can a mobile device include CUPS or another, and
> simpler, print manager (management) solution. How thin can a print
> manger (management) module be? We would specific (as part of the
> guideline) what was the minimum support and the ordering for adding more
> complex capabilities.
>

One important thing is that on mobile we do not need a 
RIP/filters/backends and also not the CUPS web interface. A pure 
CUPS/IPP client with a simple printing dialog would be enough. Then we 
can print onm AirPrint (PDF files via IPP) and on IPP Everywhere.

> For the various combinations of interface types shown below, I can
> create proposed “values” (names or iconics or keystroke or whatever) to
> support each interface type.
>
> •a dialog box? (how big?, how many pixels)
>

Mobile screen sizes vary, especially as there are conventional phones, 
smartphones, and tablets/netbooks. So we need flexibility. Tablets and 
netbooks can even show the desktop dialog.


> •pull down menus?
>
> •hierarchical menus? (same as display on a printer)
>
> •one or more iconic?
>

Depends on how ell it works on a touch screen.

> •keystroke commands?
>

Not suitable for touch but useful for netbooks.

> •gesturing (double tap to print)?
>

Nice for touch, but should not interfere with existing gestures and 
should not print without confirmation.

> •a physical button action?
>
> •combinations of the above?
>
> The guideline would need a conformance section (include what not to do).
>
> The guideline conformance should define the level of print “dialog”
> (interface) support is required for a mobile device with specific
> display size and computing power. (think of phone to iPad to netbook to
> laptop)
>

This is a good idea, priinting dialog guideline by screen size class.

> The guideline needs to define how applications can “””extent””” mobile
> printing and mobile dialogs. The same would be true for print vendor
> extension.
>
> The guideline would need a complete glossary. (I suspect that this would
> be used by people with various levels of print interface development
> experience.)
>
> The guideline would need a sample implementation (?) of each interface
> type (?)


    Till
