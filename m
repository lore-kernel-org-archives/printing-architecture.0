Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <28C40F90-94F7-4C24-B903-182E327520BD@colorremedies.com>
Date: Thu, 11 Jul 2013 18:32:07 -0400
Content-transfer-encoding: quoted-printable
Message-id: <3E2BCD0B-B661-430B-94EC-E8B05F201C80@apple.com>
References: <F8AC2694-EF22-4440-9325-6DF980D31D2E@apple.com>
	<28C40F90-94F7-4C24-B903-182E327520BD@colorremedies.com>
Subject: Re: [Printing-architecture] CUPS 1.6.3 is now live
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Chris Murphy <lists@colorremedies.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Chris,

On Jul 11, 2013, at 5:35 PM, Chris Murphy <lists@colorremedies.com> =
wrote:
>=20
> On Jul 11, 2013, at 3:18 PM, Michael Sweet <msweet@apple.com> wrote:
>>=20
>> 	=95 Insecure ICC profiles prevented installation of user =
profiles for a printer on OS X.
>=20
> I'm curious what entails an insecure ICC profile. Is this a package =
containing an ICC profile with the wrong DAC permissions set?

As in "Joe just installed a bunch of ICC profiles with 666 permissions =
in his home folder and pointed to them from the PPD file."

We haven't supported system-wide registration of user-owned ICC profiles =
since CUPS 1.5, but what we did before was completely omit the =
registration of the printer which made it impossible to later fix things =
through ColorSync Utility.  With the fix ColorSync actually knows about =
the printer and allows you to register user profiles.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

