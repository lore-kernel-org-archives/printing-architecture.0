Return-Path: <chunlinyao@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-transfer-encoding:subject:message-id:date:to
	:mime-version; bh=JBX3KJNtOy4BDvhqvdOMYQ4PfdHnn/yvAEM8nZLZ8R8=;
	b=ykPQtXPc6VtUdpDgTaaMe4Pma03RDnA0TtZxGAA31OnxqWjZXCzMMKUbpsWnNVUIcl
	nOYuGfWlhPpXMTkSd+mcO19zH96P2gZytEfoPh5FImOEbxLj87dnFF8DMtQgb1imri+t
	97r5dqiNjtsZgM593SumEW8251QX1NVwz5PUlGloNCqF0usSALOLQ5dcN16ozYbG5GE+
	SWImnRQRTghcNzR1rnOJsU8TgAsapqSO/eb3fFwogjcP9LE8uAVatUQuGsY8q7zQAXdv
	lMToRWksoAGy6EhQjc13v1Sx0+i7XOHaxubkQ8ut+XkHF4ZT+rGTDe4igdRJSC7OM0bv
	0buw==
From: YaoCL <chunlinyao@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Message-Id: <F6B3A5F7-EFB6-4A0B-9927-C9FEB97D05EA@gmail.com>
Date: Fri, 12 Aug 2016 19:13:36 +0800
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: [Printing-architecture] better support for 203dpi label printer
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

Hi

CUPS support 203dpi label printer, when print from pdf to label printer, =
cups use gstoraster to rasterlizing pdf.
as discussed in <http://bugs.ghostscript.com/show_bug.cgi?id=3D696758> =
due to low resolution of 203dpi and any-part-of-pixel rule,
the produced barcode may scannable. Ghostscript has a operator to =
control center-of-pixel rule  or any-part-of-pixel rule, which is `0 =
.setfilladjust`.
I tested a pdf with and without this operator, and checked the result =
raster files. with this operator the barcode is more accurate.

Can we add a option to enable or disable this adjustment?

=E2=80=94
YaoCL=
