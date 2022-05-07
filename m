Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org D32718207F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651950294;
 bh=jDeWAxYPGC940RJ2X4I4J790DARQhJXUw37/LpHRNB8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=aCU4YNZ5P0Cr7o6By9kvirnWm1K7wJnEEYSqUKo9StcWAANpjkEaFLozW4w67nNDE
 YMYCH856qRzGnjG9ALY9+4oVCIOu2iOaJR/K/TrBEBrbZObvA+SNB6lCA+BIOBJR/N
 7QPXjpJR6/qfGbCfA2TUoXpynlK6fYusc3Vm0+YU=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_61F8E7ED-35AB-47A7-8D75-983B81C7BAAC";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <7934897f-b69a-8503-96c4-3123296b1ab4@gmail.com>
Date: Sat, 7 May 2022 15:04:51 -0400
Message-Id: <D7AA9F09-06C6-4F57-9235-5120FE715C8A@msweet.org>
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
 <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
 <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
 <2613b8ae-3d3f-ed8d-dd9a-8e241976388a@gmail.com>
 <002EC5D2-B6B8-4D82-AD42-D84AABFD6D13@msweet.org>
 <7934897f-b69a-8503-96c4-3123296b1ab4@gmail.com>
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
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


--Apple-Mail=_61F8E7ED-35AB-47A7-8D75-983B81C7BAAC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 7, 2022, at 12:07 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> OK, we will offer both options. It is not our responsibility when the =
distros accept including Ghostscript, letting the printing stack use =
Ghostscript, and then use the distro for cloud services (and up to now =
no one complains about it). I hope it is at least no AGPL violation to =
use Ghostscript on a regular real-iron computer due to its closed-source =
BIOS.

Like I said, the AGPL is not specific enough to exclude this... :/

________________________
Michael Sweet




--Apple-Mail=_61F8E7ED-35AB-47A7-8D75-983B81C7BAAC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJ2wtMACgkQvmfHXsgf
MkQntA/6AsRv2MjMCn6mutsHOKlSQtFRelWnszKFY2FFreYxIvZRJMilezSqR1dN
AT+QyEI1iFUMws5UKjHwuoT+hF05JfST3lDFcZhzdhVWRn92PMDddV34viIIAmrG
tavFW0OWVfyG6yKq2oQ2mzi6/M8UL77bNG5hpn0+xKgdlc+rlkZ5ziCCZMaaCEYm
0ecTTSG6fskQ9DjfKjg957cHbbKf9OC0EuwFpnGwtdX6G5gNLTF4YAXDAK825Rc8
akWHTUs0W9KjMdkrijEKeqAPT6W+ZJjUy+W/dBW5RICy8YiK7CfEzcrop0PcPzRB
47vdkoHx6SI5KKk725kq2HZ35ldKqBJ18JEH+Si2jEjl0zhWe2CVA4yh0iTjpxrl
BKjC69qxuS9+tobuIwCoFcVFJpaP/rub2rA9vaKW7nVazooHReze1VTt4W0vVATm
W0Uvj8kcqgpKR0tzI6QijY+/M9J3OHeGx8s1viI/lhkR5F98Wzejb/b8GqWTRSFq
1sjjLz2UG8xo+PRlTcB5AC8yIZWs3Cd5Rn76JfS791zArxSpavUs5/ZhVeJDMMGk
t6HNzl/Y/3jQ7kUvuxdVNvTBeZtqEfuadTXOUkUN+E40fAz+wOJvNgutrFIJJ9g6
B1YbH2Vko0jFsjiiI0BNbUAaDDwGcNfrYwZ1KDNDXV083LuZquQ=
=qIgk
-----END PGP SIGNATURE-----

--Apple-Mail=_61F8E7ED-35AB-47A7-8D75-983B81C7BAAC--
