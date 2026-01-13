Received: from sg-1-12.ptr.blmpb.com (sg-1-12.ptr.blmpb.com [118.26.132.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D81A31691A
	for <printing-architecture@lists.linux.dev>; Tue, 13 Jan 2026 06:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=118.26.132.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768285692; cv=none; b=rk0it9DKuLMcBUojx6ja4eAl8dByEF7CKb2xy215aBU7yVlhCWtR9URVT5Q3PLDmbRnx8mMoM4nlFMMxJwmRBwuNv4Dg0tx1Em9xZh5kDWdTH3xBhJTg3cUYXvw74W15xih21djzmJTwVW07kvoe2KzwssH7A8VDbluIhZOkolo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768285692; c=relaxed/simple;
	bh=FBygqpo5B9mXJ1/m5Q4tNKFtRmux4uloTqcx22IdXWY=;
	h=Date:Message-Id:To:Subject:From:Mime-Version:Content-Type; b=IuugOeA7dHdQ7SdFixhoKaULM1ACv4gVXobPjByZUCiJtdlzSgqbLzfP/PzX4NlEU1CCByzD5j7dg1yQGmPCAgS7jyOaKFgVDNA6xEwtpoIXwD6ml5oODMpdPXMaG/GPPAxp+m0uXeU45rg0bWoPqSPVYpiM8zLf61T+X/mhbqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=vQIy9Hyz; arc=none smtp.client-ip=118.26.132.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="vQIy9Hyz"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1768285684;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=FBygqpo5B9mXJ1/m5Q4tNKFtRmux4uloTqcx22IdXWY=;
 b=vQIy9HyzzOEcHZRBOP0/rUozUuTOeLzJ2/EAYYMuGfA7KEHRforSEYxBO3CPk/21ZQ9xDW
 toQHrLRdVRRVaGl2Od3Y3ljg8w58chxf/mYramGxdvrPYKxGo/kJXiHyfvLwNmVwrnUlPn
 Te3Lb+8au8YfZWimAVnHLwlCjWASlueIZWeY01Huu5zrtIskAKyvSjD2iGxk+lpSidMvqd
 f917v8EFUid8/m30n/I+4Qg93gah1ZfG5grPZGUNQ69OtxAsYnGz6UeOGGbNMO4fBJ9G4r
 EfF31xrefsdNHaaTYn13rYNO8rm+y/yVGTMcU9Iufq3VVvc4DTgut0Z94uyM1A==
X-Lms-Return-Path: <lba+16965e5f3+490a47+lists.linux.dev+yanwei.huang@deepcomputing.io>
Date: Tue, 13 Jan 2026 14:28:02 +0800
Message-Id: <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>, 
	"printing-architecture@lists.linux.dev" <printing-architecture@lists.linux.dev>
Subject: Inquiry Regarding RISC-V Architecture Support
From: =?utf-8?q?=E9=BB=84=E8=A8=80=E4=BC=9F?= <yanwei.huang@deepcomputing.io>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear OpenPrinting Team,

I hope this email finds you well. Please accept my apologies for any inconvenience. I am an enthusiast of RISC-V architecture and own several RISC-V devices. I am writing to inquire whether OpenPrinting supports the RISC-V architecture.

If support is available, could you kindly provide guidance on how to install and run printer drivers on my RISC-V devices? Any assistance you could offer would be greatly appreciated.

Thank you for your time and support.

Best regards,
Yanwei
