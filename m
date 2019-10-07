Return-Path: <seb@h-k.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=h-k.fr; s=mail;
	t=1570443446; bh=FQqVwYr2u5fGLMeU7+WL10G9FG0NnbcEiPmltHSV6jY=;
	h=Date:From:To:Subject:From;
	b=wuH8FJrXZsKdRPD+5vikDHxK/PU6AEOz4uGiTn1yziEjYOhO0cuAlItby2A/p78pc
	bI+AfDpSfKS2whq3W/HgHsPRplhFqIpsPZx4o0uMjxMa/3zsR4fFDeg0S9cGhXI/6F
	ejg2oSApdJhMQRDDL4G5YzO/r9ZJJXENCo1G7NYU=
Date: Mon, 7 Oct 2019 12:17:26 +0200 (CEST)
From: Seb <seb@h-k.fr>
Message-ID: <alpine.DEB.2.20.1910071150160.28958@af3358511.vc-37-187-30.rh>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	BOUNDARY="-1155178722-1953878943-1570443446=:28958"
Subject: [Printing-architecture] Printing when printer is off
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1155178722-1953878943-1570443446=:28958
Content-Type: text/plain; format="flowed"; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello,


I print with an old HP LaserJet 4250.
When it is ON, its fan is periodically quite noisy.
So it is OFF most of the time.

In Debian 9, I would send a file to the printer with, say, lpr, then=20
switch the printer on and the sheet would appear after a few seconds.

In Debian 10, when I do the same thing the print job remains in limbo. I=20
have to connect to CUPS' web interface to manually "release" the job.
(If I turn the printer ON before printing, all is fine.)

CUPS' configuration is "retry-job" in Set Printer Options > General >=20
Policies.

I can't find what is wrong in the configuration. I use the same PPD file=20
as in Debian 9.

Would anyone have an idea?


Thanks in advance,
S=E9bastien.

---1155178722-1953878943-1570443446=:28958--
