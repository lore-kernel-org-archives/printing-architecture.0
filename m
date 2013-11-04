Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5277B8C4.8000700@gmail.com>
Date: Mon, 04 Nov 2013 11:08:02 -0500
Content-transfer-encoding: quoted-printable
Message-id: <0C2EFB5E-26B2-4310-B1E7-70110518C038@apple.com>
References: <1383567790.3894.4.camel@rubik> <5277B8C4.8000700@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

On Nov 4, 2013, at 10:09 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> I have also tried to switch a printer on my server between accepting =
and
> rejecting state, and this does not make CUPS/Avahi generating an =
update
> of the Bonjour record (=3D sending a broadcast), avahi-discover on a
> client did not show any evidence of a signal broadcasted because of =
this
> change. Can this be a bug in CUPS which we should report?

This is a conscious design decision for cupsd - we do not re-register =
the TXT records on simple state changes.

Conceptually we might want to stop sharing a printer that is not =
accepting jobs.  Something to think about=85

____________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

