Message-ID: <e395be80804011000q1a632658i5f30effeddef536e@mail.gmail.com>
Date: Tue, 1 Apr 2008 13:00:09 -0400
From: "Ira McDonald" <blueroofmusic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Subject: [Printing-architecture] Optimizing MicroJobTicket - JTAPI 'native'
	symbols
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>, "Petrie, Glen" <glen.petrie@eitc.epson.com>, Ira McDonald <blueroofmusic@gmail.com>

Hi,

Right after I suggested we just use MJT for any needed interprocess
serialization of a parsed job ticket in the JTAPI Library, I thought

"Hey, the current MJT uses IPP standard property names and values
and a PWG namespace - duh!"

I suggest that I revise the PWG MJT working draft to be an OP MJT
working draft (which I need to do anyway).

I should define a second standard JTAPI namespace for MJT, that uses
JTAPI standard property names and values - this would let the external
job ticket match exactly the OP canonical names from JTAPI - a very
long-standing coherence goal that Glen has championed and I support.

However, for use with CUPS and/or PAPI integration, support for the PWG
IPP names in MJT is also important.  Hmm...

Comments, Glen and Lars?

Cheers,
- Ira

-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
 579 Park Place Saline, MI 48176
 734-944-0094
summer:
 PO Box 221 Grand Marais, MI 49839
 906-494-2434
