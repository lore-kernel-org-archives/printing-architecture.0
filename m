Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F13A2C3757
	for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 15:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784388888; cv=pass; b=gzqeOJuykdrrLqNVMynDz7ecRZaVRyYppDzuCBQkfvc0Wo+4k8m0BinMJFsjG56povJ+ZjGMgL3KI4XHVfvZv8vAGemU0zj+hBrbzFD6fxHZkMzUbyUuQewwn1qXvu+KjDgiJdYqy00gZHROfu8YWCwVFuHgVcJIogOEXtcsArw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784388888; c=relaxed/simple;
	bh=8hnpNHQM4qTWK5kHw7EwVwti2SVansFkLUP3+QMwgqU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 Cc:Content-Type; b=m5AoM+i/4+RRssXDtw85ry30l2z59AxYXAMZifi2hiyTidMl09jXsLrOcFMXbY48qaIGVgRDaVodzrJTtiLWNuJYF99DIP0rBttEKMU4Wlf2A2zo2eqGkS0shyrMBMrP+CmO8U4YBt71sWRve3wHLS7Il3T18Q2njr/cE4cKTp8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=qcprints.net; spf=pass smtp.mailfrom=consultjkb.com; dkim=pass (2048-bit key) header.d=qcprints.net header.i=@qcprints.net header.b=XUovIgg3; arc=pass smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=qcprints.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=consultjkb.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qcprints.net header.i=@qcprints.net header.b="XUovIgg3"
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-90327237340so25112266d6.1
        for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 08:34:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784388885; cv=none;
        d=google.com; s=arc-20260327;
        b=GsJdYBtH1jY/Ldy9N5L/zwAIArxA8sIBBuv5nBXUctQC/piZ44O70Gju4nKqoF+GFE
         9mDYHnE9QdDoNRcthMA/kTAL5RxDuLC9225tVEKpiePr2rwj4s5/0L0FkazX5Q9kU16e
         Nu/pA+GE6WBvJ1LN2fLWH0/Y8CqJWb5gKvDa22P8xki2qpcdrY1cs6Cym8RaW8CyxfrN
         iLXxCJ2sYb6uer3dS6BOD17SzNNbUwXqihufqN2aZU1f6rLawSNcJAMQ0vDxkZahUnq+
         DWUy4BXk1nC/YKj9n4Ft2QsdlermLxUNSATklFgJJajBXxPsvThsWF6bpU3S9JrHdgsc
         6TFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J7TPEexvZoY6S0feM2B882ogio9sOadbAUkaxPwrpYk=;
        fh=9RhuG1m02WWu6KooyHQ5kpoedt8vw4tzwgz7v1+esVY=;
        b=Nd7I3Poqw1rlwNJNG/mklzBkwah8jUhHA2Xp9OhOVJKAJDWKdTprz73SmB3RWAmY4H
         H6n44h3k5Y+qgE8ty7xvygULQlOg03nGPZ4d1l7QgnC2AYnlndC88p4SBnTGxlT+8x/t
         vO35DmsBRpz2BrcSP/DFrsac6P1/9Dvlgg2hovNUGdzavOs5rG14u8wgXg/VIBn0ExOg
         12VCOf6pj1WATWb7RCWRo0ULwUo9CFT0Ux2l0o/pvddQKaAjBeig+R4wJLeWERzWqxiw
         xsinR56t343ur3ALUsZV+/tPwCLmo8fuLoXypt2dopYy9L9Hu/0KyXiAbXulKOvnC7/T
         B/Hg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qcprints.net; s=google; t=1784388885; x=1784993685; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J7TPEexvZoY6S0feM2B882ogio9sOadbAUkaxPwrpYk=;
        b=XUovIgg3b66quxQuUw2d6rrxmlNclU2LwLeX9moF2XKOv178Vv/GXPIYgLrEw7cNRM
         IRZ+4t38R2e+8wi8DSX7H6KSTxWkmBNBD8Ni7y/hrB2Xj2DtR4FkFeZuliNdivwnczbU
         Rkjx1e+OQgdr3SrBBlhZwql+pjVvpokKm+XgXoL6D4o/+LeZPsVtwqVKgAH+wep3olki
         UJ9BWte6vDA88hHDzEF/fcQkSB/EZq8RH1ssbtMD/PTkhspokpDgqN9XjQUIr5Y2fugB
         pDh6y11bFNUJRp2NRWOIdlAVLRRKb8L5R5ydYzAnv2eU+XMi9ABWWVofl5Dt8bzsOsU0
         dlOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784388885; x=1784993685;
        h=content-transfer-encoding:content-type:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=J7TPEexvZoY6S0feM2B882ogio9sOadbAUkaxPwrpYk=;
        b=KNy++N+Zdi3N2UvAqqiFjAGkhub0Vuxxg/+Ef+J26slAO2q4eE4xLnmgTpyjrb1hjQ
         eSb8eQzH0QixXaM6BtRZfbL2pz4Ii3cwmZy3ebawntMTOQcvVF2gdB3IfPeXY7pdedpI
         5ifkbjRzrR43EULW5U88zISuRT4YtRHwn3XWACpSDfLJoKvuP++BAWPQXJTnBDDhK+81
         oQ0T6sZoOIGbHgYaswYsWqVY8Zt5OyWlM+wfQzJj4xp5I+yKDqrW/YEXAp3Yqt+v9p5O
         UBjaSgqSRtMTPeD+Wz6OofxtCLDyp1OafVCODJKlJGxLo99wYTSvweBFrKbULb8nux53
         wovA==
X-Gm-Message-State: AOJu0YykyZn3oR6ByqVyQFJ5VYGmWNKUkbp5FMGOZu9Ao+5FrRnmRU67
	EoJWNIOOMSeTIneXpMUZ57Qh/i0bNTdLZOJkSSBK/5prXqLTw4xUaWepkdbkfguewuSbb0I6uvQ
	CFdjNgXQR5bC5EH5rD7BNlw0+B19wl44gNzX3EJ2kZV2YxKTmswDYPNBhZA==
X-Gm-Gg: AfdE7cmqmZqVa1cOTg/BTrbkjMZfdk1UXW3sFBBc3opBKcFapBAyYMqJny1/b2MDOGS
	W6GEhE+nTRQ/aG0WDC+kU2p9OHsITK1ncKnYIOOt/1wu2YidtEPo7NF5F0Ne0PMTiMiBLCxXaYF
	TRctENbpXy1TCR2+j0hn/SZsq4OesZc3n3xut4jHo5UYUy1n/AyoY4WNVZ6SSTCQD6KESFVoE2l
	3VlR8Vg7jcbi15ZvzdsFvEnTLxzosNOKicwg0d8PNdpA4RL4oWHbyb7qaRVnm54XGqnedpVU/RE
	XseA5TCF1cBLrSzASaOLrv6KkJg=
X-Received: by 2002:a05:6214:5091:b0:907:6fce:b82a with SMTP id
 6a1803df08f44-9077898e562mr72839896d6.23.1784388884834; Sat, 18 Jul 2026
 08:34:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
 <E82AE91D-DFFC-4598-B19B-6DF903D95165@msweet.org>
In-Reply-To: <E82AE91D-DFFC-4598-B19B-6DF903D95165@msweet.org>
From: Joshua Braddock - Queen City Print Shop <joshua@qcprints.net>
Date: Sat, 18 Jul 2026 09:34:34 -0600
X-Gm-Features: AUfX_mxQRl_3g_GpjjiuIST1GaQ5Omw3EOywXois4mC9NCTX2kCTbbs4_h595Es
Message-ID: <CAMk8RBYg_CMrbaQiXEmiKDkn-v7uFikGrshCXiqFjpYc7j=nbw@mail.gmail.com>
Subject: Re: Exploring a universal production printing architecture
Cc: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Solomon and Michael,

Thank you both. Your responses helped me see that I described this as
a new printing architecture when much of the underlying model may
already exist in IPP.

I also used =E2=80=9Cvirtual driver=E2=80=9D too loosely. I am not proposin=
g a new
printer-specific rendering stack, nor am I suggesting that an
application can postpone decisions affecting its composition or
pagination. If Word must paginate for Letter versus A4, that
document-canvas decision necessarily belongs in the application. My
production-print use case begins after the application has composed
the document. For example, an InDesign document might deliberately
produce a 12.5 =C3=97 19.5-inch page containing the selected bleed, crop
marks, registration marks, and other content. I want the application=E2=80=
=99s
normal Print command to submit that composed output into a persistent
held workflow without requiring the user to select a particular press,
tray, stock, or finisher first. This is not necessarily equivalent to
asking the user to export a PDF. In applications such as InDesign,
printing and exporting can follow different settings and rendering
paths, even when they begin with the same source document. The
resulting page geometry, marks, separations, color handling,
transparency treatment, scaling, and other output characteristics may
differ.

What I want to preserve is the output composed by the application
through its normal Print path. The logical production destination
would capture that submitted print content and create a persistent
held job from it. The underlying transport representation might be
PDF, PostScript, XPS, PWG Raster, or another standard format,
depending on the application and operating-system print path. The
important point is that the workflow receives what the application
submitted for printing rather than requiring the user to perform a
separate PDF export. The workflow could retain that original submitted
representation and, when necessary, create a normalized production
document for previewing, transformation, routing, or output. Any
normalization would be recorded as a derivative rather than silently
replacing the submitted source.

What I am describing therefore creates a persistent production transaction:

Application Print command
-> platform-appropriate logical production destination
-> original submitted print representation is retained
-> held job preserving the composed page geometry
-> operator or automation applies the production ticket
-> final output device and output path are selected
-> IPP, Printer Application, vendor DFE, native driver, shared queue,
or another adapter

EFI Command WorkStation is a familiar proprietary example of the
operator experience I mean. Once a job is held, the operator can still
control media, scaling, duplex, imposition, color processing, image
shifts, finishing, VDP behavior, scheduling, notes, and accounting
before releasing it. I am not proposing that OpenPrinting reproduce
Command WorkStation or Fiery=E2=80=99s RIP functions. The operational gap i=
s
that this workflow is normally attached to a specific vendor DFE and
its connected press. There is also a compatibility and lifecycle
aspect that I did not explain in my first message. I envision the
client-facing submission destination, the workflow appliance, and the
device-specific output paths as separate layers with independent
lifecycles. The client-facing destination would remain available
across current versions of Windows, macOS, Linux, and other platforms.
Its implementation might differ by platform or generation, but each
implementation would submit through the same stable, vendor-neutral
contract. The central workflow could be a comparatively stable,
long-lived appliance or service running on Linux, Windows, or macOS,
with a local, desktop, or web-based operator interface.
Device-specific compatibility would be handled behind the workflow
through whatever output path is appropriate: direct IPP, a Printer
Application, a vendor DFE, a locally installed native driver, an
existing shared queue, or a remote output agent running an operating
system that still supports a legacy driver.

A concrete example from our shop is an HP DesignJet Z5200ps. Its
genuine HP driver and our preferred color workflow remain usable on
certain Intel Macs and older Windows systems, but not on our current
Apple-silicon design workstations. Today, producing the desired output
can require us to create the job in current InDesign on an
Apple-silicon Mac, package or save it for an older InDesign release,
move it to an older Intel iMac, open it there, and finally print
through the genuine HP driver. That makes an obsolete design
workstation part of the production workflow merely because it can
still run the correct printer driver.

In the model I am describing, the modern design workstation would
print application-composed, device-independent content to the logical
production destination. The operator would then select the DesignJet
in the workflow console and apply its production settings. If the
console runs on a Windows machine that supports the genuine HP driver,
the locally installed DesignJet would simply appear as an available
output destination. No additional translation machine would be
necessary. The console could also submit to an existing shared printer
or RIP queue. Our Lanier/Ricoh LW310 wide-format system, for example,
uses a Windows XP-based RIP. That printer can still be shared to
Windows 7 or Windows 10 systems. A workflow console running on one of
those compatible systems could submit directly to the shared RIP
queue.

A separate output bridge would be needed only when the console=E2=80=99s ow=
n
operating system cannot support or reach the required output path. In
that case, an isolated Intel Mac, Windows VM, or physical Windows
system containing the supported native driver could act as a remote
output agent.

The workflow could therefore use:
- a native driver installed on the console host;
- an existing Windows, CUPS, or IPP shared queue;
- direct PDF, PostScript, PCL, or another supported language;
- a vendor DFE such as Fiery; or
- a remote output agent running the operating system required by a
legacy driver.

The output bridge is a compatibility option, not a mandatory part of
every job. The workflow uses the shortest dependable path available
for each device. The important separation remains the same: the design
workstation submits to one durable production destination, while the
workflow console maintains and selects among changing device-specific
output paths. The workflow would always retain the submitted geometry.
If the operator maps a 12.5 =C3=97 19.5-inch document onto another output
size, the resulting crop, fit, or scaling would be explicit rather
than silently conflating document size with loaded media size.

There is a corresponding benefit at the other end of the lifecycle.
The same logical production destination should be reachable from new
categories of client devices without requiring those devices to
understand the eventual production equipment. For example, the
workflow could advertise an AirPrint-compatible logical Printer. A
user designing a document on an iPad Pro could use the application=E2=80=99=
s
normal Print command to submit it to the held workflow. The iPad would
not need an HP DesignJet driver, a Fiery driver, or any knowledge of
the final media, tray, or finishing configuration. The operator could
then inspect the submitted geometry, select the intended output
device, and apply the production settings:

iPad design application
-> AirPrint-compatible logical production destination
-> held job in the workflow
-> operator selects a device and production settings
-> appropriate local driver, shared queue, DFE, or output agent
-> selected production device

An emerging client platform could therefore submit to an older
production device even though no direct driver relationship exists
between them.

I do not expect one literal driver binary to run on every operating
system. I envision a family of platform-appropriate submission
interfaces=E2=80=94IPP/AirPrint, Android or ChromeOS printing, traditional
desktop queues, and possibly a share action or web interface=E2=80=94all
creating the same vendor-neutral Job object through a stable contract.
The client-facing implementations could evolve as operating systems
and processor architectures change, while the central workflow remains
a comparatively stable long-term service and legacy output paths
remain isolated behind it. Where a mobile print dialog cannot express
the intended custom geometry, a share extension or direct workflow
submission interface could provide an alternate path while still
creating the same held job. This is why I see the logical production
destination as something different from installing every physical
printer on every client. The client needs one durable route into the
production system. The production system owns the changing
relationships among modern clients, current devices, vendor DFEs, and
legacy native drivers.

Having begun reading the material you referenced, I see that IPP
already provides much of the vocabulary I was reaching for: Printer,
Job, and Document objects; held jobs; job tickets; settable job
attributes; production-printing attributes; and
shared-infrastructure/proxy concepts.

My corrected questions are:

- Is an IPP Infrastructure Printer, Printer Application, or another
existing IPP model the appropriate basis for a logical production
destination that is not initially bound to one output device?
- Can an operator-facing application hold a submitted job, modify its
production attributes, and then route or reproduce it against a
selected Printer while remaining within existing IPP semantics?
- Could locally installed printers, shared queues, and remote systems
running supported native drivers all be represented as output
destinations behind that workflow?
- Is there an existing open-source implementation that combines these
concepts into a mixed-vendor production console rather than presenting
them as unrelated individual device queues?
- If the standards already express nearly all of this, is the missing
piece primarily a reference workflow implementation and
production-oriented operator interface?

I may not be identifying a standards gap. I may be identifying an
implementation and operator-workflow gap between what IPP can
represent and what production operators can currently use across
mixed-vendor and mixed-generation devices.

Thank you again for correcting my framing. I would appreciate any
pointers toward existing implementations or the most relevant parts of
the Infrastructure Printer/Proxy model.
--
Joshua Braddock
Queen City Print Shop
701.203.2873

Notice: This email, including any attachments, is intended solely for
the use of the designated recipient(s) and may contain confidential or
legally privileged information. If you are not the intended recipient,
you are hereby notified that any review, disclosure, copying,
distribution, or use of this email is strictly prohibited. If you have
received this message in error, please notify the sender immediately
by replying to this email and permanently delete it, along with any
attachments, from your system. Thank you for your cooperation.

On Sat, Jul 18, 2026 at 8:17=E2=80=AFAM Michael Sweet <msweet@msweet.org> w=
rote:
>
> Joshua,
>
> I'll preface my feedback with "what Solomon said" since it covers all of =
the important stuff.  My own specific responses are below...
>
>
> > On Jul 18, 2026, at 4:25=E2=80=AFAM, Joshua Braddock - Queen City Print=
 Shop <joshua@qcprints.net> wrote:
> > ...
> > The core idea is to separate document generation from production workfl=
ow.
> >
> > Today, applications generally render directly to a printer driver,
> > where media selection, finishing, device capabilities, and
> > vendor-specific options are all intertwined.
>
> Actually, that was the 90's.  CUPS started out in 1998 as a PostScript + =
PDF-first solution that isolated applications from generating printer-speci=
fic features/code, and that from an earlier (1994) PostScript implementatio=
n on top of the old System V printing system.  Over the years we have been =
able to get the industry to (more or less) standardize on using IPP and hig=
her-level file formats - the main holdouts are label, receipt, and large-fo=
rmat roll printers, although there has been some adoption in specific marke=
ts.
>
> Some of the resistance to change comes from vendors providing tightly int=
egrated solutions (point-of-sale, shipping, photo, and high-end RIPs) where=
 there is little demand for a more generic, cross platform/vendor solution.=
  Try to convince EPSON that they should put AirPrint in their 24+" roll pr=
inters and they just claim that nobody will print photos from their phone, =
ignoring that the same protocol is used for desktop printing because that w=
ould cut into the business of RIP vendors that help get their products sold=
.
>
> So what we've been doing for the last 16 years is evangelizing standards =
and pragmatically developing and supporting IPP "Printer Applications" for =
those printers that cannot (or will not) support a common standard.  This i=
sn't perfect but it at least makes it possible to create a common workflow =
application based on IPP.
>
> > ...
> > My question isn't whether this should replace CUPS or existing printer
> > drivers. Rather, I'm curious whether OpenPrinting has already explored
> > an architectural separation like this, or whether this is an area
> > where discussion would be appropriate.
> >
> > I'd appreciate any pointers to prior work, existing standards, or
> > reasons this approach has already been considered.
>
> Standards can be found here: https://www.pwg.org/ipp/
>
> The migration of CUPS away from drivers is discussed here: https://openpr=
inting.github.io/cups/drivers.html
>
> ________________________
> Michael Sweet
>
