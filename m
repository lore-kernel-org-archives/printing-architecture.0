Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1403713466; x=2267627066;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NHBYqR+X2zVZ7yTm0RAPwrnqdBDfQvtNTC++obxonCI=;
	b=fvj+eTAmaaAz70JoF1QAvwSMXIg16ja18KuaAGlXJrNpb0vSgueEbt5Iv752kxOh
	gMuUjDxfOh128McLSJwy6xHZ7jAQeLTnJTE6kcibLYQVhuOhcM6zU8+Akg4NU+SG
	LoC5IkU2njR9bLPc+j44Vr6vNnQbrN6tqoX8TPop5B+lsXibTCV0SY0XzRI0zCh+
	ERXRKaYbwgWuTd4AK24GJtdUwyi5zzvUwJiY0wb4UakCDbpZdgnMlueSFSHwma5R
	iXsrFSc5x5t/POn5RzCDGdt2FSpKdiFomsZS6/7Ps6uvdOMmueee6r9KifNlvktp
	j/C5CTXN33ELP4Q2wH0idg==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
Date: Wed, 25 Jun 2014 12:24:22 -0400
Message-id: <94101C68-DC20-420E-8C93-AAC754638926@apple.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
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
To: Daniel Dressler <danieru.dressler@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Daniel,

Unless you plan on filing patents for the work you've done for IPP USB, the patent protections of GPL3 simply do not apply.  (and the reason why corporations don't like the GPL3 patent provisions is because they are overly broad - use GPL3 software and you may be giving away your rights to assert your patents, even for defensive purposes...)

Similarly, DRM is a non-issue - IPP USB involves no DRM and (I assume) you are not incorporating a blob or non-open code signing mechanism.  Any operating system mechanism falls under the "standard system library/service" clauses.

What may be an issue is future contributions - GPL2+ is generally OK but GPL3 will assure that few corporations allow their devs to help out for fear of "contamination".  Apache is not GPL3-compatible.  2-clause BSD and MIT are GPL3 compatible but don't prevent people from taking your work and doing something non-free with it.

So in my mind the best choices (the ones that will create the fewest problems long-term) are GPL2+ or BSD/MIT.

But perhaps the best people to ask are the lawyers at the various Linux distros - they are the ones that need to distribute your work, and if you choose a license they are not comfortable with then it won't be included in the distros.


On Jun 25, 2014, at 12:05 PM, Daniel Dressler <danieru.dressler@gmail.com> wrote:

> Hello everyone
> 
> I just wanted to chime in and explain why I picked GPLv3.
> 
> The two big reasons is that the GPLv2 does not handle DRM and patents.
> Which is understandable since version 2 was written before DRM was
> enforceable by law and before software patents were common.
> 
> Now I'm not a lawyer but I have read the GPLv3 license. The license
> handles patents by requiring a patent license to cover the software.
> Which just means that if software A violates patent B and a developer
> for company C contributes to software A then patent B must be licensed
> to users of software A. With some extra details: that company C that
> patent B, and any new patents or new additions to the software do not
> create further obligations to license father patents.
> 
> The purpose of the GPLv3's patent clauses is to prevent someone from
> distributing code and then placing further restrictions on the user.
> The GPLv3 is very similar to Apache 2 in regards to patents. With
> Apache 2 being Google's and Microsoft's preferred license as of late.
> 
> DRM meanwhile is the bigger sticking point for corporations. This is
> also where there is controversy. My reading of the GPLv3 made me think
> it is okay to encrypt and check signatures of operating system images
> and updates provided the user can get their own images and updates
> installed. Which as a user an unlocked android this is a feature I
> like.
> 
> In short I think GPLv3 does a better job of guaranteeing the user's freedoms.
> 
> Now, any code in my presentation at the summit will be CC0, likewise
> any contributions to other projects as part of integrating ippusbxd
> will be under those project's existing licenses.
> 
> Daniel
> 
> PS: ippusbxd only links with libusb, a lgpl system library. I cannot
> think of something we could gain by switching to GPLv2. Apple already
> has their ippusbd and I doubt Microsoft is interested in using mine =)
> Even if one of them was interested I expect they would want to
> negotiate a more corporate friendly license than even GPLv2.
> PPS: The MIT and BSD licenses do not handle patents which I'd say
> makes them unreliable. The Apache 2 license is better if you want a
> non-copyleft license.
> 
> 2014-06-25 8:26 GMT-06:00 Till Kamppeter <till.kamppeter@gmail.com>:
>> Should we do GPL2+ then or better something non-GPL (like MIT, BSD, ...)
>> to get maximum flexibility?
>> 
>>   Till
>> 
>> On 06/25/2014 01:09 PM, Michael Sweet wrote:
>>> GPL3 is a poison pill for most corporations, thanks to the draconian patent terms and generally unfriendly stance towards any other OSS license.  Apple has a blanket policy of not allowing any GPL3/LGPL3 use without special authorization, and an absolute prohibition of inclusion of GPL3/LGPL3 licensed software or documentation in any products.
>> 
>> 
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

