Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Wed, 24 Feb 2021 08:37:03 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
Message-ID: <508d13fc9eb112edd677f3b8fb0bc8db@suse.de>
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


Hello,

On 2021-02-23 20:27, Till Kamppeter wrote (excerpt):
> https://github.com/michaelrsweet/pappl/pull/36#issuecomment-783533960
.
.
.
> Should we take the centralized approach? Or should we let the Printer
> Applications do the auto setup individually?

I think both (i.e. centralized and individually) are needed.

Centralized:
The centralized method for the Linux distributor
to keep the default load low and
to ensure at most one queue is set up automatically
and optionally perhaps also to inform the user
(e.g. via whatever desktop notification system)
when no queue could be set up e.g. something like
"No driver found for 'ACME FancyPrinter 1000XL' but
  the Printer Application 'ACME_Fancy' is not installed."
when the Linux distribution provides a Printer Application
that looks as if it could provide the missing driver or
"No driver found for 'ACME FancyPrinter 1000XL'
  (Printer Application 'ACME_Fancy' does not list it)
  and no other matching Printer Application found."

Individually:
Let Printer Applications do the auto setup individually
for third-party Printer Applications (e.g. from printer
manufacturers that are possibly proprietary software).
The assumption is that end-users will not install many
third-party Printer Applications but only what they
actually need for their specific printer devices.
An interesting case could be a central print server in an
enterprise environment for many different office printers
where many different Printer Applications are needed.
I think that case is safe regarding USB hotplug load because
nobody connects office printers in enterprise environments
via USB at the central print server.
But I don't know how printer auto-setup behaves for network
printers (i.e. when there are very many DNS-SD announcements).


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
