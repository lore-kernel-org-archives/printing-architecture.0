Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 22E4480438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652628628;
 bh=JneqQSdVhnaUghPqM9TuLDagVAxD8akkNE4r+bwFowA=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=dxLF2pGqP1EY6facDT+VmdCgPkB4g6mZNGAuJSZyLbPl0wDDrRHl6qK6TEWtodDyC
 DH98b5iXpp6OxjylPvAaH+stEFBlNgEYNd0rmX1b9SPEHwALzafAChsmSCXzIkXG8w
 Jm/GanGnHcG5MdZyJHiAfmv5NytsXWyuAUAvgabc=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_735F9A93-B774-4915-AD97-E5B2D6E2CF8C";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
Date: Sun, 15 May 2022 11:30:25 -0400
Message-Id: <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
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


--Apple-Mail=_735F9A93-B774-4915-AD97-E5B2D6E2CF8C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

You can set it unconditionally; ideally I'd at least look at the device =
URI and only do it for network printers.

> On May 15, 2022, at 10:43 AM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 15/05/2022 15:53, Michael Sweet wrote:
>> Till,
>> You need to set the "have_supplies" member of the =
pappl_pr_driver_data_t structure to 'true'.
>=20
> Can I do this simply generally for all printers, regardless whether =
they actually support the reporting of supply levels via SNMP and then =
the ones which support it report the levels and with the others nothing =
bad will happen? Or do I need to somehow find out during printer setup =
whether the printer supports it or not? For example by some entry in the =
PPD or querying the printer somehow?
>=20
>   Till
>=20

________________________
Michael Sweet




--Apple-Mail=_735F9A93-B774-4915-AD97-E5B2D6E2CF8C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBHJEACgkQvmfHXsgf
MkQ1Ig//X/aKo9+oJm6QejZSNN9jClo5iulHQS1DcJgxZlm+IHS/bkFWJ46hdVyQ
EJvNkerVMIDfeBAmUze+deJ82jAvIqyjw5H7LICmD5sWtW3C1Epl/voHpuRhDOwb
4BOGeUykVlrv5vECEOkWoG9oScEI9J3ubHoMM2aLvYvUMsWsVOp6GJ4FacvPXESS
ctM/JDGjHFNxrtMf3PXLJmtzsCCIG0W7hlaDVPMXdi1svf5K7RIxW1beV0N03mA0
YBgEzJDxIvx9SRqBYdF/Z2FoUTYjrVY4RRcZNdJISYJQ9WYOcljZqjnZADMMo2xo
CVWSqRAhAluI6/54NkkV+dgirqe+yLLWIuVdNizMKfMjYSDuN7QTlyqeWVa49RJX
nSrGPcrahMuMy/oKpm3klZj+5H73pi6EGacoS48hMrQE4EhP/F/ToDuyFTXZ0/g3
w5YFsLAS8T5k9K8AkEuycOpQzT2rZCuTFmbANh+yLj3qQiS1wMuGAg/cotsoz16U
gS0i+sIVyY7jAMCdVw3IKQDLBnyd5vj2NHKCjaMTuxHedmFE9/8G/06RxBVma8C5
V/1mF5W0nLLytFTO3/epSmIgieXLfqLRhbAeSsgMHURulxlyHPi6iYqEK8dFhfmA
ukbPhFAG6AUtYEQa9UMa///kDGsUYuQww3NZly9dXnwVXU0SII4=
=gjGN
-----END PGP SIGNATURE-----

--Apple-Mail=_735F9A93-B774-4915-AD97-E5B2D6E2CF8C--
