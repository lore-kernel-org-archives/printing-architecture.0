Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3561@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 1 Apr 2008 10:18:51 -0700 
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Optimizing MicroJobTicket - JTAPI
	'native' symbols
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>, "Petrie, Glen" <glen.petrie@eitc.epson.com>

Ira,

Isn't coherence a wonderful thing?  I think question/idea you bring up is a
important issue (and big one).  I have written the rest of email twice now
and still not happy with results.

I want to think on it more before responding.

Glen


> -----Original Message-----
> From: Ira McDonald [mailto:blueroofmusic@gmail.com]
> Sent: Tuesday, April 01, 2008 10:00 AM
> To: printing-architecture@lists.linux-foundation.org; Lars Uebernickel;
> Petrie, Glen; Ira McDonald
> Subject: Optimizing MicroJobTicket - JTAPI 'native' symbols
> 
> Hi,
> 
> Right after I suggested we just use MJT for any needed interprocess
> serialization of a parsed job ticket in the JTAPI Library, I thought
> 
> "Hey, the current MJT uses IPP standard property names and values
> and a PWG namespace - duh!"
> 
> I suggest that I revise the PWG MJT working draft to be an OP MJT
> working draft (which I need to do anyway).
> 
> I should define a second standard JTAPI namespace for MJT, that uses
> JTAPI standard property names and values - this would let the external
> job ticket match exactly the OP canonical names from JTAPI - a very
> long-standing coherence goal that Glen has championed and I support.
> 
> However, for use with CUPS and/or PAPI integration, support for the PWG
> IPP names in MJT is also important.  Hmm...
> 
> Comments, Glen and Lars?
> 
> Cheers,
> - Ira
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
