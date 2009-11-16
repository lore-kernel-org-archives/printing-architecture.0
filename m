Message-Id: <5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>
From: kate price <kate@mmiworks.net>
In-Reply-To: <200911151226.49297.hvengel@astound.net>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v936)
Date: Mon, 16 Nov 2009 13:09:10 +0100
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
	<200911151226.49297.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>
Cc: Roy Harrington <roy@harrington.com>, gimp-print-devel@lists.sourceforge.net, Michael Sweet <msweet@apple.com>, openicc <openicc@lists.freedesktop.org>, Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org

Hi all

I've been reading all posts with varying levels of comprehension, but  
always with great interest.
To get back to my own concern, design of the UI for the CPD I'm going  
to boil this down to a quite high level statement which expresses the  
direction we believe the CPD should take. This is not only in response  
to the information gleaned here, but also very much in the context of  
our own convictions about the design of a print dialogue for all users.

So:

*If printing doesn't exist, colour printing also doesn't exist. Terms  
and concepts like colour management and ICC profiles have no meaning  
to a vast majority of users. Most users  want their colour printing to  
just work with no intervention required.

*Successful colour printing is as much about media as it is about the  
ink which goes on it. This means that for successful colour printing  
from the CPD a holistic picture of the print is required.

*Detailed controls of colour settings, detailed proofing of colour  
fidelity etc. is far better suited to and achievable within the print  
preview of a suitable application (GIMP, photoshop etc etc).

*Professionals and power users and enthusiasts  need to be able to use  
profiles and presets they have made or downloaded.  Therefore there is  
a clear need to use colour presets directly from the CPD, even if it  
is accepted that they cannot be made within the CPD.


Practically this means that:

*Color controls are not in the CPD or at the very most, barely there.

*Let the API take the strain: i.e automatic colour control override is  
desirable and achievable.

*Focus on at the practical process of getting presets into our CPD  
interface to work for enthusiasts and professionals alike.

It seems to me that a good focus from here would be to really get the  
presets working for the most sophisticated users (as well as others).  
This would be an area where further imput from interested parties  
would be welcomed because I believe that there is a great opportunity  
already here within the current design of the CPD. Surely integrating  
the making, saving and using of these presets into a  smooth and  
comprehensible part of a print workflow would be a great -and  
importantly- achievable step forward that we can provide?

Kate

Kate Price
man + machine interface works
