Message-Id: <1C296078-3075-4D08-BE61-6CE082C165DB@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379CAF@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v930.3)
Date: Fri, 17 Apr 2009 20:08:11 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CAF@EEAEX03.us.epson.net>
Subject: Re: [Printing-architecture] Preview for CPD
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
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

Glen wrote:

> I believe my understanding from the print-summit was that the new =20
> CPD would =93always=94 preview the actual print content, which was =
based =20
> on Peter=92s usability test results.

and the usability test results proved that the preview is a huge
success and needs to be 100% "true". users will fully depend on
it to start trusting the print process, and trust cannot be
betrayed by a quick hack.

no generic image can be a replacement and no army of engineers
can discuss away this requirement.

the speed with which the preview is generated is of course also
100% a usability issue. we basically have 1 second (on modern
hardware) to get that first page there. we will have a busy
indication for that one second (max) wait.

the optimisation opportunities are of course in that the longest
side of the page is a low (225 at the moment) fixed (compile time,
I say) number of pixels. there is going to be no resizing of the
dialog, and no zooming of the preview. that is designed in, for
other UI reasons, but it comes in handy here.

the second optimisation opportunity is that only the first page
needs to be 'immediately' there, in case of N-up > 1 more pages
but the needed fidelity is proportionately lower (in integer steps,
another optimisation opportunity).

every trick in the book will probably have to be used to get
a specialised preview pipeline up to speed. remember that when
the printing dialog comes up that it occupies users' attention
and hence has a licence to hog processor resources. I have
no qualms about that.

the preview is one big conn-trick, it simply needs to never
get caught cheating, whatever the print is. without a real
preview there is simply no common printing dialog.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



