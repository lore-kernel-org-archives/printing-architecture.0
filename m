Return-Path: <postmaster@tnonline.net>
Date: Thu, 14 Apr 2022 10:48:25 +0200 (GMT+02:00)
From: Forza <forza@tnonline.net>
Message-ID: <8f7a3d7.5dc3e068.18027426970@tnonline.net>
In-Reply-To: <CAK-1bsrJSsK_U_eOAHjSD6k7y5cMnOnr3_gX3rXARPhLzWENdQ@mail.gmail.com>
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
 <CAK-1bsoup4aNhk3U6NtDg0xVbcBWMVFP2+q-tAOaphb_V2K2iw@mail.gmail.com>
 <CAK-1bsrJSsK_U_eOAHjSD6k7y5cMnOnr3_gX3rXARPhLzWENdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] Fwd: What windows driver to use with a
 CUPS IPP server?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: markosjal@gmail.com, printing-architecture@lists.linux-foundation.org



---- From: Mark Dm <markosjal@gmail.com> -- Sent: 2022-04-14 - 07:24 ----
>=20
> I think My WIndows 10 had a Generic "IPP Everywhere" driver installed
>=20

Hi!=20

Yes indeed. It is, however, disabled by default. I enabled it on one machin=
e but I had no luck with it to print to cups. Also it is not available on o=
lder clients.=20

Thanks=20

> On Wed, Apr 13, 2022 at 1:32 PM Forza <forza@tnonline.net> wrote:
>=20
>> Hello,
>>
>>
>> I have a Ubuntu Server 21.10 with CUPS 2.3.3o installed. I've set up to
>> the printers with either socket://printer:9100 or ipp://printer and
>> enabled sharing on each queue. This exposes each CUPS queue as an IPP
>> printer to all clients.
>>
>> Now my problem is to determine what driver should be used in Windows.
>>
>> A little background:
>>
>> We have several Windows clients ranging from WinXP to Win10 that are
>> printing on about a hundred HP printers (LaserJet and PageWide).
>> Currently these machines print through a Windows Printer server, but it
>> is getting more and more difficult to properly support older clients
>> with the HP universal printer drivers. Also from security perspective we
>> need to isolate older clients on separate quite restrictive networks and
>> generally not enable SMB/Samba access.
>>
>> There is a built-in Windows driver called "MS Publisher Imagesetter"
>> that works pretty well, but it lacks most options such as selecting
>> colour/greyscale or duplex output, as well as exposing proper printer
>> margins and scaling to the applications.
>>
>> The CUPS server is not on the same broadcast domain as the clients and
>> DNS-SD and similar can not be used. This means that Windows clients
>> cannot automatically detect and setup WSD or IPP queues from CUPS.
>>
>> Someone on IRC said I should use the native HP drivers, but this seems
>> wrong to me;
>> * First there are no updated drivers for older clients
>> * Isn't the idea of CUPS as a printer spooler to separate the client
>> from the printer so that we can use classes etc to direct output without
>> the clients knowing?
>>
>> I'd be grateful for any suggestions and insights.
>>
>>
>> Forza
>>
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture


