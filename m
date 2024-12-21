Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D29A18BBB0
	for <printing-architecture@lists.linux.dev>; Sat, 21 Dec 2024 21:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734818157; cv=none; b=N+qG8dWKTOra9PktHC0zCei/7dUrdvefR3R67/E4RPp57soWdVcF/K0pHmt2qEoeKBLDJyAHztMy33hfBxBjNzyZZK6Uxy/lu5855sOufU1xqfWRHo2ZEr+X2zbD2KjD+1rsDP44DLwbSoOO7gq8nriTxWdD5aoYm/9QVePeLSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734818157; c=relaxed/simple;
	bh=q6TDX6YcuXHrzr+iIN5ZZD58RCkd8FXFGkE3xRW5NHo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nc+qIF84ZqW6OIdn/7ti1jbcl8pH8PXp965nm7B7XXYeruVsb39wZ4VXe4CIdIYWg4gWVMr+r/EU/Qr3xrjag4iK+/Utdb/CXZCKB2tB6M8LvW03j7Nngdw92rUpB5ZlOuioHkKO6VJaxrZ661IF88dtE4RkKRnuHFnTJ9t5Hn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d2q1qAW5; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d2q1qAW5"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aabbb507998so595570766b.2
        for <printing-architecture@lists.linux.dev>; Sat, 21 Dec 2024 13:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734818153; x=1735422953; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6sJFFjq5vt5dQLElUutAqJuOfkzhEbIZWb38k1LdyIA=;
        b=d2q1qAW5wWBtUgV33XzljgF1YG8Q/Pg6vpAGZuqLLGmO7AczNVIVRMiKCzmND8pWbt
         bNp7aXn/XOJdDTDm9ez20IjJ0w7iLjs5LIzzJDo8hxlMGMyCI+krB/1ryzrs95fWKH+S
         2zdYLD1zEYO5SPWNQe9RCGswbqIx0HSFLUN/xuyZfrNQkr7/2rxE9WCTLCzNYGGVIOkf
         JuAU3q6C+Pl/KrUHufGAbLG47krONc/jaQz0puGXPqRFfpFt7cIcMOBhgHJKiZaCGYiQ
         9z1EdKA4Af5+mF5G/mtkUxF/JEzV42lO5cFVPgtDCTu6FKPio7HdhJT9+1aDjVWJrgwN
         kitg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734818153; x=1735422953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6sJFFjq5vt5dQLElUutAqJuOfkzhEbIZWb38k1LdyIA=;
        b=HcC3BHx3LQnYMvLg9zTpiE9y0X0oqvb1/dGnkLPnLWRwgdg2i2qgceVPF8d1/5Z4wm
         hF56tlqETS0HrvpUcSdVUMbBE8SL9Wyaf6iWc3h8LdTvvaPNeCC/WR+j7Tf6nM/IbK0r
         w/zC2dqnWyDm6mh/+m0dVzb8xLkp/qkT2Oc52yZxl5Hyb0WhHXk5Wpr9h7Yuqy2E/LJY
         q15A7VemPEzOdKNssbK2omlGlCWzCKqqDDWZBqwUxHuInpf4wLyLYdBcp0+fy12Pcg6F
         qOgTbxKsP32fUZFAyvbF+7n9YtO7201XTXqNw0FOimRwRSywYXiIrS0+eBmg3Al668uX
         /1gg==
X-Gm-Message-State: AOJu0YzjFgx8Lxunstqs4Qcg9UDLY4zuZ//SQwOAL2Kmjf3cybKPGUxi
	M1rtgn5TucpUnajdS0/QRfUwzn0eYxbFz21zFxMcHWLx3+Z4XnRwgp0eBg==
X-Gm-Gg: ASbGncsQrZn1egQlMvfNHoxMPw+W4QkDquE6Xzi1yTQ57jpm6DLx6rmj2ds0aJnJtWh
	DTWs/aRAb58ldPfzy9ez3Ph/oe5nQ6rUyLyOJxSBZEREtkzJbqWsGhG2fJnqDES79eTnsxEZuBY
	9mQ303+9tzLGKJ5VG2vaZmZ1JAdaE+AEikoR2Pl3xDUOIsM5+Bop9AtEjP51FoIB7Zy89310CwQ
	/htPWclpKq7Iv6E7pNYT4h1SrucmZhpWWv+mjgvZHn+KBfvV4xT21rZpfBcKOv+Uov0Jn0Oarte
	lspFhyVisbpAxyPdMmnn7hHlVng0RH8=
X-Google-Smtp-Source: AGHT+IEpO3/YaNvbNgw3kh5jxUH9CDYHgoIXII61BTVUHzf64aW7ih4KfW3E8hxDPbBLMjjIJzSiuw==
X-Received: by 2002:a17:907:9802:b0:aa6:834b:d136 with SMTP id a640c23a62f3a-aac2d435474mr798925066b.33.1734818153354;
        Sat, 21 Dec 2024 13:55:53 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f621sm321199366b.40.2024.12.21.13.55.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2024 13:55:52 -0800 (PST)
Message-ID: <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
Date: Sat, 21 Dec 2024 22:55:51 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Merge repositories for CUPS Snap and CUPS OCI/Docker Container
 into the CUPS repo itself
To: Michael Sweet <msweet@msweet.org>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 rudransh.iitm@gmail.com,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/24 22:06, Michael Sweet wrote:
  > We might as well.  However, you should probably also document how you'll 
manage the versioning since there are so many other components that get packaged 
with CUPS to make a working snap...  Doing MAJOR.MINOR.PATCH.BUILD versioning is 
probably sufficient for the snap versioning but it would be nice for users to be 
able to easily get a list of the bundled components and their versions as well.

The versioning is the same as distribution do when the package upstream 
software. They take the upstream release number and add an integer number 
separated by a dash, the package release number:

CUPS 2.4.12-1

When a new release of the package is done because of a new upstream release 
being used, the new upstream release number is used and the package release 
number is reset to 1.

When a new release of the package is done due to any other change, like a bug 
fix in packaging, a backport of a selected upstream (security) bug fix, ... the 
package release number gets bumped.

So it is practically the same as you suggest.

In our case with the CUPS Snap and also the CUPS Rock, we do practically the 
same, and as the principal upstream component of these packages is CUPS, CUPS is 
the donor of the upstream release number, so we have always the upstream release 
number of the CUPS in use before the dash. On any other change, including 
updates of the upstream releases of any of the other included upstream 
components, like Ghostscript for example, we bump the package release number.

The Snap and the Rock have some maintenance automation:

- Update automation: Every 24 hours a GitHub workflow checks whether any of the 
upstream components has issued a new release. If so, the instruction file for 
building the package (snapcraft.yaml, rockcraft.yaml) gets updated to use the 
new release for the package build and the updated file gets pushed into the GIT 
repository.

- Versioning automation: On each commit, both manual commits and commits done by 
the update automation, the version number is updated. If the commit has updated 
to using a new upstream release of the principal component (CUPS in our case), 
the upstream release number is updated appropriately and the package release 
number is reset to 1. On any other change, the package release number is bumped. 
The new version number is then put into the instruction file and the instruction 
file committed. After that the auto builds for the Snap Store and the DockerHub 
are triggered. So this way the auto-uploaded packages are clearly versioned.

The GitHub workflows for that are currently done by the Snap maintenance GitHub 
action of the Ubuntu Desktop Team at Canonical:

     https://github.com/ubuntu/desktop-snaps

It is planned to merge this action with the one of the Snapcrafters, a volunteer 
organization snapping applications:

     https://github.com/snapcrafters/ci

For an overview of component versions we should perhaps do a CI automation to 
keep a list in README.md updated. This could be added to the mentioned GitHub 
actions or its merger.

One would need to mark a spot in README.md, for example by a headline like

## Included components

and the automation should take all the version numbers which are under 
observation by the update automation. The update automation could actually do 
this step of generating the list and then not only update the package build 
instruction files for using the new upstream versions but also update README.med 
to have the current component version list.

So README.md will contain:

## Included components
- CUPS 2.4.12
- Ghostscript 10.04.1
- libcupsfilters 2.1.0
- libppd 2.1.0
- cups-filters 2.1.0
- ...

Rudra, Soumyadeep, could you add this automation?

I think, this way we will have a user-friendly and easy-to-maintain solution.

    Till

