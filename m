Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0FE283CB5
	for <printing-architecture@lists.linux-foundation.org>; Sat, 13 Sep 2025 15:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757777192; cv=none; b=OOGJi4Q4neKByQfg3iEI1zWgE2vj4Yq2227huBo6aQW4kHU9EaxH+XgreH7bfG1EE9IPIMCBHZfKfY4/H3/xCuZWJgABmVBuBxdDy+Xd/C6SD4zXRrzqB+f8ieD3g+xE2yU+D3wOKuTh6vG/oQ7cXrPtw4HGaJd5kuHqdw2vct4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757777192; c=relaxed/simple;
	bh=pxnxAIcIQBnuqbf7y5jc8AIz2e3yYpMe/24ybQabRrE=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=rmKSZl62kuGJDGbxdn2f9h6cZWERZjiH6QE6rMxUztuBngIE74DvmeIIUpWwWLxSvi3+R/q3+tAPqlXvxniK02l/P9tPjzMJ06TGvpTcGfXp+etMVmZHFiqi/b67wYXK9DvZGtDGrUelHB8ZmixZPKN4vbnTiHBEhB52vizd2rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=NnouGwff; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="NnouGwff"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AE8940D12
	for <printing-architecture@lists.linux-foundation.org>; Sat, 13 Sep 2025 15:26:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.791
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NI3BS0WLGLeT for <printing-architecture@lists.linux-foundation.org>;
 Sat, 13 Sep 2025 15:26:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3B2940C78
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3B2940C78
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=NnouGwff
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C3B2940C78
	for <printing-architecture@lists.linux-foundation.org>; Sat, 13 Sep 2025 15:26:29 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 6B6D9803A9;
	Sat, 13 Sep 2025 15:26:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 6B6D9803A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1757777188;
	bh=pxnxAIcIQBnuqbf7y5jc8AIz2e3yYpMe/24ybQabRrE=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=NnouGwfffpRhjnQT2vV8DDInRImHN9JzvHgvlCskrL3bxDpBGk5Ety22W5Y6622mH
	 NLb0B4qdntuVStDRpfYLxq58YaqDF4dYGsCQMHc1sV3zsOzkmiXwWobxNGYAzgqPWW
	 RvQvx+0y/Jy8JeYRdKaX3McppVOcbYY33n7rG3Tk=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Subject: Re: PDF problem - Help needed
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CAFRVfnPjDmh2fO3d_DcBzSTHgdpSEhf8HmceXydOo6VM6Qq85Q@mail.gmail.com>
Date: Sat, 13 Sep 2025 11:26:16 -0400
Cc: Tobias Hoffmann <smilingthax@googlemail.com>,
 Jay Berkenbilt <ejb@ql.org>,
 Chris Liddell <chris.liddell@artifex.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 Till Kamppeter <till.kamppeter@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <F8F1693A-F9D9-443D-B72D-CF9F33F224CE@msweet.org>
References: <ed6f7e77-09f5-4df8-97b1-20358f28bccc@gmail.com>
 <D83564CB-79A8-402B-A660-FE7D6CDD4FCA@googlemail.com>
 <CAFRVfnPjDmh2fO3d_DcBzSTHgdpSEhf8HmceXydOo6VM6Qq85Q@mail.gmail.com>
To: UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>
X-Mailer: Apple Mail (2.3864.100.1.1.5)

Uddhav,

> On Sep 13, 2025, at 10:05=E2=80=AFAM, UDDHAV PHATAK 22BCE10731 =
<uddhavphatak2022@vitbhopal.ac.in> wrote:
> ...
> Question:
> What=E2=80=99s the best way to inspect page content streams to verify =
what=E2=80=99s
> actually inside them? For example, I want to check whether /Fxo1 Do
> ended up in the page content. Right now the streams are
> Flate-compressed, so I=E2=80=99m looking for a tool/command that will =
let me
> view the decompressed content directly.

The "testpdfio" program can be used for this.  List the objects and =
dictionaries/values:

    testpdfio --verbose FILENAME

Uncompress the stream for an object to stdout:

    testpdfio FILENAME OBJECT-NUMBER

________________________
Michael Sweet

