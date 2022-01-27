Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643286072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=b2k8DiVeyopE+DJ4KPwwL43rRVnBXtl9vCpdwvOdixQ=;
 b=CpQCijEcseyuXNeUmIZUrXU3dxoborshVtSA4u7fzJGA7+iMZf+ZNd2wTc6ivnVD1UyCwo
 FxdgQPrXKQO9NvXR+opyLfzGKEnz7sVIYhq9/DkdthEzBwvVPMYOLosi2xC383RuhrikYx
 LZg+HpvKPZ+DD4bF6LwjGsunINEBlos=
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Date: Thu, 27 Jan 2022 13:20:51 +0100
Message-ID: <CAAqMZmZUqRG-F5XMN3viALLDXXU7L0PMZoYS31yecMrQUfwuEA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000f7417005d68f596c"
Subject: [Printing-architecture] CUPS 2.4.1 is released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

--000000000000f7417005d68f596c
Content-Type: text/plain; charset="UTF-8"

Hi all!

CUPS 2.4.1 is the first bug fix release from 2.4.x series. Among the other
bug fixes it fixes sharing default color mode to clients and several memory
leaks.

Detailed list of changes:

- The default color mode now is now configurable and defaults to the
printer's
  reported default mode (Issue #277)
- Configuration script now checks linking for -Wl,-pie flags (Issue #303)
- Fixed memory leaks - in testi18n (Issue #313), in `cups_enum_dests()`
  (Issue #317), in `_cupsEncodeOption()` and `http_tls_upgrade()` (Issue
#322)
- Fixed missing bracket in de/index.html (Issue #299)
- Fixed typos in configuration scripts (Issues #304, #316)
- Removed remaining legacy code for `RIP_MAX_CACHE` environment variable
  (Issue #323)
- Removed deprecated directives from cupsctl and cups-files.conf (Issue
#300)
- Removed `purge-jobs` legacy code from CGI scripts and templates (Issue
#325)

Enjoy! :)

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

--000000000000f7417005d68f596c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all!<br></div><div><br></div><div>CUPS 2.4.1 is th=
e first bug fix release from 2.4.x series. Among the other bug fixes it fix=
es sharing default color mode to clients and several memory leaks.</div><br=
>Detailed list of changes:<br><br>- The default color mode now is now confi=
gurable and defaults to the printer&#39;s<br>=C2=A0 reported default mode (=
Issue #277)<br>- Configuration script now checks linking for -Wl,-pie flags=
 (Issue #303)<br>- Fixed memory leaks - in testi18n (Issue #313), in `cups_=
enum_dests()`<br>=C2=A0 (Issue #317), in `_cupsEncodeOption()` and `http_tl=
s_upgrade()` (Issue #322)<br>- Fixed missing bracket in de/index.html (Issu=
e #299)<br>- Fixed typos in configuration scripts (Issues #304, #316)<br>- =
Removed remaining legacy code for `RIP_MAX_CACHE` environment variable<br>=
=C2=A0 (Issue #323)<br>- Removed deprecated directives from cupsctl and cup=
s-files.conf (Issue #300)<br>- Removed `purge-jobs` legacy code from CGI sc=
ripts and templates (Issue #325)<br><br>Enjoy! :)<br clear=3D"all"><br>-- <=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><div>Zdenek Dohnal</div><div>Software Engineer</div>=
<div>Red Hat, BRQ-TPBC<br></div></div></div></div>

--000000000000f7417005d68f596c--

