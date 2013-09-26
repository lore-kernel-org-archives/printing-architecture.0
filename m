Return-Path: <chanlists@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=iM9b1/hAPdlL7BzVloI+4ArydHsFHNytrNDngeGJf+U=;
	b=yX2YMyLYbnlnVDGwsKHaU6mTeD4XEZyuYj3HmSDKF7JZe5V3dAiMJVvGVFLsi8qp1F
	7VfYtbIST1K75q7+FgN/z3OlhkGjXsun42yvVQjv2Ng1YijH2qy/uBI4Vll7XUcTKWXl
	2Iz5YIzMICqM3wmPvgTJjRNs+Zfn+kYiXN2CzyF+0+eXG/c9LNx0mE9C0wcyPqZy0rdc
	egcl8/mAvEMdUQkcmfEnCORneUJcuK87uYNCYleJA6Vyd553hWttzF0rKhORAXQc/RFl
	RdGI3bbpIeEC/1tKuVKn2gQhjBR3/JOTHCjXUiBNZ2J3GA6EeGbJM8hIKZKqrfWk+vKZ
	nSoA==
Message-ID: <5244330A.4020006@googlemail.com>
Date: Thu, 26 Sep 2013 15:13:46 +0200
From: Christian <chanlists@googlemail.com>
MIME-Version: 1.0
References: <523A2166.8080004@googlemail.com>
	<CA+3RNfg4RxHMwo=VdzxC04HjQ8br_c6ocGED-DhZqf9PQvDW-Q@mail.gmail.com>
In-Reply-To: <CA+3RNfg4RxHMwo=VdzxC04HjQ8br_c6ocGED-DhZqf9PQvDW-Q@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------060602080609060703000506"
Subject: Re: [Printing-architecture] windows, samba, cups, color and BW
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>, printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.
--------------060602080609060703000506
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,

thanks for the message, Alex. I have run the whole thing with
"PreserveJobFiles yes" on the cups server and tested the four different
combinations of the two settings. The result is (RB short for the color
vs. b+w radio button, and ADV short for the "ColorModel" setting under
the advanced tab):

* RB_color_ADV_bw.ps (490 KB) hochgeladen auf YouSendIt:
http://www.hightail.com/download/OGhlNU1BTXYrV3hjR01UQw*
RB_color_ADV_color.ps (490 KB) hochgeladen auf YouSendIt:
http://www.hightail.com/download/OGhlNU1BTXY5NVVpR01UQw* RB_bw_ADV_bw.ps
(490 KB) hochgeladen auf YouSendIt:
http://www.hightail.com/download/OGhlNU1BTXZtUUZBSXNUQw*
RB_bw_ADV_color.ps (490 KB) hochgeladen auf YouSendIt:
http://www.hightail.com/download/OGhlNU1BTXZ6NE9LRmNUQw

So I though I could write a cups filter and correct this behavior. I
should just be able to change the ColorModel in the postscript to get
the desired effect (tested). But how do I know on the cups server what
the setting of the radio button was? Doing a diff between e. g.
RB_bw_ADV_color.ps and RB_color_ADV_color.ps does not give me much of a
hint...

I appreciate any help as I am not certain I can educate everybody here
to use a different button or a different application, so I will have to
make that work somehow...

An alternative would be to have different printer queues for color and
b+w, but than how can I make the radio button disappear from the dialog box?

Thanks,

Christian


Am 19.09.2013 20:10, schrieb Alex Korobkin:
> Hi Christian, 
> 
> I have the same setup, but I didn't notice this problem before. 
> You see, radio buttons on the "Paper / Quality" tab simply tell Windows
> apps to render print jobs in color or b&w. At the same time, "Color
> mode" within the Advanced page actually inserts a PostScript command
> into the job that tells Ricoh printer to print in color or in b&w mode,
> regardless of the contents of the job.
> 
> I think it is a bug in Adobe Reader: it doesn't honor color/b&w radio
> buttons in the printer settings at all. However, if you look under
> Properties button of the Print dialog in Reader, there is a "Print in
> grayscale" checkbox. You can tell your users to use that one instead of
> going all the way to Advanced options. 
> 
> 
> 2013/9/18 Christian <chanlists@googlemail.com
> <mailto:chanlists@googlemail.com>>
> 
>     Dear list,
> 
>     I have CUPS 1.5.3 running under Debian wheezy. I use Samba, cupsaddsmb
>     and the Microsoft windows postscript printer driver for windows (7)
>     clients. I have a printer (RICOH Aficio MP C3502, could post PPD) which
>     is a rather big network multifunction device. From linux, everything
>     works fine. For windows, printing via samba, I have set up a special raw
>     queue in CUPS using appropriate Filter definitions in the PPD, and from
>     the logs, I can confirm that no filtering of the postscript is being
>     done on the linux side. From windows clients, using e. g. MSWORD, all of
>     the printer options (staple, B+W vs. color, ...) are available and work
>     as far as I can tell.
> 
>     The only exception is printing from Adobe Reader under Windows. Most of
>     the options are honored, except the "Color vs. B + W" option. Under the
>     "Paper / Quality" tab in the printer options, there is a set of two
>     radio buttons with little pictures next to them for Color vs. Black +
>     White. Those do not work for me.
> 
>     I can only get it to print B + W from Adobe reader under windows if,
>     rather than using those buttons, I go into "Advanced..." and then chose
>     "Color Mode: Black and White" in the list of printer options. I know
>     this, but it could be confusing to our users...
> 
>     So I'd like to understand the background better, and why only Adobe
>     Reader does this, and whether this behavior can be fixed, e. g. by PPD
>     hacking or other tricks...
> 
>     Sorry to ask here, but the "forums" link is dysfunctional. Let me know
>     if I can help. Best,
> 
>     Christian
>     _______________________________________________
>     Printing-architecture mailing list
>     Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
> 





--------------060602080609060703000506
X-Mozilla-Cloud-Part: cloudFile; url=http://www.hightail.com/download/OGhlNU1BTXYrV3hjR01UQw; name=RB_color_ADV_bw.ps
Content-Type: application/octet-stream
Content-Transfer-Encoding: 7bit


--------------060602080609060703000506
X-Mozilla-Cloud-Part: cloudFile; url=http://www.hightail.com/download/OGhlNU1BTXY5NVVpR01UQw; name=RB_color_ADV_color.ps
Content-Type: application/octet-stream
Content-Transfer-Encoding: 7bit


--------------060602080609060703000506
X-Mozilla-Cloud-Part: cloudFile; url=http://www.hightail.com/download/OGhlNU1BTXZtUUZBSXNUQw; name=RB_bw_ADV_bw.ps
Content-Type: application/octet-stream
Content-Transfer-Encoding: 7bit


--------------060602080609060703000506
X-Mozilla-Cloud-Part: cloudFile; url=http://www.hightail.com/download/OGhlNU1BTXZ6NE9LRmNUQw; name=RB_bw_ADV_color.ps
Content-Type: application/octet-stream
Content-Transfer-Encoding: 7bit


--------------060602080609060703000506--
