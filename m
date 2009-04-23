Message-Id: <AA9213F0-7287-4824-8302-212B89F5B3AC@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <3F74D775-B66B-422D-A091-D8723BA657AC@apple.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v930.3)
Date: Thu, 23 Apr 2009 21:06:31 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
	<3F74D775-B66B-422D-A091-D8723BA657AC@apple.com>
Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog: Preview
	Processing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: printing-summit@lists.linux-foundation.org

Wow guys,

that discussion is sort of mushrooming, so I'll have to cover
stuff here in sweeping summaries.

Some things discussed here have been 'designed in' for
a long time:

- applications shall be able to pre-set printing parameters in
   the dialog, for when they know from their domain knowledge
   what is the "correct" value;

- applications shall be able to hide standard printing parameters in
   the dialog, for when they can supply a more advanced control(s)
   that take into account the application domain. I expect the
   application to decompose the advanced control value(s) partially to
   control their own transformation and partially to set those
   hidden standard printing parameters.

The two above cover a lot of the page formatting app + printer
cooperation scenarios you are sketching. When discussing this
"application is paper-based" scenario, we should not forget
that is an exception:

<http://www.mmiworks.net/eng/publications/2008/07/to-istanbul-via-tokyo.html#rule4 
 >

but it is an exception that we have planned for and that is handled
by the principles above. Since the application rules in its domain,
it should be able to take over and take full responsibility of the
page size, margins, orientation when it needs that. This is
a structural requirement to get the apps on board. At the end the
printing infrastructure service is (seen as) part of their app.

(and building in go-it-alone overrides from the printer side
can create massive usability problems).

Transformation parameters update:

yes, I can see that scaling is one that the app should know about.

also seeing the discussion about 'scale to fit' I tend more
and more to see that as an application exclusive parameter.
As Tobias said: "Only the application knows the "right" way
to print it's  content onto a differently sized paper"

Till wrote:

> There can be documents which have different page sizes, for example  
> page
> 1 and A4, page 3 A3 and page 4 A4 again. With "Document Page  
> Size(s)" an
> appropriately loaded printer will take A4 paper for the pages 1, 2,  
> and
> 4 and A3 paper for page 3. All selections of a concrete page size will
> let the printer print all pages on the same paper size, using  
> different
> scaling factors if needed.

this is an excellent example why applications must be fully in
control of getting it on paper (it knows what is on those 4 pages).

Then there is a lot of talk about if application need to re-render,
reformat their transformation. the transformation of data and putting
it on paper is a holistic part of the print job, that is why the
parameters controlling it are in the print dialog. they must, else
the simplest things stop actually working. my example:

> a simple example of an application parameter is a web browser
> including the checkbox "Print headers and footers" in the
> print dialog. toggling this should immediately reformat the
> print, resulting even in more/less pages to print.


shows this in all its simpleness. It make a real difference to
users if a web page is going to print on 3.1 or 2.9 pages.
This example works today on OS-X, and makes me confident
that is is not outrageous to engineer a framework to facilitate
this for linux applications + printing.

The phase we are now in is the 40% phase. I see this in every
project in my interaction architecture practice:

I present the design that solves lots of usability issues,
and the engineers respond with: I think we can achieve only
40% of that. What happens then is that the engineers actually
start checking out and testing what can be done, and at the
the end of the project we achieve by cooperation 90% of the
goals that I had set for the project.

So knowing Till and having met Lars in SF, and knowing how they
both see the point of the usability innovation in the designs,
I am optimistic about what we can achieve here.

Johannes Meixner is worried about what it will take to make
the preview accurate enough. I suspect now that everybody here
has a different perception of "accurate enough", and that everybody
is not that sure that their counterparts in this conversation
has the same perception.

I say it is only a (fixed) 225 or so pixels on the longest side
of the preview page. It is a really complex mix of any change
users make in the dialog being reflected straight away in the
preview (where possible), and the fact that being a millimetre
off in the display is not that bad. It is all in the
UI designer-developer cooperation to sort that out, one by one.

Now about those ppd-only postscript printers: does not the
the standardisation of the whole printing process point at
a standardisation of how that can be reflected in the
preview?

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



