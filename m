Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <54aefb59-d506-8e30-8891-9d051ef81fed@gmail.com>
Date: Wed, 24 Feb 2021 12:48:50 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <DC5E23E8-80FD-4835-B3C7-B637D5287267@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <54aefb59-d506-8e30-8891-9d051ef81fed@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

Till,

> On Feb 24, 2021, at 12:40 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> In principle you are right, but
>=20
> - We will get a lot of user complaints that something which worked =
before does not work any more, but probably we must somehow inform the =
users that if they have a legacy printer they have to set it up in a web =
interface.

I never claimed that you shouldn't try to provide a good user =
experience, just that I don't think you need to hyper-optimize something =
that is only done once.

> - If there are many Printer Applications installed simultaneously =
(distro which wants to support everything) there are many web interfaces =
on https://localhost:80XX/ where the user has to find the right one to =
set up his printer. In addition, these many Printer Applications are =
racing for a port number on every boot, meaning that the Printer =
Applications are on different ports everytime. CUPS copes with this, as =
it uses DNS-SD-service-name-based URIs, but a user will not find the =
correct web interface when he wants to change something.

... which is why I suggested you create a registry for printer =
applications so that you can map a printer to one or more printer =
applications that you then run "autoadd" on.

I *don't* think that users should have every printer application =
installed - that is wasteful and confusing.

> ...
> Or the classic printer setup tool (in GNOME Control Center for =
example) should be replaced by something which lists all available IPP =
servers (this includes driverless network printers and also installed =
Printer Applications) with for each list entry two buttons, one leading =
to the web interface and one opening an IPP System Service status/config =
window. This way the user finds the correct web interface without =
knowing the port.

If the printer applications are based on PAPPL, you can use DNS-SD to =
find their system service endpoints and then have them add the printer =
using standard IPP operations, all through a common GUI.  Similarly, you =
can use DNS-SD to find the web pages, if that is the way you want to =
go...

________________________
Michael Sweet



