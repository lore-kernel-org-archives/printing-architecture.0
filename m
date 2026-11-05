Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=173.255.209.91
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793899904;
	b=B8ODf+C5cZJHNWPJPFrm1Z/PG4dXxBvB9PS4b623oD6FdKpjHNNvcuYvfO1bUCmBSE66
	 gvVAUeF2F7xRuOtCtWY/+JnnEkpfu1OwfTnjsibuRRY6R9VK5lfeHBF8qIiXuhXtsRwCx
	 V+iIBhp5koLRbHN8eNFP6UF/O4YDyLHRP0EfNIhBQWIHebZaQAYvW9Ab2pD/i0yzEEsPt
	 yC8sbZcW67Nj0JvuweLKGCQUlKSJbuHn90wRhl4swxrx3h30rpB4qRMr0z4tBNBxWM5U5
	 qT3Vw5dLnhTUrfveVD80MiAVaiYHI0wmStIDOr/Sfmnvh6Ik6eeC8lK5KJqpNg/eiWA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793899904;
	h=DMARC-Filter:Received:DKIM-Filter:DKIM-Signature:From:Content-Type:
	 Content-Transfer-Encoding:Mime-Version:Date:Subject:Message-Id:To:
	 X-Mailer;
	bh=+bi5D+WpvVUDpqZwk9MlFJV+HQw0fhqWN+BlHlJf80k=;
	b=NjbwHI27BEjt1S+LJP0TXBmOVjx9AuGssxoc4pHYlY8gGx5mxWnQoLC+TH/JBlbI4vRh
	 dU/LM7mAn8tTh4UkTPRzCK+Ajh8SsEo0hUivjReIUhZU0zmFGQ9sGx7DROgWnJxJPl7/x
	 lIpJtrS7Yn+VHV6eHT0Ed+elaXvNvhyql/I5+/cpwfG5wBqP+oyy+vj0LXjCwBVMTMNIJ
	 TAqjug9bOiN5l6X3D34DXibd/UnKYkVUe2s7SxpuuwiI0XvvWWcSI/Rlf0sWmWZAg6fvT
	 nUqm+oujFXMUUozOaoWAYYdi4H3RvT8GtQ6xzKf2BdnZEzcvOEr3dfnStEk2eMxUjcw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=msweet.org;
	spf=pass smtp.mailfrom=msweet.org;
	dkim=pass header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=By6gbqtI;
	arc=none smtp.remote-ip=173.255.209.91
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE28606A326
	for <printing-architecture@lists.linux.dev>; Thu,  5 Nov 2026 17:31:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 7DE28606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=By6gbqtI
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 8C6C881D95;
	Thu,  5 Nov 2026 17:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 8C6C881D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1793899896;
	bh=/JpKI+MpUSngfqcNb2jn8Sj3rRMt5q0lyGRfsyKpv8g=;
	h=From:Date:Subject:To:From;
	b=By6gbqtITVPBHGZDjIuy6Tpn1TFq9Le2ODKQzUx+aSBh7nJ+N7IX+2AsiDMIMiSB9
	 43AkXTkPodUV+s8W9Fdmp9o9s11qOVOSB6B79W57Ll0WMTbO6DLdwaFkxE20Gx45Ml
	 El6yMoQLYmECixUpUTwJ6FzFBmspsIP0yvvZ49ac=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Post: <mailto:printing-architecture@lists.linux.dev>
List-Help: <mailto:printing-architecture+help@lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
List-Owner: <mailto:printing-architecture+owner@lists.linux.dev>
Precedence: list
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3901.300.31\))
Date: Thu, 5 Nov 2026 12:31:25 -0500
Subject: libcups v3.0.4
Message-Id: <AD5CE7E5-A7E8-4F86-9599-221E77862E33@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3901.300.31)

libcups v3.0.4 is a bug fix release:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0.4

Changes include:

- SECURITY-3.5: Updated `cupsOAuthGetTokens` to do more validation of =
the access token (GHSA-mq7v-g5c2-75fg)
- SECURITY-2.3: `cupsGetDests` did not validate printer/server responses =
(GHSA-hp44-ph36-rc52)
- Added `cupsDNSSDSetHostName` function.
- Added Swedish localization (Issue #174)
- Added missing `cups_serverroot` variable to "pkg-config" file.
- Updated cookie handling to separate Cookie and Set-Cookie headers =
(Issue #161)
- Updated `cupsOAuthGetTokens` to support multiple audience values =
(Issue #166)
- Updated JSON code to support escaped Unicode surrogate pairs (Issue =
#169)
- Updated `httpSeparateURI` to better detect out of range port numbers =
(Issue #179)
- Updated `ippValidateAttribute` to check name and text values against =
RFC 5198 (Issue #180)
- Updated `cupsSignCredentialsRequest` to validate all common names =
(Issue #189)
- Updated `cupsOAuthGetUserId` to properly expire stale user information =
(Issue #190)
- Updated `cupsOAuthMakeAuthorizationURL` to require the authorization =
endpoint to be a "https" URL (Issue #193)
- Updated `cupsJWTHasValidSignature` to use a constant-time comparison =
function for HMAC signatures.
- Updated `ippeveprinter` to support a single test password.
- Updated `ippeveprinter` to support OAuth/OpenID authorization.
- Updated `ippeveprinter` to add a date/time stamp when logging to a =
file.
- Updated dateTime parsing in IPP files.
- Updated the HTTP implementation to reduce stack usage.
- Updated `cupsGetRand` and `cupsOAuthMakeBase64Random` to use better =
random data, when available.
- Now explicitly validate IPP attribute names as keyword strings.
- Fixed `httpGetDateString` with bad date/time values (Issue #167)
- Fixed a potential buffer overflow in `cupsDNSSDAssembleFullName` on =
Windows (Issue #170)
- Fixed a potential string overrun when loading .strings files (Issue =
#171)
- Fixed `cupsSignCredentialsRequest` to reject requests with a bad =
signature (Issue 172)
- Fixed `httpPeek` return value with compressed message bodies (Issue =
#175)
- Fixed a potential integer overflow with `pwgMediaForPWG` (Issue #176)
- Fixed some character testing that wasn't safe on platforms with a =
signed `char` type (Issue #177)
- Fixed support for mDNSResponder on Windows (Issue #178)
- Fixed `cupsGetCredentialsTrust` to properly validate the signatures of =
CA-signed credentials (Issue #181)
- Fixed error checking in `cupsOAuthGetAuthorizationCode` (Issue #182)
- Fixed the handling of `ATTR-IF-[NOT-]DEFINED` in IPP files (Issue =
#185)
- Fixed a potential race condition in `cupsEnumDests` (Issue #186)
- Fixed a bug in `cupsJSONExportString` when exporting a child node =
(Issue #187)
- Fixed the ECDSA P-256 curve used for JWT and X.509 certificates and =
signatures (Issue #188)
- Fixed `ipptransform` margins for small media sizes (Issue #191)
- Fixed `ipptransform` output of more than 10000 pages (Issue #194)
- Fixed `cupsLangFind` issue with POSIX locale (Issue #196)
- Fixed custom media size buffering (Issue #198)
- Fixed a DNS-SD browsing issue on Windows (Issue #199)
- Fixed `httpGetHostname` on Windows (Issue #200)
- Fixed handling of "%c" formatting in `cupsFormatString` (Issue #201)
- Fixed DNS-SD threading issues on Windows (Issue #204)
- Fixed issues related to extension tag values (Issue #205)
- Fixed the loading of the default DigestOptions value (Issue #206)
- Fixed cancellation of the current active job in `ippeveprinter` (Issue =
#207)
- Fixed PAM support in `ippeveprinter`.
- Fixed a typo in the JWT HS verification code.
- Fixed `ippValidateAttribute` not returning `false` for too-long URIs.
- Fixed a memory leak in `httpGetSecurity` when using GNU TLS.
- Fixed a memory leak in `cupsJWTImportString`.
- Fixed a bug in `cupsJWTExportString` with JSON output.
- Fixed too-permissive parser in `cupsJSONImportString`.

Enjoy!

________________________
Michael Sweet

