Date: Mon, 16 Nov 2009 18:36:26 +0100 (CET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>
Message-ID: <Pine.LNX.4.64.0911161329000.22140@sirius.rasena>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
	<200911151226.49297.hvengel@astound.net>
	<5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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
To: kate price <kate@mmiworks.net>
Cc: Roy Harrington <roy@harrington.com>, Michael Sweet <msweet@apple.com>, openicc <openicc@lists.freedesktop.org>, Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Am 16.11.09, 13:09 +0100 schrieb kate price:
> Hi all
> 
> I've been reading all posts with varying levels of comprehension, but  
> always with great interest.
> To get back to my own concern, design of the UI for the CPD I'm going  
> to boil this down to a quite high level statement which expresses the  
> direction we believe the CPD should take. This is not only in response  
> to the information gleaned here, but also very much in the context of  
> our own convictions about the design of a print dialogue for all users.
> 
> So:
> 
> *If printing doesn't exist, colour printing also doesn't exist. Terms  
> and concepts like colour management and ICC profiles have no meaning  
> to a vast majority of users. Most users  want their colour printing to  
> just work with no intervention required.

Agreed, most users do not need to know about techical details.
As soon as they want colour to just work, ICC colour management is the 
right choice to get this done. So at least the results of colour 
management are understood, and meeting of expectations regarding colour is 
part of how they are satisfied with the print system.

> *Successful colour printing is as much about media as it is about the  
> ink which goes on it. This means that for successful colour printing  
> from the CPD a holistic picture of the print is required.

Colour experts will largely agree.

> *Detailed controls of colour settings, detailed proofing of colour  
> fidelity etc. is far better suited to and achievable within the print  
> preview of a suitable application (GIMP, photoshop etc etc).

Is it planed to omit a detailed print preview? I have seen this kind of 
windows and modes in office applications,  mainly to walk through multi 
page documents before printing. They are very useful there.

How is the print preview integrated with CPD? Shall it work like a 
button inside CPD, which calls into the main application with some 
parameters to render the preview on application side? Or is it a tab? 
A link to according documentation would be great.

> *Professionals and power users and enthusiasts  need to be able to use  
> profiles and presets they have made or downloaded.  Therefore there is  
> a clear need to use colour presets directly from the CPD, even if it  
> is accepted that they cannot be made within the CPD.

How can we learn details about CPD presets? What makes it difficult to 
dump out a CPD preset?
 
> Practically this means that:
> 
> *Color controls are not in the CPD or at the very most, barely there.

While the idea was provided to hide low level ICC options, I would 
see it as an disadvantage to have the ICC related controls not 
available and would favour to make the outlined CM controls available in 
CPD through a experts only panel, which has a reset button for getting 
easily to the defaults.
But if not, how can applications plug-in a own CM panel into CPD?


As well looking at Windows and osX print dialogs, there are a lot of 
colour controls. These are not the expert controls you wrote about. 
Nevertheless they are a big selling point for photo printers.
Delivering vivid, natural, sepia and other effects on button click 
including a canned ICC profile mode is typical integrated into driver 
panels of photo capable printers. Why would print manufacturers wast that 
space if it would be of no need?
As well I expect most home users have a photo mode in their printing 
device. They print mostly letters but from time to time as well images 
and flyers. So this kind of ICC colour controls matters.

> *Let the API take the strain: i.e automatic colour control override is  
> desirable and achievable.

You mean setting and freezing colour related controls as soon as a ICC 
profile is selected(?) This would be the correct mode for the use of ICC 
profiles. Somehow CPD has to know, which settings are colour related for 
the particular driver. This can eigther be transported through Oyranos or 
the profile itself, which again can be translated by Oyranos.

There will be people who complain about the missed capability to hand 
tweak their colours. This is quite natural. A way to satisfy those 
demand is to support effect profiles, which fits well with the point 
above.

> *Focus on at the practical process of getting presets into our CPD  
> interface to work for enthusiasts and professionals alike.
> 
> It seems to me that a good focus from here would be to really get the  
> presets working for the most sophisticated users (as well as others).  
> This would be an area where further imput from interested parties  
> would be welcomed because I believe that there is a great opportunity  
> already here within the current design of the CPD. Surely integrating  
> the making, saving and using of these presets into a  smooth and  
> comprehensible part of a print workflow would be a great -and  
> importantly- achievable step forward that we can provide?

A big advantage of dumping out a preset is better supportability. With 
dumped files, it is possible to send such a preset to a knowledgeable 
person for remote analysis.
Cloning presets is for administrators and for sharing among people equally 
useful.

Regarding ICC profiles, a preset package would need to include the ICC 
profile.

> Kate
> 
> Kate Price
> man + machine interface works

kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

