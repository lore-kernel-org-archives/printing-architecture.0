Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D356F@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 1 Apr 2008 12:22:15 -0700 
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Optimizing MicroJobTicket - JTAPI
	'native' symbols - second n	 ote
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org

Ira,

I am not requesting or proposing storing binary job-tickets for Lars'
project.  All I have asked is that Lars considers this possibility in his
design of internal data structs.

gwp 

p.s.
I sorry you """strongly disapprove"""!!!!  I was never considering a
fixed-sized binary job-ticket; I already stated that it would not be
extensible.  

gwp

> -----Original Message-----
> From: Ira McDonald [mailto:blueroofmusic@gmail.com]
> Sent: Tuesday, April 01, 2008 12:08 PM
> To: Petrie, Glen; Ira McDonald
> Cc: printing-architecture@lists.linux-foundation.org; Lars Uebernickel
> Subject: Re: Optimizing MicroJobTicket - JTAPI 'native' symbols - second n
> ote
> 
> Hi Glen,
> 
> I strongly disapprove of externally storing a so-called binary job ticket
> format - fixed-size binary encodings are fragile (across versions) and
> don't accomodate multi-valued properties at all.
> 
> Fine - we'll keep MJT using IPP names (it uses EXACTLY IPP names,
> as are used in the serialization/deserialization functions in the PAPI
> interface).
> 
> Cheers,
> - Ira
> 
> On Tue, Apr 1, 2008 at 1:40 PM, Petrie, Glen <glen.petrie@eitc.epson.com>
> wrote:
> > Ira,
> >
> >  Is coherence, at the level we are discussing needed or wanted?  Or is
> what
> >  is needed/wanted is a translation mechanism to "seamlessly move between
> >  job-ticket representation"?
> >
> >  Coherence to me and in this context would mean consuming any job-ticket
> >  format and outputting a common (read as coherent) job-ticket
> representation.
> >
> >
> >           JDF -----\
> >                    \
> >           MJT ----->---->>> common job-ticket representation
> >                    /
> >           XYZ JT --/
> >
> >  A translation mechanism says "take what I got and give me something I
> can
> >  use".
> >
> >           JDF <<<<<<<<
> >                       ^  MJT becames a JDF
> >           MJT >>>>>>>>^
> >
> >           XYZ JT --/
> >
> >
> >  I believe in coherence but I also believe the world only needs/wants
> >  translation.
> >
> >  Therefore, the project as I proposed uses JTAPI to create the
> translation
> >  service; as I believe was the originally intended.  When you add the
> concept
> >  of a binary (internal) job-ticket representation writer/reader you can
> >  achieve a small degree of coherence or at least start a path to
> coherence.
> >
> >  I also designed the project to accept only a few variations of a MJT.
> This
> >  is so Lars would not have to process all the possible attribute values
> of a
> >  MJT (read this as IPP).  He only needs to concentrate on the one in the
> >  pre-defined MJTs and focus his development time on the core JTAPI code.
> I
> >  had to scope the project as a summer project but tried to figure out
> how to
> >  structure the activity so that is could continue afterwards.
> >
> >  Therefore, let's leave MJT as is.   I actually picked MJT because I
> >  understood it to be simplified job-ticket based on IPP and PWG content.
> >
> >  gwp
> >
> >  p.s.
> >
> >  Isn't defining the second standard suggested below creating another
> >  job-ticket format?  If we are going to do that then I would rather
> spend the
> >  time create the specification for the binary (internal) job-ticket
> >  representation discussed above.
> >
> >  gwp
> >
> >  > -----Original Message-----
> >  > From: Ira McDonald [mailto:blueroofmusic@gmail.com]
> >  > Sent: Tuesday, April 01, 2008 10:00 AM
> >  > To: printing-architecture@lists.linux-foundation.org; Lars
> Uebernickel;
> >  > Petrie, Glen; Ira McDonald
> >  > Subject: Optimizing MicroJobTicket - JTAPI 'native' symbols
> >  >
> >  > Hi,
> >  >
> >  > Right after I suggested we just use MJT for any needed interprocess
> >  > serialization of a parsed job ticket in the JTAPI Library, I thought
> >  >
> >  > "Hey, the current MJT uses IPP standard property names and values
> >  > and a PWG namespace - duh!"
> >  >
> >  > I suggest that I revise the PWG MJT working draft to be an OP MJT
> >  > working draft (which I need to do anyway).
> >  >
> >  > I should define a second standard JTAPI namespace for MJT, that uses
> >  > JTAPI standard property names and values - this would let the
> external
> >  > job ticket match exactly the OP canonical names from JTAPI - a very
> >  > long-standing coherence goal that Glen has championed and I support.
> >  >
> >  > However, for use with CUPS and/or PAPI integration, support for the
> PWG
> >  > IPP names in MJT is also important.  Hmm...
> >  >
> >  > Comments, Glen and Lars?
> >  >
> >  > Cheers,
> >  > - Ira
> >  >
> >  > --
> >  > Ira McDonald (Musician / Software Architect)
> >  > Chair - Linux Foundation Open Printing WG
> >  > Blue Roof Music/High North Inc
> >  > email: blueroofmusic@gmail.com
> >  > winter:
> >  >  579 Park Place Saline, MI 48176
> >  >  734-944-0094
> >  > summer:
> >  >  PO Box 221 Grand Marais, MI 49839
> >  >  906-494-2434
> >
> 
> 
> 
> --
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Blue Roof Music/High North Inc
> email: blueroofmusic@gmail.com
> winter:
>  579 Park Place Saline, MI 48176
>  734-944-0094
> summer:
>  PO Box 221 Grand Marais, MI 49839
>  906-494-2434
