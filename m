Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=McCWqYtz3YZJDhdNvoUBDi8fG9PzAag5TeJeNrmnQa4=;
	b=ndYiBb927fVzmvWTjlWxAZFlEZ4k34kOqwvK0xWn57CesHuZzV6cBr2IuRTbYZmia1
	g+JaSw+VSDNtEYT+0qsecXAdRP854pbigx+bOP+AJHJj+XjOn7h7zH1bqBxbzvTx36iB
	DMG8aiqJlcOJdSN9SvMl/MTZkaW+TDo3Q3F+oQ+x1Mr4j2ro9wgQ28hu/wADOCJRgGFU
	EGSaDwQMeSiWDi7gZCY6RVWHNhJnp2mRvGq8o+ThTSZhJZbWKqIpXH1eqfj6ci21Fjwr
	bFCvCrdQpoCMrT22vE7UdRTwAJR9Lsro3s1rYmc9njtYv7CITvWfdXmdzpN3/Si3O6bw
	MyTQ==
MIME-Version: 1.0
In-Reply-To: <94101C68-DC20-420E-8C93-AAC754638926@apple.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
	<94101C68-DC20-420E-8C93-AAC754638926@apple.com>
Date: Wed, 25 Jun 2014 11:36:43 -0600
Message-ID: <CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Michael

You're right that I do not intend to file any patents, and you're also
right that I do not plan to hide ippusbxd from users with DRM. Granted
if I did wanted to do those things I still could, since I own the
copyright. The GPLv3 only applies downstream, where one needs a
license to avoid copyright infringement.

In general mainline distros distribute plenty of GPLv3 since the GNU
project's software has been GPLv3 for a long time. Android and OSX are
the only big OSes which include GPLv2 but avoid GPLv3.

Now it is true many companies involved with printing want to avoid
GPLv3 and so their engineers will not be able to contribute.

The low-down is that I'm working at about one tenth the market rate.
Thus I don't see myself as being an employee of GSoC but rather that
GSoC is providing a stipend to keep me afloat while I work on this. In
return I am asking that downstream users provide the same freedoms to
their downstream as I'm providing to them and in some cases provide
their own work under similar terms.

So what I'm trying to say is what I want to get out of this summer is
more power for users over their software, plus of course working IPP
over USB printers. This may not be compatible with some business
plans, which is okay since those business plans are not paying me
market rates either. Now if those business plans were interested in
making up the difference between the stipend and market rate I would
love to negotiate a friendly license, for them. Until then the
opportunity cost, the amount of money which would be in my bank
account if I was not working on ippusbxd, is approaching one and a
half Honda Civics at MSRP.

Now the BSD people have a different goal, they would prefer their
software get used even if it means users cannot edit it. For me if
users cannot edit the software then it might as well be proprietary,
and proprietary software licenses often include large bundles of cash.
So my price sheet would look like: A: lots of power to the users, or
B: lots of cash to me.


Daniel
PS: Michael, you might be thinking of how Apache 2 is not compatible
with GPLv2 since it includes restrictions on patents. While the Apache
foundation says that Apache 2.0 -> GPLv3 is compatible:
https://www.apache.org/licenses/GPL-compatibility.html
PPS: I understand where everyone is coming form, and I don't think any
of you are wrong or evil. I don't want to hurt anyone with my words or
actions. I hope this email layed out why I picked GPLv3
PPPS: I do understand that someone from the BSD side of open source
may think that I'm greedy, but please understand my preference is for
user freedom over the cash.

2014-06-25 10:24 GMT-06:00 Michael Sweet <msweet@apple.com>:
> Daniel,
>
> Unless you plan on filing patents for the work you've done for IPP USB, t=
he patent protections of GPL3 simply do not apply.  (and the reason why cor=
porations don't like the GPL3 patent provisions is because they are overly =
broad - use GPL3 software and you may be giving away your rights to assert =
your patents, even for defensive purposes...)
>
> Similarly, DRM is a non-issue - IPP USB involves no DRM and (I assume) yo=
u are not incorporating a blob or non-open code signing mechanism.  Any ope=
rating system mechanism falls under the "standard system library/service" c=
lauses.
>
> What may be an issue is future contributions - GPL2+ is generally OK but =
GPL3 will assure that few corporations allow their devs to help out for fea=
r of "contamination".  Apache is not GPL3-compatible.  2-clause BSD and MIT=
 are GPL3 compatible but don't prevent people from taking your work and doi=
ng something non-free with it.
>
> So in my mind the best choices (the ones that will create the fewest prob=
lems long-term) are GPL2+ or BSD/MIT.
>
> But perhaps the best people to ask are the lawyers at the various Linux d=
istros - they are the ones that need to distribute your work, and if you ch=
oose a license they are not comfortable with then it won't be included in t=
he distros.
>
>
> On Jun 25, 2014, at 12:05 PM, Daniel Dressler <danieru.dressler@gmail.com=
> wrote:
>
>> Hello everyone
>>
>> I just wanted to chime in and explain why I picked GPLv3.
>>
>> The two big reasons is that the GPLv2 does not handle DRM and patents.
>> Which is understandable since version 2 was written before DRM was
>> enforceable by law and before software patents were common.
>>
>> Now I'm not a lawyer but I have read the GPLv3 license. The license
>> handles patents by requiring a patent license to cover the software.
>> Which just means that if software A violates patent B and a developer
>> for company C contributes to software A then patent B must be licensed
>> to users of software A. With some extra details: that company C that
>> patent B, and any new patents or new additions to the software do not
>> create further obligations to license father patents.
>>
>> The purpose of the GPLv3's patent clauses is to prevent someone from
>> distributing code and then placing further restrictions on the user.
>> The GPLv3 is very similar to Apache 2 in regards to patents. With
>> Apache 2 being Google's and Microsoft's preferred license as of late.
>>
>> DRM meanwhile is the bigger sticking point for corporations. This is
>> also where there is controversy. My reading of the GPLv3 made me think
>> it is okay to encrypt and check signatures of operating system images
>> and updates provided the user can get their own images and updates
>> installed. Which as a user an unlocked android this is a feature I
>> like.
>>
>> In short I think GPLv3 does a better job of guaranteeing the user's free=
doms.
>>
>> Now, any code in my presentation at the summit will be CC0, likewise
>> any contributions to other projects as part of integrating ippusbxd
>> will be under those project's existing licenses.
>>
>> Daniel
>>
>> PS: ippusbxd only links with libusb, a lgpl system library. I cannot
>> think of something we could gain by switching to GPLv2. Apple already
>> has their ippusbd and I doubt Microsoft is interested in using mine =3D)
>> Even if one of them was interested I expect they would want to
>> negotiate a more corporate friendly license than even GPLv2.
>> PPS: The MIT and BSD licenses do not handle patents which I'd say
>> makes them unreliable. The Apache 2 license is better if you want a
>> non-copyleft license.
>>
>> 2014-06-25 8:26 GMT-06:00 Till Kamppeter <till.kamppeter@gmail.com>:
>>> Should we do GPL2+ then or better something non-GPL (like MIT, BSD, ...=
)
>>> to get maximum flexibility?
>>>
>>>   Till
>>>
>>> On 06/25/2014 01:09 PM, Michael Sweet wrote:
>>>> GPL3 is a poison pill for most corporations, thanks to the draconian p=
atent terms and generally unfriendly stance towards any other OSS license. =
 Apple has a blanket policy of not allowing any GPL3/LGPL3 use without spec=
ial authorization, and an absolute prohibition of inclusion of GPL3/LGPL3 l=
icensed software or documentation in any products.
>>>
>>>
>>> _______________________________________________
>>> Printing-architecture mailing list
>>> Printing-architecture@lists.linux-foundation.org
>>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectur=
e
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
