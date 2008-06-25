Message-ID: <4862BB1C.60500@gmail.com>
Date: Wed, 25 Jun 2008 23:39:40 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <001b01c8d263$64a884a0$9e72150a@nsl.ad.nec.co.jp>	<485B44C5.4000509@gmail.com>	<485B5347.3090408@fujixerox.co.jp>	<485B71CB.9090209@fujixerox.co.jp>
	<485F6319.8060101@fujixerox.co.jp>
In-Reply-To: <485F6319.8060101@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	June Meeting Minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Thank you for the review of the specs. I have improved the specs and 
given my comments below.

Osamu MIHARA wrote:
> (4) CPD Specification Review
> ----------------------------
[...]
> ==== PPD Extensions ====
> - Quick Presets
>   The definition should be in formal matter such as BNF.
> 

I think BNF is somewhat overkill for the mostly one-line expressions in 
the PPD file. I have now added man-page-like syntax schemes with 
descriptions of the elements.

>   Need more explanation for each items, in special a) in Quick Presets
> (no one can understand relationship of a) and b)).
> 

I have added an introduction telling what the quick preset buttons are.

To simplify, I have dropped a) now. If a driver developer wants to 
control exactly one option with the quick preset buttons, he lets each 
button only set that one option to a value appropriate to the button.

>   Need detail explanation for Lecacy case
> 

I have improved these explanations now.

> - Option Tagging
>   Is it a MUST item?  What happens for a PPD without tagging?
> 

It is not a MUST. A legacy fallback based on the option groups as 
proposed by the Adobe specs is provided. But using tags is highly 
recommended.

> - Icons for options and chises
>   Icons should be switched based on language settings.
> 

As it is intended for now the icons should play more or less the role of 
icons in the menus and toolbars of desktop applications. These are 
pictograms without any text to be used with any language, so icon sets 
for different languages are not needed.

Please tell me what you would like to put into icons and logos and why 
you want to have the language-dependent?

    Till

