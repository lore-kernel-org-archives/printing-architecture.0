Date: Fri, 29 Apr 2011 07:33:09 +0200 (MEST)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
Message-ID: <alpine.LNX.2.00.1104290726130.4105@roma.rasena>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Subject: [Printing-architecture] Colour Management Schemes for Printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Joseph Simon <jsimon383@gmail.com>

In preparation of several events I created some slides. Two of them summarise 
usability and design objectives for colour managed general
printing, which where collectively worked out during OpenICC discussions.

The core of the CMS schemes boils down to
* avoid asking any questions to users,
* adhere to existing standards and no new special commands,
* be compact and modular,
* use a robust opt-out of colour management and
* honour device colour calibration state

The slides are in the Printing section of the Device page on ColourWiki. They 
show decision policies during local spool file preparation and highlight the 
device profile selection. The scheme is somewhat wrapped around the Oyranos 
CMS, but should otherwise adhere to the above general principles.

The vendor profile mechanism is not the specific focus in these schemes as that 
is already covered by previous work and in parts in the CUPS documentation. The 
schemes integrate with vendor profiles flawless.

https://www.oyranos.org/wiki/index.php?title=Device_Settings#Printing


The original Inkscape drawings are provided below the schemes for easy editing. 
Please consider to share your edits to improve the schemes.


Btw. Joseph Simon will obtain a stipend from the Google Summer of Code 
programm to work specifically on a sample implementation for end to end 
print colour management "Color Management for the Common Printing Dialog 
(CPD)".
http://oyranos-cms.blogspot.com/2011/04/google-summer-of-code-2011-students.html


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management
www.behrmann.name + www.oyranos.org
