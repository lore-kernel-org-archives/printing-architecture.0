Message-ID: <OF7135B2AD.549029E4-ON85256C85.007FAE5D@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Wed, 4 Dec 2002 17:41:31 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
Subject: [Printing-architecture] Re: [printing-announce] Open Printing activities in Japan
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: printing-announce@freestandards.org, printing-architecture@freestandards.org


Michael wrote:

> Keep in mind that the current CUPS 1.2 back-channel support (which
> provides bidirectional communication with interfaces and devices
> that support it) is potentially incompatible with the architecture
> that Peter has proposed, and of course there are the security
> issues to deal with (arbitrary applications should not be able
> to communicate directly with printers.)

Michael,

What type of support do you have for bi-directional communications?
Does it handle the different protocols from each of the different
vendors since they all provide information in different ways.

The diagram I put together isn't cast in concrete but it did provide
a way for each vendor to provide specific protocol support through
a defined print system interface from a module that knows the specifics
of their individulal protocols.  If the layering isn't what is needed
and we can actually make one generic interface for all that is fine by me.



Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com





