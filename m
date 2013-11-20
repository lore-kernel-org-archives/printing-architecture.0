Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <528CDCE6.2070603@redhat.com>
Date: Wed, 20 Nov 2013 12:26:53 -0500
Content-transfer-encoding: quoted-printable
Message-id: <1F12B042-2A85-4F4A-9E2C-5D3BC375AA93@apple.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<5273A1A5.6000809@redhat.com> <52864861.3030309@redhat.com>
	<528CDCE6.2070603@redhat.com>
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Till Kamppeter <till.kamppeter@gmail.com>

Marek,

Generally speaking, I don=92t recommend showing the printer status in =
the chooser since that is a discovery/selection step. A busy or offline =
printer status is temporary, so it probably isn=92t a criteria for a =
user picking a particular printer.  A printer that is truly =93down=94 =
will not be browsable.

FWIW, I *do* think it is appropriate to show the status once a printer =
is selected (including the number of jobs in queue), and to update the =
status when it changes.


On Nov 20, 2013, at 11:01 AM, Marek Kasik <mkasik@redhat.com> wrote:

> Hi,
>=20
> I've filled bug for the waking of Avahi printers up here:
> https://bugzilla.gnome.org/show_bug.cgi?id=3D712751 .
> Unfortunately the print dialog doesn't show state of such printers
> before user selects them because I don't have information about paused
> state (e.g. through "printer-state-reasons") of the printer in TXT =
records.
>=20
> Regards
>=20
> Marek
>=20
>=20
> On 11/15/2013 05:14 PM, Marek Kasik wrote:
>> Hi all,
>>=20
>> just an update. I'm working on the problem of waking avahi printers =
up
>> in gtk print dialog. It will show just name, location and state when =
the
>> printer is not selected but once it is selected it will perform an =
IPP
>> request to get its abilities.
>>=20
>> Regards
>>=20
>> Marek
>=20

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

