Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
Date: Wed, 21 Oct 2020 16:49:29 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "The CUPS developer list." <cups-devel@cups.org>, "The CUPS user discussion list." <cups@cups.org>

Zdenek,

> On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal <zdohnal@redhat.com> wrote:
> ...
> In this email I would like to ask if there can be a way how to work =
around such printer issues within CUPS, which can be aligned with RFC =
and PWG standards, and can be merged into OpenPrinting/cups project.

Aside from maybe retrying the Validate-Job request if it fails the first =
time, I'm not sure=20

> I have several ideas:
>=20
> 1) Validate-Job operation is 'only' recommended since IPP 2.0, so the =
backend would have printed only warning if Validate-Job failed and the =
IPP protocol used for communication is 2.0 or newer

Actually, while Validate-Job was listed as RECOMMENDED in IPP 2.0, IPP =
Everywhere restores it to REQUIRED, just as STD 92 has required it going =
all the way back to the IPP/1.0 experimental version.

> 2) configurable retries for Validate-Job operation - this idea came up =
from printer behavior (Validate-Job works after N retries) and from =
knowledge there are already configurable variables in backends via =
device uri

I'd rather it be automatic - either retry the Validate-Job operation or =
just move on to printing without validation.

> 3) define a specific IPP_STATUS_* enum variable for failing =
Validate-Job, let the backend fail if ipp_status is that variable and =
let error-policy handle the possible retry

I'm not keen on "supporting" broken behavior.  Usually I've tried to =
"gracefully degrade" in these situations, which would basically mean =
option 2 without the retry (just attempt to validate and continue if we =
don't get a valid response.

________________________
Michael Sweet



