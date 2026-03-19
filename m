Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7732E0401
	for <printing-architecture@lists.linux.dev>; Thu, 19 Mar 2026 15:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933515; cv=none; b=b6/x0X+/OQmcHSCVikpGvYimnHXAispYNSlaFODZY/07DReqAKQUh+dtQQo1hNmLq4EdngWGJLzXqC/fsEBxS3/PpOQKlN+U7Npmd00nJdB/3pREgMKKVbszfCh9vMDkJAEMrbWJIuvuRIEig2WjvkSva82OyIbmv67uGtWRkXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933515; c=relaxed/simple;
	bh=KXes3UAyppk3QxUj5lAxJj1hvLzyQ4XdoxzqvLCTmLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=UqdgQe0dGRF+F2qdodhA7Ws8f6Mo/UoKm4NBI7Jks+1r5LDI14Fy/IqE80m4bJLmFumgYJmOlXwNpKVxA2lfMSj8GUI/ebBREV/Ik7n/d8xNRo9a/y51NuWO/GjtjdVmKi+4Y/EyUMrIstG1LYPxYeT3VvVMksWGaBgktct2FCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=b/2f4DcR; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="b/2f4DcR"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 86076100334
	for <printing-architecture@lists.linux.dev>; Thu, 19 Mar 2026 16:18:30 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id if4k8AxCYQL3
	for <printing-architecture@lists.linux.dev>;
	Thu, 19 Mar 2026 16:18:30 +0100 (CET)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id 3173410032F
	for <printing-architecture@lists.linux.dev>; Thu, 19 Mar 2026 16:18:30 +0100 (CET)
Received: from [192.168.102.110] (84-86-8-46.fixed.kpn.net [84.86.8.46])
	by blub.net (Postfix) with ESMTPSA id 06BFF300119
	for <printing-architecture@lists.linux.dev>; Thu, 19 Mar 2026 16:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1773933510; bh=KXes3UAyppk3QxUj5lAxJj1hvLzyQ4XdoxzqvLCTmLE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=b/2f4DcR25QcURUZKyVfyQmVMCiDAcvcYXafSIBVtToqRd+pzHQ0JZ3mQZd3RXDyv
	 0GdRuusYzAtTpcDikChGAo8Lu/vze/4ItoBs+OcQj45Dn+2JNaHXCHiE5en84c6c/F
	 lf1npSsMQB7ZP6oKMix4F/nkgT+nhiUvFZKS1uSA=
Message-ID: <1b125c13-785c-4d99-bd46-e2211add49d9@sessink.nl>
Date: Thu, 19 Mar 2026 16:18:29 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: driverless printing and custom paper size
To: printing-architecture@lists.linux.dev
References: <40ecc01e-69e6-4bb6-a98e-775cabd4091b@sessink.nl>
 <b24671c3-3957-49ea-82a3-d50a8c426d15@becherer.de>
Content-Language: nl-NL
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <b24671c3-3957-49ea-82a3-d50a8c426d15@becherer.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Thanks for the fast replies.

On 3/19/26 15:12, Simon Becherer wrote:
 > I would suggest to change the ppd file, have done this for printing
 > papersize a7 (i found no printer who has this size configured)

I "sort of" managed to make it work, but the question remains: if I have 
a "driverless" printer, I can't really change the PPD, right? I.e. I 
have to *install* a printer and change the PPD?

What I had to do is: add printer; edit PPD (did that before and not 
afraid of code, haha, that helps); in LibreOffice (Ubuntu 22.04 because 
even more snap in 24.04 - changing to Debian but that's another topic) I 
had to change the "printer settings" to make the custom paper format 
that I added to the PPD actually choose a specific tray, then I seem to 
have to change the paper size every time again - but this might be due 
to the 7.3.7 Libreoffice version in Ubuntu 22.04, which is yet another 
topic.

*PageSize Blah/Blah: "<</PageSize[634.96062992 
841.889763779528]>>setpagedevice"
*PageRegion Blah/Blah: "<</PageSize[634.96062992 
841.889763779528]>>setpagedevice"
*ImageableArea Blah: "0.1 0.1 634.46062992 841.489763779528"
*PaperDimension Blah: "634.96062992 841.889763779528"

But: driverless plus this convoluted mess? No go?

Best regards,

Valentijn
