Message-ID: <489098E8.1050805@gmail.com>
Date: Wed, 30 Jul 2008 18:38:00 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com> <4890962F.4000305@apple.com>
In-Reply-To: <4890962F.4000305@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Common Printing Dialog: PPD extension
	specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Jonathan Riddell <jriddell@ubuntu.com>

Michael R Sweet wrote:
> Till Kamppeter wrote:
>> ...
>> I think with these extensions we should be well approaching the final 
>> specs for the PPD extensions.
> 
> OK, comments:
> 
> - The option for setting the color mode is "ColorModel", not
>   "ColorMode" as shown in the last presets table.
>

No problem, will fix it.

> - I don't understand why you have separate OPOptionTag and OPTagList
>   attributes. Given the definition of both, you could compact this
>   to simply:
> 
>   *OPOptionTag <name>/<English UI string>: "*<option1> [*<option2> ...]"
> 
>   For example:
> 
>   *OPOptionTag ResourceSaving/Resource Saving: "*Duplex"
>   *OPOptionTag PaperHandling/Paper Handling: "*Duplex *InputSlot"
> 

I as thinking about having the tags set in the sections of the 
appropriate options and I ended up with no good place for the UI strings 
which lead me to create the second item. Good idea, lets simplfy it as 
you suggested.

>   Regardless of the way you ultimately define this, I would still
>   stick with the Adobe convention of specifying main keywords
>   (options) with a leading asterisk (like my example).
> 

Yes, then lets do it with asterisks.

> - The CUPS options brightness, gamma, hue, and saturation are
>   officially deprecated and should not be included in new standards.
>   They *will* be removed in a future CUPS release.
> 

I will remove them (where I wish that the Gamma option would not be 
removed, as one can quickly correct too dark or too light output with it).

> - The CUPS options page-left, page-right, page-top, and page-bottom
>   only apply to text files and should only appear in the Text tag.
> 

If I use number-up or fitplot with PostScript, PDF, or image input, will 
the margin settings not be used then to determine the frame into which 
the pages get scaled?

    Till
