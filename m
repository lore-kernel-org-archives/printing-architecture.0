Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E318D26AC5
	for <printing-architecture@lists.linux-foundation.org>; Sat, 12 Sep 2026 16:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=140.211.166.136
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789230823; cv=fail; b=UTMEZlZL7HOh1xf1rg2TKTLEZKkDcOE8thkpC5Yzo/kRbfsLn/rgcmYimZhMB+GYge+P2u5FpTp/yHdtiMIH0+POxbKpra4zX0noeU9oP36SBFVzlfEmT21XxX/HEWjPRoSBnc48cB7/7C5stjVlBxXmmCVa0DfdR7uYejHPZbk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789230823; c=relaxed/simple;
	bh=J9QXiOdV54cf/4nDxcMVkqfrnplm9DBurdsKdX4rwA4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BaMt/T5s28Pwj/5cVZ3bjddx02l4PM+B9ek8fDF7GlQ+IOHteG28chN7Z6VoPTmoQO8fLLLdf749VDtqxhJHYKJK/58vdfyNiOYWgo3L0Ueg9Y97gmhBf2AO2qO+/ZF2k6sxpTDuzdIpy2EbXLPLwbs8QV8IeU1h1hpmok8dnYM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; arc=fail smtp.client-ip=140.211.166.136
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D55C60600
	for <printing-architecture@lists.linux-foundation.org>; Sat, 12 Sep 2026 16:33:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: 0.415
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8RsBBdTFwdRJ for <printing-architecture@lists.linux-foundation.org>;
 Sat, 12 Sep 2026 16:33:40 +0000 (UTC)
ARC-Filter: OpenARC Filter v1.3.0 smtp3.osuosl.org 576646060A
Authentication-Results: smtp3.osuosl.org; arc=none smtp.remote-ip=23.83.222.57
ARC-Seal: i=1; d=osuosl.org; s=arc; a=rsa-sha256; cv=none; t=1789230820;
	b=lAMZBDp/7v3Idc6fOjkfEMjEwc31qMDxigfHZqmFLm/cOW1jAkVwVDl3thwgLaepDZR9
	 I14yKyBuBdLwv1uFchZkNvDamMB9AIWHbEnIZXgMXavvTCENSZNkNhzlM0mafm1dYsvLc
	 MWfdkHL5CEXLzE7r+msRxLxB9LYP6k855HmdLrKwqsG8G2u8ckhX+1tA4gBWltjb6V5P1
	 FVIP5L3p5UIvyWdC6QS+QycclztE7/iBWIPkEgK22MZHX/7Ig7rQFqXGHCBoVOva/WJ92
	 E6lGx9TNuwaByIzxhveLqcOPNuDSrzQ/HTmCV7WPbqFEsaWEYKgMvLfT2Nk1ldrzHoA==
ARC-Message-Signature: i=1; d=osuosl.org; s=arc; a=rsa-sha256;
	c=relaxed/relaxed; t=1789230820;
	h=Received-SPF:X-Sender-Id:Received:Received:X-Sender-Id:X-MC-Relay:
	 X-MC-Copy:X-MailChannels-SenderId:X-MailChannels-Auth-Id:
	 X-Soft-Imminent:X-MC-Loop-Signature:X-MC-Ingress-Time:Received:
	 Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-AuthUser;
	bh=J9QXiOdV54cf/4nDxcMVkqfrnplm9DBurdsKdX4rwA4=;
	b=kkSB8nWA5BvIpc39LAZOLYkX7DuUDXtE3KL3n0eFkeS3PDsEQt+uyqqjQSItDyiFqWFX
	 FTNjFZYEeAwOa5P8LP2uNThZcy40k2TnNM8Yevy52KO34j/47qszp8j0CdlJZxfyoDIlK
	 R4RtkybuZe34hRxc/OlnH9tksA5QK50gR6ftxnfH0Jwko2IkqRez9elLnrfbPNecGDzk8
	 JSFeZHOTAN3VXgF43w1dsIWZ+vPg52FY2XLHoBl8jbCsW45zvPslQhliyzMdt+fAZuQqR
	 XiFmDNU5EKcFN5GXMir6G6biUH5IHM4hnh2bAEnMFnVBubJqVrX/LXyiGcfMsGCk7QQ==
ARC-Authentication-Results: i=1; smtp3.osuosl.org; dmarc=fail header.from=maziyoexports.com;
	arc=none smtp.remote-ip=23.83.222.57
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=23.83.222.57; helo=elephant.ash.relay.mailchannels.net; envelope-from=import@bara.co.il; receiver=<UNKNOWN> 
Authentication-Results: smtp3.osuosl.org; dmarc=fail (p=none dis=none) header.from=maziyoexports.com
Received: from elephant.ash.relay.mailchannels.net (elephant.ash.relay.mailchannels.net [23.83.222.57])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 576646060A
	for <printing-architecture@lists.linux-foundation.org>; Sat, 12 Sep 2026 16:33:38 +0000 (UTC)
X-Sender-Id: a2hosting|x-authuser|shihan@zandt-sourcing.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 0F0334C1644;
	Sat, 12 Sep 2026 16:33:37 +0000 (UTC)
Received: from az1-ss25.a2hosting.com (trex-green-2.trex.outbound.svc.cluster.local [100.100.63.247])
	(Authenticated sender: a2hosting)
	by relay.mailchannels.net (Postfix) with ESMTPA id C3B204C0A73
	for <printing-architecture@lists.linux-foundation.org>; Sat, 12 Sep 2026 16:33:36 +0000 (UTC)
X-Sender-Id: a2hosting|x-authuser|shihan@zandt-sourcing.com
X-MC-Relay: Neutral
X-MC-Copy: stored-urls
X-MailChannels-SenderId: a2hosting|x-authuser|shihan@zandt-sourcing.com
X-MailChannels-Auth-Id: a2hosting
X-Soft-Imminent: 7a554b877cb5cde1_1789230816897_3297185608
X-MC-Loop-Signature: 1789230816897:3176825908
X-MC-Ingress-Time: 1789230816896
Received: from az1-ss25.a2hosting.com (az1-ss25.a2hosting.com [68.66.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
	by 100.100.63.247 (trex/8.0.2);
	Sat, 12 Sep 2026 16:33:36 +0000
Received: from [207.189.12.98] (port=50896 helo=bara.co.il)
	by az1-ss25.a2hosting.com with esmtpa (Exim 4.100)
	(envelope-from <import@bara.co.il>)
	id 1x5QfX-000000008Rq-2Ys6
	for printing-architecture@lists.linux-foundation.org;
	Sat, 12 Sep 2026 09:33:36 -0700
From: Siddharth Manu <sm@maziyoexports.com>
To: printing-architecture@lists.linux-foundation.org
Subject: Product Inquiry
Date: 12 Sep 2026 12:33:34 -0400
Message-ID: <20260911183944.6E9BBE6CA9A8B970@maziyoexports.com>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-AuthUser: shihan@zandt-sourcing.com

Dear printing-architecture,

I hope this email finds you well.

We are interested in sourcing your products and are considering placing=20
an order, subject to competitive pricing and favorable commercial terms.

Could you kindly confirm the following:

Whether you accept export orders.
Your preferred shipping terms (CIF or Ex Works).
Your estimated time of dispatch (ETD) for an order placed early next=20
week.

Upon receiving your response, we will forward our detailed product=20
requirements for quotation, along with our company profile, for your=20
review.

If this inquiry has reached the wrong department, we would appreciate it=20=

if you could kindly forward it to the appropriate contact.

We look forward to your response and hope to establish a successful=20
business relationship.

Kind regards,

---
Kind regards,

Siddharth Manu
Import Export Manager
Maziyo Exports LLP
Office No. 116, 1st Floor, Ostwal Ornate Building No. 1, Jesal Park,=20
Bhayander East, Thane, Maharashtra, 401105, India
Website: http://www.maziyoexports.com/
Email: sm@maziyoexports.com

