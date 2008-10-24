Message-ID: <4901C12D.7010200@fakenhamweb.co.uk>
Date: Fri, 24 Oct 2008 13:35:57 +0100
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<48FB37A3.8090007@gmail.com>	<200810191602.m9JG2D84030719@dsl092-065-009.bos1.dsl.speakeasy.net>	<48FF3D87.4070807@gmail.com>	<69B1EF35-D85E-477C-848C-AB59A7745809@mmiworks.net>	<200810230019.m9N0JCIp018128@dsl092-065-009.bos1.dsl.speakeasy.net>
	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>
In-Reply-To: <0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: peter sikking <peter@mmiworks.net>
Cc: Robert Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, till.kamppeter@gmail.com

Hi,

peter sikking wrote:

> For anybody to be able to help you at all, you first need to
> set a clear vision for what the purpose of gutenprint is in
> the printing world of today.

Part of what makes this difficult is that gutenprint is at the same time 
behind-the-scenes infrastructure, and also user-facing, since the 
structure of its options system is exposed indirectly through the PPDs.

 > You will have to say good bye to
> some old goals.

I think one thing we may have to revisit will be the assumption that 
gutenprint's options are mapped directly to options in the printing 
dialog.  The introduction of simplified PPDs was a step in this 
direction, but the difficulty we've had in figuring out how to handle 
calibration curves and so on makes me think it may be time to go further.

With the recent push to make the Epson driver more data-driven, and 
pulling previously hard-coded data into XML files, I wonder whether we 
need to consider having an administration tool, completely separate from 
the PPD-based print chain, which can be used by administrators and 
"Domain Experts" (people who know how to handle colour-management and 
calibration, but don't care about code) to fine tune things like the 
low-level ink controls, and calibration curves, which are so hard to fit 
into a user-facing print dialog.

Gutenprint's "Quality" and "Media Type" options between them set a large 
number of options to hard-coded defaults - I envisage this hypothetical 
administration tool being used to *change* these defaults, and save them 
  (along with calibration curves, and ideally ICC profiles too) as files 
which could then be shared with other users.  This would solve another 
difficulty that was brought up when we first started discussing 
calibration and linearization - being able to *distribute* and share 
settings.

None of this detracts from the continued ability of software which uses 
Gutenprint directly, like the advanced print plugin, or PhotoPrint, from 
continuing to offer full control, but it could potentially make life 
much more pleasant for "one-click-print" users.

All the best,
--
Alastair M. Robinson
