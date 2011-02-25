Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <AANLkTi=t2v4Nw9htdF=4HuprP-jGhnrxqp=WfRTaYOMQ@mail.gmail.com>
Date: Fri, 25 Feb 2011 02:46:27 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <0E5D3E3C-BBA0-468E-8571-8FEC59D945C8@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<alpine.LNX.2.00.1102241922270.6623@roma.rasena>
	<40F5FF0F-3AAC-4661-9FF0-4568326A2D51@colorremedies.com>
	<42A75819-F34A-4E8B-A10A-279A60775692@colorremedies.com>
	<AANLkTimHoS=_59Ew5VhVZ6e0FjL95Sf=xcQermUCDw_y@mail.gmail.com>
	<C40A61F6-0EDD-474B-A66D-1EAA40ACF8BF@colorremedies.com>
	<AANLkTi=yZcKwzCpDVFB8Ufj5hXLfwbbk6zg8vzJ9XdoO@mail.gmail.com>
	<ACC2A452-CC27-4735-BC0D-1758DDB48D4C@colorremedies.com>
	<AANLkTi=t2v4Nw9htdF=4HuprP-jGhnrxqp=WfRTaYOMQ@mail.gmail.com>
Subject: Re: [Printing-architecture] Common Printing Dialog and color
	management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Richard Hughes <hughsient@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org




On Feb 25, 2011, at 2:10 AM, Richard Hughes wrote:

> On 24 February 2011 22:51, Chris Murphy <lists@colorremedies.com> =
wrote:
>> It is common in prepress (usually due to emotionally unstable =
reasons) to strip CMYK profiles from images and save them untagged.
>=20
> Urgh. Uncool. In this situation, won't the "press" be doing something
> custom with Ghostscript and not just clicking "File->Print, OK" and
> hoping for the best?

Prepress already has a specific press condition in mind by the time they =
are manipulating files, and so they are producing /DeviceCMYK + spot PDF =
that they expect a RIP to honor exactly. All color management is assumed =
to have occurred a long time before this, usually in native application =
files. So the app does this conversion and produces a press ready PDF =
that is completely untagged.

There are cases were prepress insists on stripping profiles in CMYK TIFF =
and JPEG also, and then dropping those into a page layout application. =
They too have been converted to CMYK for a specific press condition and =
absolutely positively do not want them getting converted again, so in =
their rule book the best way to ensure there aren't any additional =
conversions of CMYK TIFF that might have black only text treatment in =
them (which become 4 color black text if they are converted, which is =
instantly a crap print job someone has to eat, usually prepress), or any =
number of other registration anomalous behaviors, they strip embedded =
color profiles from documents: TIFFs, JPEG, EPS, PDF, you name it. =
/DeviceCMYK is the way it's done.

And of course, color on the web is a problem. No tags there at all. =
Stripped on purpose. And I know very very few readers that honor EXIF =
metadata which often contains Adobe RGB as the color space for the =
image. But apps that assume sRGB don't check EXIF and assume these Adobe =
RGB images are actually sRGB. Bad. EXIF color space is a big missing =
link for applications.


Chris Murphy=
