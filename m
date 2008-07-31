Message-ID: <4891C6AB.7020106@gmail.com>
Date: Thu, 31 Jul 2008 16:05:31 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com>
	<4890C6FE.2090307@gmail.com>	<200807310223.m6V2NkAv006976@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48918374.8080404@gmail.com>
	<200807311226.m6VCQED9017811@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200807311226.m6VCQED9017811@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD extension specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com

Robert Krawitz wrote:
>    Date: Thu, 31 Jul 2008 11:18:44 +0200
>    From: Till Kamppeter <till.kamppeter@gmail.com>
> 
>    Robert Krawitz wrote:
>    > I've added support for Quick Presets using the Image Type
>    > (StpImageType) and for widget hinting.  They pass cupstestppd.  Till,
>    > can you check them out (use "make ppd-global" to produce
>    > multi-language PPDs).
> 
>    Generally, the PPDs are generated correctly, but there are some problems:
> 
>    - All the translated UI strings are English for me. My distro is
>    Ubuntu Intrepid. What do I have to change to get actual
>    translations. I would like to have multi-language PPDs in both
>    Ubuntu and LSB packages.
> 
> How did you create the PPD files: are these statically generated
> files, did you use cups-genppdupdate, did you create new queues?
> 
> What locale is your system running in?
> 
>    - There is a small bug in the *OPOptionHints lines: At least for
>    the options whose machine-readable names start with "Stp" the
>    option names in the *OPOptionHints lines do not start with
>    "Stp". Replace lines like
> 
>    *OPOptionHints Weave: ...
> 
>    by
> 
>    *OPOptionHints StpWeave: ...
> 
>    Check this for all options
> 
> Done.
> 
>    - I have changed the syntax of the *OPOptionHints keyword from
> 
>    *OPOptionHints <option name>: <hint1>[, <hint2>, ...]
> 
>    to
> 
>    *OPOptionHints <option name>: "<hint1> [<hint2> ...]"
> 
>    to be more consistent with the syntax of the other keywords of my PPD 
>    extensions and also to be compatible with CUPS DDK. CUPS DDK is not able 
>    to handle lines without quotes. It would add the quotes. With the quotes 
>    we also open the possibility to distribute the hints over more than one 
>    line.
> 
>    *OPOptionHints StpBrightness: slider, input, spinbox
> 
>    has to get replaced by
> 
>    *OPOptionHints StpBrightness: "slider input spinbox"
> 
>    now.
> 
> OK.
> 
>    - For the fine adjustment options add lines like
> 
>    *OPOptionHints StpFineBrightness: "hide"
> 
>    now.
> 
> Yup.
> 
>    > I have not added support for option tagging, which will be more
>    > complicated and will need some (minor) core changes.
> 
>    Here the tags need to be well selected so that the user finds the
>    desired controls easily. You could use the BZR snapshots of the
>    dialogs under development to test drive your tags.
> 
> OK.  I'm not going to try to get that into beta4.
> 

Now everything except the translations in the globalized PPDs is correct.

    Till

