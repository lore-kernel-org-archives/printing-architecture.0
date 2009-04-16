MIME-Version: 1.0
In-Reply-To: <49E768BF.6030404@apple.com>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CAF@EEAEX03.us.epson.net>
	<49E768BF.6030404@apple.com>
Date: Thu, 16 Apr 2009 13:29:49 -0400
Message-ID: <e395be80904161029u6e2a1058n3a6e1283d5d21fca@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] [Printing-summit] Preview for CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

Hi,

I agree with Glen's suggestion - default images for preview
should ALWAYS be the fallback - for the limited-resource
embedded environment REAL preview images are NOT a
good idea.

I also agree with Mike (and Glen) that displaying the default
image WHILE generating the real preview image is a friendly
design approach.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
  579 Park Place  Saline, MI  48176
  734-944-0094
summer:
  PO Box 221  Grand Marais, MI 49839
  906-494-2434



On Thu, Apr 16, 2009 at 1:19 PM, Michael R Sweet <msweet@apple.com> wrote:
> Petrie, Glen wrote:
>>
>>
>> Peter, Till,
>>
>>
>>
>> I believe my understanding from the print-summit was that the new CPD
>> would =93always=94 preview the actual print content, which was based on
>> Peter=92s usability test results. =A0The concern I have is that the
>> potential processing in creating the preview would include the entire
>> print chain; even though the image is at a very low resolution. =A0This
>> level of processing has a potential large time delay. =A0 If the End-Use=
r
>> starts making print option changes that affect the preview; the preview
>> image will have to be re-rendered, which may take too much time.
>>
>>
>>
>> I would like to suggest that the CPD add and use, as the default, an
>> internal default image that illustrates the print intent and print
>> options but not the actual print content. =A0This would reduce potential
>> heavy processing for the actual print content preview. =A0However, the
>> user should be able to enable display of the actual print content and
>> willing to accept the potential time delay in creating the actual print
>> content.
>
> *Or* you could display the default image while generating the actual
> preview image (with some sort of animated progress indicator/spinner)
> so that you get the best of both worlds.
>
> --
> ______________________________________________________________________
> Michael R Sweet =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Senior Pri=
nting System Engineer
> _______________________________________________
> Printing-summit mailing list
> Printing-summit@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-summit
>
