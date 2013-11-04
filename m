Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=R+WHLGDeGXb13FNl9wD9+t7Ma4A7mi+dQKp88dJjW4w=;
	b=dq8kNfppuGbsyWxHJ2fL9r8Y+63ijogCQcsh+xssdlASm9XUWRD083Z6ruCvAoDCZL
	Vqhab2CgsfTyiWiOYRD1ZgYbHYs+Ix/pEku3UEVFvkjeNzFNZ+zHBh2ywj1ef2QgtMuk
	WIgYlFUFha94SeNbtMmSeyAefAXm6CX9A3Cw7TLZKD7HHZyYfFyzHTUNoMzk5OlwTBZA
	bAnmdU4NSgFhUANv4yMzCC8DQwQG7x/VttyJA0iUDB0oGtXzyZ9R4aWAGHvyafCSPBJD
	dxZsdK07UZYEcBRQfJ09jAZ0Y7IgiLpCSlGL+1qt0pKDxHxsWG6UaHy788d3JVyWijxb
	fomw==
Message-ID: <5277C8CC.3020205@gmail.com>
Date: Mon, 04 Nov 2013 17:18:20 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1383567790.3894.4.camel@rubik> <5277B8C4.8000700@gmail.com>
	<0C2EFB5E-26B2-4310-B1E7-70110518C038@apple.com>
In-Reply-To: <0C2EFB5E-26B2-4310-B1E7-70110518C038@apple.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] cups-browsed: how to treat rejecting
 queues?
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 11/04/2013 05:08 PM, Michael Sweet wrote:
> Till,
> 
> On Nov 4, 2013, at 10:09 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> I have also tried to switch a printer on my server between accepting and
>> rejecting state, and this does not make CUPS/Avahi generating an update
>> of the Bonjour record (= sending a broadcast), avahi-discover on a
>> client did not show any evidence of a signal broadcasted because of this
>> change. Can this be a bug in CUPS which we should report?
> 
> This is a conscious design decision for cupsd - we do not re-register the TXT records on simple state changes.
> 
> Conceptually we might want to stop sharing a printer that is not accepting jobs.  Something to think about…

Yes, I think this would be a good idea.

   Till


