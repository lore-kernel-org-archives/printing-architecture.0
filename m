Return-Path: <computersforpeace@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qZeJf3Fg4Do8YGJzvV5Pvff9clJL6w38XWThvLsS66Q=;
	b=hPFSkHToLKj0kEKEcjre4TW/vniZjS9qWlZFkQSNxViSPxV2s5MuFD8hhXZjmhtQ3N
	K1dZzSX2lirYcJfTHU+xwfWhdQTCbDvGzyzLSHatNzxYXmreSI/DaMv4YGKJdO4O/7ez
	TsswfjcBLZXBmwcp6bOIIsGxPrJ57ugvHrCvRbrmseIuOWAyW/f07rSHEe3j3gxT2LR4
	Ot2AD9IKlqcLdinB/umS0J9nkimf0kcnFYimksOiyj+i8Na2X7KuTcKSjb0Ohg/wQlqg
	wb8urDlONpOcw58GkGAhtShyv6DuJ0yjWWW10EaiA6SQkIf68N4MRlbl1By/rsH+Zkrp
	hakA==
MIME-Version: 1.0
In-Reply-To: <57851B1A.8010700@gmail.com>
References: <57851B1A.8010700@gmail.com>
From: Brian Norris <computersforpeace@gmail.com>
Date: Fri, 14 Oct 2016 13:18:45 -0700
Message-ID: <CAN8TOE_FGR7ikdspwUOqcxix3hZPNcrdx46nBcrPd1PBivA=ug@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] Hosting of OpenPrinting
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Matthew Morikawa <Matthew.Morikawa@dda.kyocera.com>

Hi Till,

I'm a little late on this, I suppose:

On Tue, Jul 12, 2016 at 9:30 AM, Till Kamppeter
<till.kamppeter@gmail.com> wrote:
> It is about the web hosting of OpenPrinting. You now that we are hosted at
> the Linux Foundation currently. And with the Linux Foundation there are
> problems, in the form that I do not get any help by the system admins any
> more. The front page (www.openprinting.org) is messed up and I cannot change
> it any more. Therefore I asked the help desk already several times and never
> got an answer.

I think I just reported some issues with the front page to you by
email. Now it seems those are probably issues you already knew about,
and can't resolve :(

> For the BZR repositories I am thinking about converting to GIT and use
> GIThub. CUPS and many other projects are already there. I would also handle
> the bug tracking there.

I'd love if this happens. I've tried working with bzr (and I've sent
you several patches), but git is *so* much easier for me to work with.
This also seems like something that could happen right now (except for
the pesky problem of documentation you can't update, if the
openprinting website is really that hostile to you).

Any progress on moving the repos? I think that alone would improve
others' ability to contribute (i.e., help you out).

Brian
