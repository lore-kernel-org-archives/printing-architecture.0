Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=F5Bmq3PTn3MBQyZhYQNXtCfBXDHIEtWzyCO1AaqYSiI=;
	b=u4ezmO9ndBO4KxJeyHPRW0HqP0qjS0Pf1Ml/qMTKYZjgVz72ZJwM7CGs39CvHNv3ke
	eUwDPdrpWCw/pu7MCKhXeTwusXvVh0wunN1YDGrsp3QdR2WD+VmaGrcaX9YmdvBgnZoN
	atraGeJ9dhHB9pkRo40XTDBLxV7xiEFi9UVss=
Message-ID: <4EF38FEB.10608@gmail.com>
Date: Thu, 22 Dec 2011 18:15:39 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <OFEC2AFEBC.BF0245F2-ON4925796D.0018E5A5-4925796D.0018FF53@mta.ricoh.co.jp>
In-Reply-To: <OFEC2AFEBC.BF0245F2-ON4925796D.0018E5A5-4925796D.0018FF53@mta.ricoh.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] Meeting Minutes -
 OpenPrinting Japan Dec. 2011 meeting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: yoshito.nishihara@nts.ricoh.co.jp
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, printing-japan@lists.linux-foundation.org

On 12/21/2011 02:33 AM, yoshito.nishihara@nts.ricoh.co.jp wrote:
>
> ------------------------ Englsih-------------------------

Thank you for translating.

I am already on end-of-year vacation but I am answereing e-mail and do 
urgent stuff from time to time. I have internet via local pre-paid SIM here.

> Meeting Minutes - OpenPrinting Japan Meeting in Dec. 2011
> 15:00 - 17:00 @ The Linux Foundation Office at Yokohama.
> Attendee - Miyata(Cannon),
> Ohtani(BBR),Shishido(NECSoft),Chigusa(Ricoh),Nishihara(Ricoh)
>
> - Messages to Till
>    - We would like to know what kind of  Applications will support CPD on
> Ubuntu12.10 if it's already planed.

It is planned to make all applications coming on the desktop CD of 
Ubuntu 12.10 using the CPD.

>    - We think we need to join the discussion of removing filters from CUPS.
>          - It's understandable that you want to remove some filiters.

I have already corrected my removal plans somewhat. What will be removed 
in any case are filter only for PostScript-based printing, bannertops, 
texttops, and imagetops. Filters for turning images into PDF will stay, 
I will perhaps only remove exotic formats like Photo CD or SUN Raster, 
especially if I run into problems maintaining this code. For common 
formats like PNG or JPG the code uses maintained standard libraries.

>          - But we cannot accept it easily if users wouldn't be able to do
> something that they could have done before removing the filiters.

As said above, most input format will stay to be maintained, only exotic 
image formats a subject to be removed in case of maintenance problems.

>    - We found the comment it says that "Ubuntu Precise will probably still
> use system-config-printer as GNOME's new tool is missing too many important
> features" on the following document.
>

Yes, that is true. system-config-printer is a sophisticated printer 
setup tool working as IPP client for CUPS, doing all communication with 
CUPS via IPP and doing network scans with Samba, It also calls the 
driver management software Jockey to search, download, and install 
printer driver packages from OpenPrinting.

The GNOME tool has only very basic functionality, not even the 
capability of setting option defaults.

Lars Uebernickel is working on this. Lars, can you give a more detailed 
state of the art?

> http://lists.linux-foundation.org/pipermail/printing-architecture/2011/002387.html
>      We would like to know specific features which were lost.
>
> 1.Action Items Follow-ups
>     - Oost result of vector spec confirmation (mihara) - not yet
>     - Update OPFC Web site (toratani) - not yet
>     - Ask about PDF licence to AXE(mihara) - it dosen't need to ask anymore.
>

PDF filters are now upstream-maintained at OpenPrinting and will not get 
transferred to Apple.

> 2.New Action Items
>     - Ask some questions to Till.

Answered above - DONE.

>     - Investigate the issue that it takes too much time to print pdf
> file.(RICOH)
>
> 3.CPD will come in Ubuntu 12.10
>     - ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20111109.htm
>     - What kind of application will support it ?
>
> 4. Ubuntu Precise will probably still use system-config-printer as GNOME's
> new tool is missing too many important features ?
>     -
> http://lists.linux-foundation.org/pipermail/printing-architecture/2011/002387.html
>     - What kind of features will be gone?
>
> 5. Removing some filiters from CUPS
>     - Japanese members have to join the discussion.
>
> 6. About the issue that it takes too much time to print a pdf file.
>     - An user using Debian 6 reported to a vender that he can not print a
> pdf file (Ricoh).

Stable Debian has rather old versions of Ghostscript, Poppler, Cairo, 
and the CUPS filters, In recent versions a lot of performance 
improvements were done following my upstream bug reports. Please try a 
Ubuntu Oneiric live CD for reference (do all software updates after 
booting from the CD). If you still experience problems, please report 
bugs at Ubuntu.

>     - Found out that it take long time to finish the proccess of pdftops.
>     - The printer may have canceled the job because it didn't accept any
> data for a long time.
>     - The issue also happens when you use the generic ppd.
>     - Create a file which happens the same issue and you can send it to
> others at first(Ricoh).
>         - Ricoh has a pdf file which happens it but it cannnot be
> distributed becasue of a license.
>
> 7. Actions of next year
>     - A meeting is held once every two months as in the past.
>     - Japanese members should perticipate the meetings which held in other
> contories using telecon 2 or 3 times a year.

We need to set meeting dates for the US/Europe/Japan meetings.

    Till
