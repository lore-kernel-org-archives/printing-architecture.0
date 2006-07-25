Return-Path: <todd.fujinaka@intel.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2006 08:04:29 -0700
Message-ID: <D90275D3D462F94E9B3892626804E08C015CE800@orsmsx412.amr.corp.intel.com>
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Michael Sweet <mike@easysw.com>
Cc: Wendy Phillips <wendy.phillips@sun.com>, printing-architecture <printing-architecture@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

>-----Original Message-----
>From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
>
>Is it not enough agreeing on one ofthe pairs
>
>/usr/local/share/ppd/<supplier>/<manufacturer>
>/usr/local/lib/printdrivers/<supplier>
>
>and
>
>/opt/printing/ppd/<supplier>/<manufacturer>/
>/opt/printing/drivers/<supplier>/
>
>Why are both pairs needed?

I will repeat this again: /opt is for third-party vendors, /usr/local is
for the local sysadmin to install things. These are called out
separately by the FHS.

Both should be included.

Todd

