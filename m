Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D26F22ACFA
	for <printing-architecture@lists.linux.dev>; Sun,  2 Aug 2026 09:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785662330; cv=pass; b=jo2znbebc6WGk1Xk3mhCS6GPsXvI3XXZyiontg4LHLVLG9uii97ucS3+IqfYC+9FWDvtnH1mOifdPIhZbk9Dd2uJ83E284jlMTsbbUKH5pGqG/nQx6BHXTtC7VEvb8e6hrUKV4kFNic6BWRSC5VQ9M6HhuICYOrH4Wu30fMshZ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785662330; c=relaxed/simple;
	bh=k2Ht21hFVks/9yhGJ8zGlGw1hRHhQPpecKsF4XcI0bM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lZ6ltfeMwkuZqvHNwPn1t1fJV5uyQxt5kbHsoR7eUaggYBZe1K3kLNhemJ+F2n9bQxVJlXuw0XXaUharCMgBn/ZdxkWpQPfrRn97JYRSBl9sF+pWkbRuMX+24TpU0O37ibnBffXoPiGDkeAn8GR07lmT8EpKtOhZKbGAbmVx/HQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I5XJ9MXB; arc=pass smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I5XJ9MXB"
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7ebd88be784so1580649a34.2
        for <printing-architecture@lists.linux.dev>; Sun, 02 Aug 2026 02:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785662328; cv=none;
        d=google.com; s=arc-20260327;
        b=Rrz2aOJ/LdvVaOV+PUbpqe5DzT/vI1+cN0ACGJs3Lc4YW4PzX6/GOuzVLHJ/p698Wo
         5mGNb+kHc0PHrMEfX6y8vrsT10paEZaDtSuz7af7Sy0dY6RjUkFtu1n6Sj6KE3lwCtTx
         fJdikNs3QpCjHaUTEt5/tFyRyG8S9RLMu9Z8iW+Dou/C/NxBuTXJO3FiTjuxHFPB+CMk
         M4WDL9zW8sXNd92Yqh1BHV9TTyMEObl7JIkWcDYSJ2IcyWJRk+4bwjaPAU+dgy6KoxRQ
         w0u1CLCrkwMN3RW53aLGnRJkdsNjRQUJlVMqYhxg26I9KPbYGIAwPdeM3lxcZh8GoueV
         tJVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k2Ht21hFVks/9yhGJ8zGlGw1hRHhQPpecKsF4XcI0bM=;
        fh=0O6Qp0XMbGVMMthBdqcXMO0NYoBoMy/8VhKkbaT41hI=;
        b=PlOsOJG2xfbhv3VlHdoRK6Ptv/Zm4GZS68z6yp50YtKOhcAHgP46O5FVwaCI+Xy4kn
         /OUYewkwmm6NWfTMQ2bHy3ALsJGIclCpX8fo9vFLU0R4olIJJShXfZMBOTSscCyMNbxK
         BSxxxfIiQtFeRxqr84YGOc1nZBRCO/Rs1NQvo58zWbordDEuK7rsNc/k58z2VOjaI5L1
         19rKR+WxCjA7hWLh9kUUlbzQuGL7VBIpU07SlKkkF02EeeZ/xM+9Z4ui6fH6f9qHONMM
         Qr2rdfJ9EfCvFWXBNUd+0mitpsbJE2Sq/hSklIJq1Swvg+lCHJxKNCV/aH4dCLzP6FwR
         ZOaw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785662328; x=1786267128; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k2Ht21hFVks/9yhGJ8zGlGw1hRHhQPpecKsF4XcI0bM=;
        b=I5XJ9MXBfxvvPYvDkDfey75YrYD9a0X5H8xMQkFt5uw8yxa4tV4F9MTkuL+7+/mWaB
         VmuAjuu4ahgxm2EDN+b0m6DKI4Ycf7h/GTvHROZo2BU2Ax4qkly3R11NmtQYKHhKtyNI
         qdRpeUTqpADnLdpd7/WozKMtjTpGpLkjbC0bdXavanXYa1jtKovxfCAe8bMNMEv38EOU
         uzgB7Ca5kDcknsUieKEFZEPT/dE0/YrZQv4JIH4wDGCCFbCuJypJVZDd7rFfKk50l/7B
         WygaQFWXn+sc24ZROOUrqQhjYbSbCh9ueWi6E0bRca/3KgcQf9sRucSTg+5W1p5KdWfO
         uAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785662328; x=1786267128;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=k2Ht21hFVks/9yhGJ8zGlGw1hRHhQPpecKsF4XcI0bM=;
        b=hTkBC6SLViBZ14rjMk+HNIblDmdBsS9Hfu37+GZTXnit8E849n0iDFo1jK4jAH/XY9
         XT768Ly2t/kT4943IfMYgidVJfB6MNtjXrDkjR8Kc8y7pstfyYGdgGjzbve8IEkyNnM2
         TaIxt8UW9ytz2qKmpWEm2QPtIlbZzws6nKaVzRFTvFTxhlA/7pmezMPYxcVbg7qyK6ha
         SKeCOgWVTU93ZnrxkKsC6ZBT1ve0B30I15WPPNfq8yHY/dKQyEzSl3YfZDzdFsx7X1qu
         DGcjbEL6NdY3Jii/uUADO89JtDWbaAizxdybaZDc+U92He5GoYDl1ex3rbDUn9IfzCqD
         ThRQ==
X-Forwarded-Encrypted: i=1; AHgh+Rqrz91i3xswNW5/epB5qqfYFY2brZUbT4Qb9U5aVgvXJhg8EzNyBTyhLvEPcHAXu+OyYc6aUjhhJo8xEAoUIEXA7dT9oD8=@lists.linux.dev
X-Gm-Message-State: AOJu0YyXy5iGM6GBjtWMaSE8fv19r/fn7Y0JIYsLIDzC7blUmEx+f9h+
	+3nxHPN5AleQbmvA3FGowkjvAxnWV4a77UUb5AoqdoYCrdI4++nvJfdqZir8zYivQFrRc5RLTyT
	wQPuHeQfWpJt8b44PljhM7VNwSvD5iAE=
X-Gm-Gg: AR+sD1312u7UvZ1XW4Owqzkz+1Pdw971ODACOxaAz1V2Nqn1PuTnsKGFT3Do65qOBQ+
	IRvFV7FTp4zeOV9famSpqb12OL629sjI5FqXAgxryd7V4CLP7PvxZB3Vnqcz+6Z0BY129tTkmhE
	UG8FdMpFDsyZ5XFgMh57DdgJIFT+GUG0exirOj+5lM17WxBV/ecBtaCs6MDvqZdXDW8oW0LgS7n
	VEhvnAkVJmyit5ToO6q/5h5+18ZhksN9F9utXtEZ2pQOjLEfI0fNl/a0Swztu5AKrSon8XDRctc
	rAtGSb7b/+bzy9BPoNOYrT/EweXdoyZaS2/ODR3IZlKHcqVoXDcCPTaFNLINGOYL/eB4rdiGl5E
	/2RLADkyYvYwh7o/qVISZTiTeHKkxrU6CCgeZD/Sm5AXdA58LKnCiNk+dUqolfq+e
X-Received: by 2002:a05:6808:1819:b0:495:f223:bcdb with SMTP id
 5614622812f47-4af5dcbbe42mr9415691b6e.0.1785662327956; Sun, 02 Aug 2026
 02:18:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org> <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com> <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
In-Reply-To: <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
From: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Date: Sun, 2 Aug 2026 12:18:37 +0300
X-Gm-Features: AUfX_mzHiC5j7JNrRBswWen24HuAO9x2HEXnpTOVtQo0Bh6xwscbEophEr6Y2xQ
Message-ID: <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com>
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Michael Sweet <msweet@msweet.org>, printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Thank you for the explanations. I think I now understand the
separation between printer profiles, the local server, and the sharing
server.

My current understanding is the following:

1. cupsEnumDests() should be the source of truth for the destinations
displayed on the main Printers page.
It can return automatically discovered IPP destinations, remote CUPS
queues, Printer Application destinations, and eventually destinations
supplied through profiles.
Therefore, a destination must still be displayed even when I cannot
find a corresponding local DNS-SD advertisement.

2. DNS-SD should be an enrichment and grouping source, rather than the
authoritative destination list.
I currently use Avahi to obtain information such as the service
instance, hostname, port, resource path, TXT UUID, and the
relationship between _ipp._tcp and _ipps._tcp advertisements.
I will correlate this information with the destinations returned by
cupsEnumDests() and use it for physical-device grouping. Where
possible.

3,. COSMIC Printers should not create or edit printer profile files.

4. Profiles belong to the local-server/libcups discovery mechanism.
When libcups supports them, profile-defined destinations should appear
naturally through cupsEnumDests().
Queues owned by the sharing server are a separate concept.
I should query the sharing server using its IPP System Service
operations, such as Get-Printers, when I specifically need to list or
administer the queues owned by that server. I should not infer that
every destination returned by cupsEnumDests() is a configured
sharing-server queue.

5. A normal driverless destination returned by cupsEnumDests() is
already usable and does not require an Add operation. A queue on the
sharing server should only be created if the user explicitly requests
server-side sharing, relaying, accounting, access control, or similar
policies, for example, when the user opens the Add Printer dialog and
selects that printer.

6. For an undiscovered driverless printer entered manually via IP
address or hostname, printer setup tool should probe it using
Get-Printer-Attributes and then create a queue for it on the sharing
server.

Thanks,
Abdelrahman
