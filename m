Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Gip0wGGFPkQJwQvT+rYslUdCcjAlv/nfCmjUzHBE3Mw=;
	b=vJBUlyLYs6ZbStpxH5R5MCfX91dn+yrvrLTtu9RWOnJph8QtaNWmJ2s1WXmLS/oEGc
	wO/wEIVFTRurLrdZfiePIPEKPYl54eQgwFCMGsJXUonpjjkws9rigcCY24U/STAfd9c9
	vDOJQ6D/Mv9+USvQydAVWVEE27mchlH1LpDAY1N/WUry8Q+mrA8Q2LLSiGF704P4oVEr
	LkBK1/VgRbBf7z8vvnl6MMQ6NsRX4qu/wZxvh+XvwY3dTbQ+W3FU8cgNeVKZG7+nIMs6
	OfT2vbjcZwDZECmoSstij4zFgTSxG53Mvv4d9zBhmaaRmkaCs7stHBkZ4tJ82T6pDC6p
	gb9A==
MIME-Version: 1.0
Date: Wed, 5 Sep 2012 15:13:50 -0600
Message-ID: <CAGC3nLABhNf0hrZKk_Hs6qZmGQe7t=dE1uH-A-1t0KVB4YtsoQ@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: [Printing-architecture] An overview of libjtapi status + "Is anyone
	interested in an intern?"
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hello everyone

Sorry I missed the conference call. Listening to the recording I
noticed some questions about where libjtapi is and what I plan to do
in regards to libjtapi going forward.

Libjtapi is hosted in a linux foundation bazaar repository (
bzr.linuxfoundation.org/loggerhead/openprinting/libjtapi/ ). It has
one full set of backends for a libjtapi specific format. This
development job ticket format, which I have named devjt, is very light
and isn't parsed so much as it is interpreted. Libjtapi with devjt
supports all aspects of jtapi. Thus libjtapi is technically in
compliance with jtapi's definition of jtapi implementation.

Codebase wise libjtapi is pure C89 and only depends on the standard
library. There are no memory leaks, tested by valgrind, and all error
conditions are handled.

Even with just the backends for devjt, libjtapi is already useful for
development and prototyping. One development group could use libjtapi
with devjt while another group developed the proper libjtapi backend.
For prototyping libjtapi has every feature needed to prototype a job
ticket based printing workflow.

A pwg job ticket backend is the obvious next milestone. A student with
some C experience should not have any problems implementing a pwg::jt
backend so it could be a GSoC next year. Before then I have to propose
some small changes to jtapi, just to make a slight api change
official.

I'm entering my third year of university so next summer will be my
last. I would like to continue libjtapi, it took 7 years for jtapi to
get implemented and I fear IPP Everywhere is moving to fast for
another 7 year wait. By 2019 I expect most people who need jtpai will
have reinvented the wheel. I also want to have the experience of
working in an office environment. Thus sometime within a few month
I'll go through the list of companies contributing to pwg and see if
any would be interested in having an intern work for them on a pwg job
ticket backend next summer. I applied for a fall internship with
Google and got an interview but I'd prefer to be working on libjtapi
next summer. California sounds nice but I think the world needs
libjtapi.

This time last year I gave a definite promise to work on libjtapi but
this time I cannot say for sure what I'll be doing next year.

Daniel
