Message-ID: <48916564.10704@gmail.com>
Date: Thu, 31 Jul 2008 09:10:28 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com> <4890C6FE.2090307@gmail.com>
	<200807310148.m6V1mTkP006833@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200807310148.m6V1mTkP006833@dsl092-065-009.bos1.dsl.speakeasy.net>
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
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com, msweet@apple.com

Robert Krawitz wrote:
>    Date: Wed, 30 Jul 2008 21:54:38 +0200
>    From: Till Kamppeter <till.kamppeter@gmail.com>
> 
>    After getting some suggestions from Mike Sweet I have updated the specs 
>    again in some points:
> 
>    - Fallback when there are no Quick Presets: Option to choose BW or color 
>    is "ColorModel", not "ColorMode".
> 
>    - Simplified option tagging: Now the PPD contains one entry per tag. It 
>    defines the tag, its UI string and the options being under that tag. No 
>    additional lines in each option entry any more.
> 
>    - Option names in tag definitions and quick preset definitions start 
>    with an asterisk, to clearly mark them as option names and following the 
>    Adobe convention where main keywords start with an asterisk.
> 
>    - The CUPS options brightness, gamma, hue, and saturation are deprecated 
>    (will be removed from CUPS soon) and therefore they will not get 
>    included in the Common Printing Dialog. I have removed them from the PPD 
>    extensions specs.
> 
>    - The CUPS options page-left, page-right, page-top, and page-bottom 
>    apply only to plain-text jobs. Therefore I have put them under the 
>    "Text" tag.
> 
>    Mike, thank you very much for your help.
> 
> One other hint I'd like: "hide", to not display the option at all.
> This is for the fine adjustment options for the Gutenprint floating
> point options.  With proper input widgets, the fine adjustment options
> shouldn't display at all.
> 

I have added the "hide" widget hint now.

    Till
