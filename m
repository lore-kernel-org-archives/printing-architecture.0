Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371517032;
	bh=Hui/nmSZ7VqlXaEdjYDHDngq5qoj+dvdeLhWYGU4Z1M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=VsGkBK9bWVCstmNEjNQtvlphAIfSq0xt04KbPG4rZSdD/Xu/F9ns2qNtkNVSM+39h
	Tdd4W0z1s/KyyNYw7LAsWz6GsW8DmMJwQjV0CASbmiCeaKdRc5V1vP29vz6TRQ6Ltw
	z5i+4vIplUhGPUoe94BXkAHn/0Dy+qV349FuJjrJygQ==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <CAN40gSva+8P8ha-ABh5exQfd5VDVsA7prxj0ct33J2t52rLHTA@mail.gmail.com>
	(Ira McDonald's message of "Mon, 17 Jun 2013 20:45:07 -0400")
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<CAN40gSva+8P8ha-ABh5exQfd5VDVsA7prxj0ct33J2t52rLHTA@mail.gmail.com>
Date: Mon, 17 Jun 2013 20:55:57 -0400
Message-ID: <m3sj0g2q4p.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

>>>>> "IM" == Ira McDonald <blueroofmusic@gmail.com> writes:

IM> (1) PostScript filters aren't going to be maintained in CUPS in the future
IM> (as far as I know)

When I asked Michael whether cups would continue to include the pstops
filter, he replied that it would.

IM> (2) PWG IPP Everywhere (the only open standard mobile printing
IM> protocol) abandons PostScript entirely and requires PDF

IPP everywhere printers will take years to replace the existing ps
printers, as I noted.  Maybe ten to twenty years from now the existing
(and about-to-be-deployed) ps printers will be gone.

IM> (3) Of the recent printers that I'm aware of, more are supporting
IM> native PDF than native PostScript

Not according to the ad copy I have read.

IM> (4) PostScript is deservedly disliked by government standards agencies
IM> around the world because of how easily it can be exploited for security
IM> attacks

Nonetheless, if the printer is ps the job has to be submitted as ps.

IM> I agree that PostScript files won't go away, but they are being increasingly
IM> converted at the *source* content provider to PDF for interoperability.

And when they are converted at the source, that is fine.

I tried to be specific that it is *in the cups filters* that ps never
should be converted into pdf.

Don't get me wrong.  I *love* ipp-everywhere.  But the existing printers
do not go away overnight.  And many seem to last forever.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
