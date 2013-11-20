Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <528CDEA3.1030605@gmail.com>
Date: Wed, 20 Nov 2013 12:28:43 -0500
Content-transfer-encoding: quoted-printable
Message-id: <6A2B459C-D9C5-46E5-85F3-0B36CA3BEBE4@apple.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<5273A1A5.6000809@redhat.com> <52864861.3030309@redhat.com>
	<528CDCE6.2070603@redhat.com> <528CDEA3.1030605@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>

Till,

The printer status does not belong in the TXT record.  TXT records and =
service registrations are used for discovery, not for conveying state.

See my other message to Marek for more info=85


On Nov 20, 2013, at 11:09 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:

> Marek, thank you for the patch.
>=20
> Mike, should printer status (for example Paused) not be in the TXT
> record or somewhere else in the Bonjour broadcast, so that a client =
can
> determine the status without further query?
>=20
>   Till
>=20
> On 11/20/2013 05:01 PM, Marek Kasik wrote:
>> Hi,
>>=20
>> I've filled bug for the waking of Avahi printers up here:
>> https://bugzilla.gnome.org/show_bug.cgi?id=3D712751 .
>> Unfortunately the print dialog doesn't show state of such printers
>> before user selects them because I don't have information about =
paused
>> state (e.g. through "printer-state-reasons") of the printer in TXT =
records.
>>=20
>> Regards
>>=20
>> Marek
>>=20
>>=20
>> On 11/15/2013 05:14 PM, Marek Kasik wrote:
>>> Hi all,
>>>=20
>>> just an update. I'm working on the problem of waking avahi printers =
up
>>> in gtk print dialog. It will show just name, location and state when =
the
>>> printer is not selected but once it is selected it will perform an =
IPP
>>> request to get its abilities.
>>>=20
>>> Regards
>>>=20
>>> Marek
>>=20
>=20

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

