Message-ID: <4890C6FE.2090307@gmail.com>
Date: Wed, 30 Jul 2008 21:54:38 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com>
In-Reply-To: <48908DD8.2080405@gmail.com>
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Michael R Sweet <msweet@apple.com>, Jonathan Riddell <jriddell@ubuntu.com>

After getting some suggestions from Mike Sweet I have updated the specs 
again in some points:

- Fallback when there are no Quick Presets: Option to choose BW or color 
is "ColorModel", not "ColorMode".

- Simplified option tagging: Now the PPD contains one entry per tag. It 
defines the tag, its UI string and the options being under that tag. No 
additional lines in each option entry any more.

- Option names in tag definitions and quick preset definitions start 
with an asterisk, to clearly mark them as option names and following the 
Adobe convention where main keywords start with an asterisk.

- The CUPS options brightness, gamma, hue, and saturation are deprecated 
(will be removed from CUPS soon) and therefore they will not get 
included in the Common Printing Dialog. I have removed them from the PPD 
extensions specs.

- The CUPS options page-left, page-right, page-top, and page-bottom 
apply only to plain-text jobs. Therefore I have put them under the 
"Text" tag.

Mike, thank you very much for your help.

    Till

Till Kamppeter wrote:
> Hi,
> 
> after the conference call last week with Peter Sikking and the two GSoC 
> students implementing the dialog and after some discussion with Mike 
> Sweet from CUPS I have updated the specs of the PPD extensions:
> 
> http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions
> 
> I have done the following changes:
> 
> - Replaced the "*OPQuickPresets" keyword by "*APPrinterPreset" as
>   defined in the CUPS PPD extensions on
>   http://www.cups.org/documentation.php/spec-ppd.html#APPrinterPreset
> 
> - Mentioned that UI texts of PPDs should not be too long due to limited
>   space in the dialog.
> 
> - Mentioned that a PPD cannot have more that 11 tags.
> 
> - Allow tags for options which are not in the PPD (like CUPS options)
> 
> - Allow canceling tags (like the predefined tags coming from CUPS
>   options).
> 
> - Added section about CUPS options and their pre-defined tags
> 
> - Added new "donthide1choice" widget hint to not suppress an option
>   when it has only one choice.
> 
> I appreciate very much your comments, especially about the tags for the 
> CUPS options and additional document types for the "*APPrinterPreset" 
> keyword.
> 
> I think with these extensions we should be well approaching the final 
> specs for the PPD extensions.
> 
>    Till
> 

