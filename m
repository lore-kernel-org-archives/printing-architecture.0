Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000703AEF55
	for <printing-architecture@lists.linux.dev>; Wed, 14 Jan 2026 22:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768428900; cv=none; b=fnRxqFgQ/n4GLekiS7VLputhT5O5PPQ5obzKJi98+CfmI1RnoOBGNU+N6xviTQ756qC7KydsXppg7bgL1xvclJRT8ncI9+uDXNuQtxKgVaFahSUhlvPPP8s4hFVgSCcNUxtMN4YK27lPlC0jgf/erGDbOtEwEuWazy1BLGvsE5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768428900; c=relaxed/simple;
	bh=fzvauD40kAimdCckerfZgBpT7JM9LGbZKBC+or+J9L0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=ROZBrYkiordZ8wP6Vgy5VnpVpOId1jn1//VO41TuybwlRCT+USmQUJ8fvUMCufSHg+5Ds9qxsnRzbHfYWb81RH7jUOMjYlGo2puYVDsKsxUFtBxlcTib6o7hioGyx/7C2/Wt/kYLYbO2LkY/VTkUxxfr1J1EC6N4OCLrC9N/quw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WmoF2uVZ; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WmoF2uVZ"
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ee3da7447so1902305e9.0
        for <printing-architecture@lists.linux.dev>; Wed, 14 Jan 2026 14:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768428886; x=1769033686; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUgM3ZyyugB0rf54n39dsTIrI0pwlQCUDXRgUuG9VUM=;
        b=WmoF2uVZ4qDhSsPccP72eANRjUzdQdj3cb/+VbcaXFmJ7DxU0GGF+MCKFFo/d7m3qy
         OUPYAiVdVppfP88OMoOXXcFju7spx2GV5hPmPeUEcQZ297Q4cwXpU8Af3BawfIKDuuUy
         v1EBcmXMZV8+N8M7NcWLWxZtoCHabIE0ieaHKeIdddRCq3uxU63yIbd/AK+sn3nrsLC5
         mISoYgBmAkZjPyfwTLgnYnbY1LXgCU29pi0styVlG/j2u3YzRdyCjUT+X4RO81tJR2ac
         Z4nY+poytj4BCdHFUiP1zlKeC+oHLeRgk2Q9h3r5P7sh4pGz2Qaiey5KXPsiM4w7Ui1z
         Yl8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768428886; x=1769033686;
        h=content-transfer-encoding:cc:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RUgM3ZyyugB0rf54n39dsTIrI0pwlQCUDXRgUuG9VUM=;
        b=xHp3LxAtN77aaY+WGwPMCHzlpfsGAeOiWlSPlxN9SZqrqRE9/nqOvjb8k7db66HdVz
         35BxEwkRouYH3+DBGNnpO3O/FZPYTwJeMl0I1GzYzlDfLTi48auv0H8VZYKA5VLhBoWq
         rqhgZXmm1dMWZigZp+110bpCrPE5PbQU5z5yaC7ULW64FbbVdOBJvbMpWhO/pEy3MUqY
         yMbLnQlRQ5JkfNySiAnqWzu8g9WOLz1zZ7j3GYavlvT76yabcdTF3QdMXNJETv4xPSUY
         xLyfuLHQU3zUL5+ixtVw+o++yE34wqK44Au6OFVdom/uEFqY7tR0F2Q0F4Ti7CB8v/Oj
         3R2Q==
X-Gm-Message-State: AOJu0Ywk0qj1coOUpYmxgBggazZ8mzlyMci00tcBBlMVlHMSwAOJocEr
	gZATj9XEI49PPfOEq2egBYb/jtKg3H7F3NVVy9dC3C6hnzqwkQl/5oOc9jr9n87Z
X-Gm-Gg: AY/fxX6IrXoWZD9hAuJf6s3YvpSXv9BexiiiAVpUGc8yIk94VfCOgF0ClZ2cCh8/RCZ
	8zuTN49J1rsCp7VpPy/KsNQX36/KWhYMmW6LSJsmlcpULM7SFhOFFZHGr5Ti4xumtq+bxbQ35WB
	lj8PeZk9WL964lzZbbc5h8a66w+QO2//Uu5BJzbIfV5sQvL2RCHTCC7G+40YVKscruwtQUNgI4s
	H/QD6qyZT0657ZoSv0ZKj0jYHm1E5YR4ioYKyz7t7dTfCV3zmj03Ohs+0BHhPe2BQMaBJluTgx3
	TKshVwki8s9uHU90rbx6A+opkvTosGQsp2YXBbSL5gcOlDuJ7pMhEqEY1ofxUBSMXjm4z5ZArCE
	cKlAcHPi3ctYPq1VyvAZ2odMsoEXHOB6XRi9UXqIwzU//yNbjl1gGBSFAiK4aL6hQ+3g0B0q1Xb
	/sZOFrFj7ZGhEKW7bjWOFhQ278XF0FP6vY4Y1QkjwHdS6dIPFVyIDmeUzxF+5rUFveWLM=
X-Received: by 2002:a5d:5850:0:b0:42b:55a1:2158 with SMTP id ffacd0b85a97d-4342d3910bbmr4642900f8f.17.1768428885861;
        Wed, 14 Jan 2026 14:14:45 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af653560sm1814940f8f.10.2026.01.14.14.14.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 14:14:45 -0800 (PST)
Message-ID: <93af8f0e-ddf2-436c-9908-ef396a68986a@gmail.com>
Date: Wed, 14 Jan 2026 23:14:44 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Google Summer of Code 2026 - Project ideas page for the Linux
 Foundation online
To: OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
Cc: Aveek Basu <basu.aveek@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

the Linux Foundation will apply again as mentoring organization in this year's 
Google Summer of Code.

Perhaps also this year security-related projects and projects about AI/ML are 
especially welcomed by the organizers at Google, like in 2025.

Everything is going as last year, especially allowance of open source newcomers 
and not only students and flexibility with the end of the coding period and the 
3 project sizes, large (350h), medium (175h), and small (90h).

On January 19, 2026 (in 5 days) the application period for mentoring 
organizations for the Google Summer of Code 2025 will start and the deadline 
will be Feb 3.

To be successful, we need a rich project idea list so that we will get selected 
by Google.

I have set up a page for project ideas for the Linux Foundation's participation 
in the Google Summer of Code 2026:

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2026

Please add your ideas to the sub-page of your work group. Also remove project 
ideas which are already done in one of the previous years or not needed any more 
and make sure that all contact info is up-to-date and all links are working.

At each idea please tell for which project size (Large (350h), Medium (175h), 
Small (90h)) it is intended, the level of difficulty (Easy, Intermediate, Hard), 
and mark clearly your security-related and AI/ML-related project ideas (with 
something like "**SECURITY**", "**AI**", "**ML**").

Having security and AI/ML project ideas and also not only large-sized projects 
raises our chances to get accepted.

Make sure to not talk about "students", but about "contributors" instead. I 
have, at least partially, taken care of this when I have copied your sub-group 
pages from last year.

Also make sure to remove the "**TO BE UPDATED**" phrase after having updated 
your project ideas.

If you have problems mail me with your project ideas and other editing wishes.

The ideas list is in the Linux Foundation Wiki. If you want to edit and did not 
have the edit rights already from previous years, please tell me and I give you 
edit rights. I need your name and e-mail address for that. If you have an 
account at the Linux Foundation, use preferably that e-mail address, but having 
an account at the Linux Foundation is not required.

Please also take into account that the deadline for our application as mentoring 
organization is Feb 3 and after that Google will evaluate the applications. So 
have your ideas (at least most of them, ideas can be posted at any time up to 
the contributor application deadline) in by then to raise our chances to get 
accepted.

Please also tell us if you do not want to participate any more with your 
workgroup, so that we can remove your sub-page.

    Till
