Return-Path: <leith@leithalweapon.geek.nz>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=leithalweapon.geek.nz; s=google;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=sN2ljYOaiXtCqc9xE8JlXycwfWun0TSrQUXmDyNz2Mc=;
	b=iVRDyfMnZv2sudgXRAqldqRvjB3AnfFJ04dH/8HG5rVwP8x8rt6IlnpLU5wOJfYmz1
	d0NJw6s7YR2ykP9DBVuVlkK/Ri6oIddut+0LpDZGxSxlOzyX59CBD+xvPTjLZDC0Nb8q
	NQDlj7NROEKiCeYBEdDqypAnNqC0LtM0XGzpSArqtu8TplcF0MvsYdD9zzmr1Rv4ut2Y
	NPvm6Twd6QjdNLjwtDZIo3jc2WtCLlYBKsHA4UDO8liBtHbADO436dC9gUd4E2hant9C
	r54BGa9pcMzF/Ci6hSl/5zJrru7VKPmD/X1c3OzX4Jr2mqMNNRHZNgso02xI7Qx7fX4c
	DQqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bade.nz; s=google;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=sN2ljYOaiXtCqc9xE8JlXycwfWun0TSrQUXmDyNz2Mc=;
	b=JNiEazpm6sCyWMHAzoaB1v0ON5h5K8e9wwmRDyP8+L1wdr7bdQc9hpdsQlP188sbfU
	sJffutAUUwf3K07BVRojcy8aQuuy4/BdK5zNV2aA7n418htxVItqsqYrVpB+fQxGs7oR
	yCsDo/0fzjYuWOYGC/mi1QCaqY8YARCfpcHgjrNchWMFuN6hqRzuYgfTXdcyTkt9ZII/
	r12qyri33em2+wRJMWFXTPwV0/eEetkIdY2aEYwovqjb1rK87jrEQWGSAifmM6eNC2sS
	44lDQD6HA9q2fStkqKe+7mEAXAFtqXi3hBIbpBlI/DywHB3KeRqYEKceaUhvUtYE5SNU
	Ql2g==
MIME-Version: 1.0
Sender: leith@leithalweapon.geek.nz
From: Leith Bade <leith@bade.nz>
Date: Thu, 11 Jan 2018 08:16:57 +1100
Message-ID: <CAPDEroVt5TzmVjA0fWbUWmkC-bFehWd38mL7hdD=B5dsd5o8rw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403045c2e365a5efc0562728edb"
Subject: [Printing-architecture] Open Printing Debian repository GPG key is
	weak
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

--f403045c2e365a5efc0562728edb
Content-Type: text/plain; charset="UTF-8"

To whoever maintains the repository at http://www.openprinting.
org/download/printdriver/debian/dists/lsb3.2

The Release.gpg key needs upgrading to SHA2

This is the warning I'm seeing on Ubuntu 16.04:
W: http://www.openprinting.org/download/printdriver/debian/
dists/lsb3.2/Release.gpg: Signature by key
F8897B6F00075648E248B7EC24CBF5474CFD1E2F
uses weak digest algorithm (SHA1)

I also noticed that this issue has been listed on https://wiki.debian.org/
Teams/Apt/Sha1Removal

Thanks,
Leith Bade
leith@bade.nz

--f403045c2e365a5efc0562728edb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12.8px">To whoever maintains the r=
epository at=C2=A0<a href=3D"http://www.openprinting.org/download/printdriv=
er/debian/dists/lsb3.2" target=3D"_blank">http://www.openprinting.<wbr>org/=
download/printdriver/<wbr>debian/dists/lsb3.2</a></div><div style=3D"font-s=
ize:12.8px"><br></div><div style=3D"font-size:12.8px">The Release.gpg key n=
eeds upgrading to SHA2</div><div style=3D"font-size:12.8px"><br></div><div =
style=3D"font-size:12.8px">This is the warning I&#39;m seeing on Ubuntu 16.=
04:</div><div style=3D"font-size:12.8px">W:=C2=A0<a href=3D"http://www.open=
printing.org/download/printdriver/debian/dists/lsb3.2/Release.gpg" target=
=3D"_blank">http://www.openprinting.org/<wbr>download/printdriver/debian/<w=
br>dists/lsb3.2/Release.gpg</a>: Signature by key F8897B6F00075648E248B7EC2=
4CBF5<wbr>474CFD1E2F uses weak digest algorithm (SHA1)</div><div style=3D"f=
ont-size:12.8px"><br></div><div style=3D"font-size:12.8px"><span style=3D"f=
ont-size:12.8px">I also noticed that this issue has been listed on=C2=A0</s=
pan><a href=3D"https://wiki.debian.org/Teams/Apt/Sha1Removal" target=3D"_bl=
ank" style=3D"font-size:12.8px">https://wiki.debian.org/<wbr>Teams/Apt/Sha1=
Removal</a><br></div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><=
br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Thanks,</spa=
n><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Leith Bad=
e</span><br><div><span style=3D"font-size:12.8px"><a href=3D"mailto:leith@b=
ade.nz" target=3D"_blank">leith@bade.nz</a></span></div></div></div></div>
</div>

--f403045c2e365a5efc0562728edb--
