Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2522E29AB02
	for <printing-architecture@lists.linux.dev>; Mon,  8 Jun 2026 17:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938149; cv=none; b=RQHf682wiqJlramDdDqSoT0C+SxjyDE4ibFc3KnHyhhP3BDz5BPHx8XmN9iNBGKbbvqzVHX7YADfmix1bFwng6SowzA/+/toEfSX6VaPNVZTBar6RfhnLBd/mT03B1xQS+jTnhFb+tWxIQZ+AJto9YOj/UVSWXLlLhvOynzlsMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938149; c=relaxed/simple;
	bh=3fjtL0EqPn3dF6qF7Xl7/axMv6HYOuzspDZj+qeK7Es=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=gdACoIxiDm23YDJpA8t85RzzZhPpgJFwSydjhEAaW0yZKBCgrKykXqJOxJF/S+8/pwR7X5DmkIN5D5TYT8dL62G9PkRFDOZ8NJqzblLTWAOt47t9CGTYUpq9JfYBnP2vgHSJ/aRQkF+z8m1TcKkxjN6brJgVwY97LZh4bS/qGcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=VsQYJrrX; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="VsQYJrrX"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 7825680438;
	Mon,  8 Jun 2026 17:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7825680438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1780938147;
	bh=3fjtL0EqPn3dF6qF7Xl7/axMv6HYOuzspDZj+qeK7Es=;
	h=From:Date:Subject:To:From;
	b=VsQYJrrX5vHa6Q9aNaKEgWG4FkupFOqzA7ShP9U61+TswdXF7lgcOcIEY8EqVw6oe
	 uqcb3sqJccuO+E6LFGPL2BkZexP6aigbd3yA6JlpbRYkceCyh+AhExF9dhBQS/rsdr
	 iiDvQMR0i3UID1R+XGz3fuQcMUNxM9Fm7dr5RPdI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Date: Mon, 8 Jun 2026 13:02:16 -0400
Subject: LPrint v1.4.0
Message-Id: <0E3D8F5B-1F56-4651-A196-9E6D2E9CF76B@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

LPrint v1.4.0 is a feature release that adds support for ESC/POS =
printers and
several other printer models with existing drivers:

    https://github.com/michaelrsweet/lprint/releases/tag/v1.4.0

Changes include:

- Added ESC/POS driver (Issue #123)
- Added Vevor Y428BT driver (Issue #130)
- Added 4 x 7.83 inch label size (Issue #144)
- Added Arkscan 2054a and HP KE103 (Issue #165)
- Added DYMO LabelWriter Twin Turbo driver (Issue #193)
- Now enable the TLS web interface unless the "no-tls" option is =
specified
  (Issue #161)
- Updated the default state file to match current PAPPL defaults (Issue =
#129)
- Updated the maximum label width of TSPL printers to 105mm (Issue #141)
- Updated the ZPL driver to automatically disable status commands if the =
target
  printer doesn't implement that part of ZPL (Issue #161)
- Fixed the margins for DYMO printers (Issue #132)
- Fixed some Brother driver problems (Issue #167)
- Fixed a NumCopies issue in the TSPL driver (Issue #188)
- Fixed list of label sizes for DYMO LabelWriter 4XL (Issue #198)

Enjoy!

________________________
Michael Sweet

