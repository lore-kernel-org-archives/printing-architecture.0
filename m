Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=wZsX+m430MkQXe/q2rDpommsUdHmOb84Iuc5VjWrGRU=;
	b=kscbCBnVF+jbtiL8+2e7GanlQO3EXzIvqcpMkP4Z8LRaJtYUj1MVeC7GmQYo+ygfSq
	Js0jEJFDpaBAB/Zm98fonaQd6czyec+SfZDMa4vuv7BizGCrOkZLDGoTZ7JYooIZsTL+
	uC91Ymf6WmULem0x3HmFiUm+sU2dMGmR1MvXAlA4hA+6rczc79MNFu4hYBROJfPT+Idl
	qNn9kSfBklpncv/yoDxxXgX7c/kcqi7IRHJIYdjblk/lPwq1olUyXdmXPFKpX0uvefOl
	NNe1fSyM47VF+wdCRz86gHNZ4YyC/XT0PjxAvRh0frN1YQ+Ko/C63q2O2j02Fa+nXJlr
	iuXQ==
MIME-Version: 1.0
In-Reply-To: <53AADC12.50705@gmail.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
Date: Wed, 25 Jun 2014 10:05:31 -0600
Message-ID: <CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hello everyone

I just wanted to chime in and explain why I picked GPLv3.

The two big reasons is that the GPLv2 does not handle DRM and patents.
Which is understandable since version 2 was written before DRM was
enforceable by law and before software patents were common.

Now I'm not a lawyer but I have read the GPLv3 license. The license
handles patents by requiring a patent license to cover the software.
Which just means that if software A violates patent B and a developer
for company C contributes to software A then patent B must be licensed
to users of software A. With some extra details: that company C that
patent B, and any new patents or new additions to the software do not
create further obligations to license father patents.

The purpose of the GPLv3's patent clauses is to prevent someone from
distributing code and then placing further restrictions on the user.
The GPLv3 is very similar to Apache 2 in regards to patents. With
Apache 2 being Google's and Microsoft's preferred license as of late.

DRM meanwhile is the bigger sticking point for corporations. This is
also where there is controversy. My reading of the GPLv3 made me think
it is okay to encrypt and check signatures of operating system images
and updates provided the user can get their own images and updates
installed. Which as a user an unlocked android this is a feature I
like.

In short I think GPLv3 does a better job of guaranteeing the user's freedom=
s.

Now, any code in my presentation at the summit will be CC0, likewise
any contributions to other projects as part of integrating ippusbxd
will be under those project's existing licenses.

Daniel

PS: ippusbxd only links with libusb, a lgpl system library. I cannot
think of something we could gain by switching to GPLv2. Apple already
has their ippusbd and I doubt Microsoft is interested in using mine =3D)
Even if one of them was interested I expect they would want to
negotiate a more corporate friendly license than even GPLv2.
PPS: The MIT and BSD licenses do not handle patents which I'd say
makes them unreliable. The Apache 2 license is better if you want a
non-copyleft license.

2014-06-25 8:26 GMT-06:00 Till Kamppeter <till.kamppeter@gmail.com>:
> Should we do GPL2+ then or better something non-GPL (like MIT, BSD, ...)
> to get maximum flexibility?
>
>    Till
>
> On 06/25/2014 01:09 PM, Michael Sweet wrote:
>> GPL3 is a poison pill for most corporations, thanks to the draconian pat=
ent terms and generally unfriendly stance towards any other OSS license.  A=
pple has a blanket policy of not allowing any GPL3/LGPL3 use without specia=
l authorization, and an absolute prohibition of inclusion of GPL3/LGPL3 lic=
ensed software or documentation in any products.
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
