Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B551DD0F6
	for <printing-architecture@lists.linux.dev>; Wed, 15 Jan 2025 23:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736982652; cv=none; b=VVCSJS3/uoe4IIhphqDGgaiqUKhZbwHe+JfnTUNioCC94tIkKYq+clHyLncfVLMv0uhBzZmJV5uNamzL8BUSnCvHE1l7RLCC9xKip0Xk716nK5u6DfYR3NvVygDB4RfcI4+409fq2gLAanxv/72TSyFdsl6tqg/QILVgG50c4Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736982652; c=relaxed/simple;
	bh=JeSeqD8pKclVPWus2aNSwXQ/qK3VGvpvgLdJ+EDCLgA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=bn3J7w7UFpvnAJr6IwWwgrhhiZQipiiGk7HPG+G1592kOlNTMX8sLssAetZWOSBa7t5yobk70M6D33ElCZQxOZ+pDJ2uS/UrDiiEkfK8bRwHNlcJ9IqTmSeDWlENSuhAIBxfw1hK/EWnhp2sKyoOJXaLGA+qD+wCByapo85QBjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IxGD8nKw; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IxGD8nKw"
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d88c355e0dso586558a12.0
        for <printing-architecture@lists.linux.dev>; Wed, 15 Jan 2025 15:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736982649; x=1737587449; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w2Sdd0nY0egzLcF3sD4uONFjkR0PaPggVFAsds8olX0=;
        b=IxGD8nKwf/c5enEzLF6G60ru9RNg+Blga3CHUrA5UVoAwdcaJYmNLOAHJ6eACTeU+F
         8Q1Tbt/lFrqJd3BPj+auavOPxoUOWthRq5W1knJ0HgmU+IkKW45CWxmQuA63g0dOFBV+
         nVVdIKmd5nsawGuzslI1cEmMA/UMmZ7CeSGoT+GoYPxknOp8zgQ0lcgjCpXtY2vas7Xe
         r4DJC/KlevFXICVNnCBp+eZulVLBBCe52vZXwV+jHD3jHC94MYSE8+XfZk9ASQFMgJKO
         E37njVwgfObXEg5s1t/dFBByVNNyveVXhsFAE6sQzQf6FuRQd3tUgl4+CI1iJU8LykSr
         ZVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736982649; x=1737587449;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w2Sdd0nY0egzLcF3sD4uONFjkR0PaPggVFAsds8olX0=;
        b=nPfkOrBe6tnP82RepRh3NXqEMHTRKmviQhFnmtPIauNE9DSBYSDLHUbrxLmjOqtnVR
         K4kKWIUXh4ap0cpYIt41f6s/GjjKdjshehEIqZo2oXuOhxmGyGHr0SynfnHUaR/zbhVU
         imZEb5PpzMSe7rLYssiVlH+JK2M4lrT5NuTMcm5oShJXPql5wB/jdfSdfluBikSBYdBl
         T++CJuubAsR2ra7awT0owKn3h4emr8vY1WesWx7CbXpiifuhMImR7LNl/SrlOlfMecDq
         FjLMEUh4WBshBsct2/w9Srfpi9lmBXpWtp8cUQO5EZsJ9pyNewC2re4os+sxOf9RFAit
         X9Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXDuECGc8V5bdTNykb5J0gYyMt9ADXz2FzXDBP3ij1owsyV0Kw7LPDdUk6qpLZSxpTYU+zBwCl98FlxOzW85m5aOx+dQXs=@lists.linux.dev
X-Gm-Message-State: AOJu0YyPLPaQfTGpNSJGj3gG9/lB11k7Rg58e/5YvvnWkIVsdCdnLTvx
	TLBTYGNJ1vxq4jfEt/QZgOYqKO40QdyrDX+YcxJNUxubsCVhMlgd
X-Gm-Gg: ASbGncsZuNjbzczTcBcVTXlDwtuDGddLW5TejwntOA6VTJM5NE7X2BfyIHw3wknToSS
	08qeR6fY1DdeUaMNbXKuAYDX+yuiBSYo2AUaHfXt+zCXfbvpeLJ96AhNwUu8HX9UGHjPtI3QQAa
	Y4E6K+9gCERqD3BAXM4ppHyQUjQ0BBMtWBLDdNFNDrcQOXVRwZSMh+kzg+NiQ/F7KdG2sLNwCbb
	j3BYOGQll6RirgmNV+aPAiIGHYxh7SIR9mqHcdiX322COzgs3TrAr9kROQdoDATcM+kVI4vvA1X
	GYYwGxGFzcoMu20jEF3b0+z1zu9k9Gk=
X-Google-Smtp-Source: AGHT+IHcx2nZ2A/1biyr1RhhfToePoWHKKdB+kxL9spI87H8bdOCbrt1VTHqlgo1/NkI5W40iYXMBg==
X-Received: by 2002:a17:906:f59a:b0:aa6:9503:aa73 with SMTP id a640c23a62f3a-ab2abcb1135mr3006468866b.51.1736982648352;
        Wed, 15 Jan 2025 15:10:48 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9562551sm812962766b.123.2025.01.15.15.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 15:10:47 -0800 (PST)
Message-ID: <06e09053-95a9-47f9-af86-959f28b0ccf0@gmail.com>
Date: Thu, 16 Jan 2025 00:10:44 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Google Summer of Code 2025 - Project ideas page for the Linux
 Foundation online
To: Alexey Khoroshilov <khoroshilov@ispras.ru>,
 "Luis R. Rodriguez" <mcgrof@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, dl9pf@gmx.de,
 =?UTF-8?Q?Jan-Simon_M=C3=B6ller?= <jsmoeller@linuxfoundation.org>,
 Daniel Baluta <daniel.baluta@gmail.com>, Vadim Mutilin <mutilin@ispras.ru>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Ira McDonald <blueroofmusic@gmail.com>, Michael Sweet <msweet@msweet.org>,
 Tobias Hoffmann <smilingthax@googlemail.com>, Jay Berkenbilt <ejb@ql.org>,
 Nicholas Mc Guire <der.herr@hofr.at>, Matt Germonprez
 <germonprez@gmail.com>, Philippe Ombredanne <pombredanne@nexb.com>,
 Gary O'Neall <garysourceauditor@gmail.com>,
 "Bogdan, Dragos" <Dragos.Bogdan@analog.com>,
 Nicholas Mc Guire <der.herr@hofr.at>, Julia Lawall <julia.lawall@lip6.fr>,
 Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
 Rithvik Patibandla <rithvikp98@gmail.com>,
 Dheeraj Yadav <dhirajyadav135@gmail.com>,
 Deepak Patankar <patankardeepak04@gmail.com>, Ian Rogers
 <irogers@google.com>, Bhavna Kosta <bhavnakosta2020@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Gaurav Guleria <b20099@students.iitmandi.ac.in>,
 B20251 Kushagra Sharma <b20251@students.iitmandi.ac.in>,
 Mohit Verma <b20215@students.iitmandi.ac.in>,
 Pratyush Ranjan <pratyush.ranjan911@gmail.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, benjamin@zephyrproject.org,
 David de Barros Tadokoro <davidbtadokoro@usp.br>,
 ttfish <jiongchiyu@gmail.com>, George-Andrei Iosif <hi@iosifache.me>,
 Dongge Liu <donggeliu@google.com>,
 Samuel Thibault <samuel.thibault@aquilenet.fr>,
 Solomon Peachy <pizza@shaftnet.org>, Michael Weghorn <m.weghorn@posteo.de>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 chandresh soni <chandresh2702@gmail.com>,
 Akshit Singh Chauhan <aschauhan2325@gmail.com>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 George Stefan <george.stefan@nxp.com>,
 Iuliana Prodan <iuliana.prodan@gmail.com>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Jon Oster <jon.oster@toradex.com>,
 Justin Noel <justin@ics.com>, magalilemes00@gmail.com,
 "marcelo.schmitt1@gmail.com" <marcelo.schmitt1@gmail.com>,
 marius.vlad0@gmail.com, Namhyung Kim <namhyung@kernel.org>,
 Paulo Meirelles <paulorm.meirelles@gmail.com>,
 Philip Lapczynski <philip.lapczynski@gmail.com>,
 Pranshu Kharkwal <pranshukharkwal08@gmail.com>,
 Rishabh Maheshwari <rishphalod7@gmail.com>,
 Rogerio Guerra Borin <rogerio.borin@toradex.com>,
 Sahil Arora <sahilarora.535@gmail.com>,
 Saurav Dharwadkar <dharwadkarsaurav@gmail.com>,
 Scott Murray <scott.murray@konsulko.com>,
 Shivam Mishra <thealgosniper@gmail.com>,
 Shrey Mehta <shreymehta2003@gmail.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Stefano Viola <stefano.viola@toradex.com>,
 Temitope Adeyeri <Temitope.Adeyeri@toradex.com>,
 Gaurav Guleria <gaurav.gen3@gmail.com>,
 Walt Miner <wminer@linuxfoundation.org>, Zdenek Dohnal <zdohnal@redhat.com>,
 Susan Remmert <sremmert@contractor.linuxfoundation.org>,
 Jonas Remmert <j.remmert@phytec.de>
Cc: Aveek Basu <basu.aveek@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

the Linux Foundation will apply again as mentoring organization in this year's 
Google Summer of Code.

Note that in the GSoC 2025 security-related projects and projects about AI/ML 
are especially welcomed by the organizers at Google.

All the rest is as last year, especially allowance of open source newcomers and 
not only students and flexibility with the end of the coding period and the 3 
project sizes, large (350h), medium (175h), and small (90h).

On January 27, 2025 (in 12 days) the application period for mentoring 
organizations for the Google Summer of Code 2025 will start.

To be successful, we need a rich project idea list so that we will get selected 
by Google.

I have set up a page for project ideas for the Linux Foundation's participation 
in the Google Summer of Code 2025:

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2025

Please add your ideas to the sub-page of your work group. Also remove project 
ideas which are already done in one of the previous years or not needed any more 
and make sure that all contact info is up-to-date and all links are working.

At each idea please tell for which project size (Large (350h), Medium (175h), 
Small (90h)) it is intended, the level of difficulty (Easy, Intermediate, Hard), 
and mark clearly your security-related and AI/ML-related project ideas (with 
something like "**SECURITY**", "**AI**", "**ML**").

Having security and AI/ML project ideas and also a not only large-sized projects 
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
organization is Feb 11 and after that Google will evaluate the applications. So 
have your ideas (at least most of them, ideas can be posted up to the 
contributor application deadline) in by then to raise our chances to get accepted.

Please also tell us if you do not want to participate any more with your 
workgroup, so that we can remove your sub-page.

    Till
