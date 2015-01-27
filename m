Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1422368753; x=2286282353;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4pRge6MVj2fX8rmlRCBJ4mesEy6N5kNgk/0iyrh0d+w=;
	b=k2zLEGvXh8tcePzFlgQ5EEWPaSAJwmBDzBzVXFQqQjlJG6G7iu85Aq83kwIZqAq7
	SNzFIK3i+qPc1yBjULFxbiS63Vsgu8i02IoOUoiUk3lGgEKJXzqWFF9VcLtk8QIB
	dgc2Dcqk9NNN3aaTirwZtAQUGxsEypSVfH8PNXzO9S9REEkO8jiPJkwb/qh37LSD
	assIo7x7LBtcGZ1PZis8nTv6H5cJD2DU4jJSbDP/8seBdIAdOxCDdSOTet4yXbpF
	qo7kAHXtGwvjhHpY/8yHgE3LbywFb13V/VubdO4GPXgPCM5w9NmqQAfhw7KNyfwh
	3EK7JRR5EwveIwKfbdh9zA==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2070.4\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <54C79494.20402@gmail.com>
Date: Tue, 27 Jan 2015 09:25:35 -0500
Content-transfer-encoding: quoted-printable
Message-id: <C6A4BBB9-83B7-4F0E-B0AD-A33743F8A041@apple.com>
References: <54C65044.7030501@gmail.com>
	<CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
	<BFBB8879-FEAD-4797-8ADC-7EEF6A810E19@apple.com>
	<54C79494.20402@gmail.com>
Subject: Re: [Printing-architecture] Projects for GSoC 2015: Implementing
 PWG standards
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
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

Till,

I am not aware of any shipping MFDs or scanners that support IPP Scan =
yet...


> On Jan 27, 2015, at 8:37 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 27.01.2015 10:53, Michael Sweet wrote:
>> Ira,
>>=20
>>> On Jan 26, 2015, at 8:59 PM, Ira McDonald <blueroofmusic@gmail.com> =
wrote:
>>> ...
>>> <ira> The IPP standard for uploading firmware will only be in the =
work-in-progress
>>> IPP System Service (milestone of Q3/Q4 2015 for Prototype draft).   =
Actually doing
>>> the reboot to the new firmware is currently just an idea of mine for =
a new operation
>>> in IPP System Service.
>>=20
>> There are a lot of security issues to address with firmware updates, =
and we'll need widespread adoption to make this useful.  On the consumer =
end of printers, most now offer updates via their control panels and/or =
web interfaces, and on the high end you need a service engineer to apply =
the update.
>>=20
>> In any case, I don't see this as a GSoC 2015 project (2016?)
>>=20
>=20
> OK, so my suggestions (1) and (3) are not (yet) suitable for a GSoC =
project.
>=20
> WDYT about my suggestion (2), the SANE drier for IPP network scanners? =
Is the standard already in a usable state? Are there already MF devices =
with standard-conforming scanners?
>=20
> Ira, what were your ideas of implementing PWG standards in GSoC =
projects?
>=20
>   Till
>=20
>=20

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

