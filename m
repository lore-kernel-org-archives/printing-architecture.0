Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30602168B1
	for <printing-architecture@lists.linuxfoundation.org>; Thu, 21 Dec 2023 20:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="KGrlENdw"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A426361ABF
	for <printing-architecture@lists.linuxfoundation.org>; Thu, 21 Dec 2023 20:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A426361ABF
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=KGrlENdw
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.101
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eMmpVrfstmeY
	for <printing-architecture@lists.linuxfoundation.org>;
	Thu, 21 Dec 2023 20:30:15 +0000 (UTC)
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3E97B610B7
	for <printing-architecture@lists.linuxfoundation.org>; Thu, 21 Dec 2023 20:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E97B610B7
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-4668d730033so154357137.1
        for <printing-architecture@lists.linuxfoundation.org>; Thu, 21 Dec 2023 12:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703190614; x=1703795414; darn=lists.linuxfoundation.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DtMISl3uUSbaCcVgPa6T02YFdbX/tp3OsQBbSxko+l8=;
        b=KGrlENdwui4VqcrvBuXCzVKO0hjpODiSNYxuehr4vWRQj/6uavuyGbu9Y3Qj71fkGX
         TB3LYqJvyWFhnokZ8XYzhilLzz2vIbgsaoMdcMEJvncuLtU98xc03vN5aNiHRihe9wN4
         kA5XOXdfHZnZSUjFe3ArXg4RusnvzptmYMxGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703190614; x=1703795414;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DtMISl3uUSbaCcVgPa6T02YFdbX/tp3OsQBbSxko+l8=;
        b=pemrD9a7SF1irWbnY+1WarM4UxIs8rVuZ9Zi5I9W7YQyFyuu+1V58kJ0CoStixuCXl
         IaYgYYbGsaMPugWJaT7On8gSZKVATA3txvcRk1dpL2Cnx6MCR7CuGRh2pKXp6v17BJWn
         9XHumuYr0R7cEdJw44DZJDL/PToh3a2p5TzhL2BVigzpl6Y1HcAN4ErE34tPPsrG6L29
         GBo1yk+vCy8H+JVC7KxaAGQfzIh+bKF+zVm7SG80BCmdMysjbDhF7xJkPgnZWoKPHCmH
         wf42hPM1H2VDVpOHbRUZ4rqoj28Zjxlsm3HIp5hxBy+C08+ZzB/8bewk3D+JN/mjpqfM
         b3NA==
X-Gm-Message-State: AOJu0YwAtZYisVFw0GmrrC9/+B8uXV2BO5fET0mnApihxQYRtDwmuuf+
	0iEZ4ENVaz/KIxuOGiNb0lRjvaabGhNL8QppSozG0hVSj8PTKUZFT4TlcC8bV5s=
X-Google-Smtp-Source: AGHT+IE2wIeGx2orPXed5wVK6ZeYPUcShOkH5JtVzU3Oew4JY6y0Nfh12lEArJ5r6jnDP+7hGq9HM882gdg9SqKuuO4=
X-Received: by 2002:a05:6102:3f05:b0:465:ed48:fa0a with SMTP id
 k5-20020a0561023f0500b00465ed48fa0amr145104vsv.27.1703190613731; Thu, 21 Dec
 2023 12:30:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20231218-khaki-adder-from-eldorado-aa4f1a@lemur>
In-Reply-To: <20231218-khaki-adder-from-eldorado-aa4f1a@lemur>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Thu, 21 Dec 2023 15:30:03 -0500
Message-ID: <CAMwyc-T=OzZoHz9iiM_hrDgqVjCMErrN50OhxSGRzRs4rZ7mxQ@mail.gmail.com>
Subject: Re: PSA: this list is moving to lists.linux.dev (no action required)
To: printing-architecture@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 18 Dec 2023 at 18:02, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> The mailman-2 system running on lists.linuxfoundation.org is being
> decommissioned, so all lists currently hosted there will be found new homes.
>
> This Thursday, December 21, at 11AM PST (19:00 UTC), this list will be migrated
> to live on lists.linux.dev, but the impact of this move should be minor:
>
> 1. The new canonical list address will be printing-architecture@lists.linux.dev.
>
> 2. *The old address will continue to work* for the foreseeable future, so any
>    existing conversations can continue and any new messages sent to the old
>    list address will be properly delivered to all subscribers.
>
> 3. All members will be automatically subscribed to the new list, so no action
>    is required on anyone's part to keep receiving list mail.
>
> 4. The list will be archived on https://lore.kernel.org/printing-architecture/
>    with all prior archives automatically imported.
>
> 5. The List-ID header will change, regardless to which address the message is
>    sent:
>
>    before: List-Id: <printing-architecture.lists.linuxfoundation.org>
>     after: List-Id: <printing-architecture.lists.linux.dev>
>
>    You will need to update your filtering rules if you filter based on the
>    contents of that header (on or after the migration date).
>
> 6. The mailman footer will no longer be added to message bodies and the
>    subject will no longer be modified to insert [Printing-architecture]
>    (because this violates DMARC).
>
> 7. Subscribing and unsubscribing will be done using the mlmmj supported
>    commands, documented at https://subspace.kernel.org/subscribing.html
>
> Please let me know if you have any questions or concerns. I will follow up
> on Thursday after the migration has been completed.

Hello:

This work is complete and this message acts as a test to make sure
that everything is working properly. The list archives will be moved
later today.

Best regards,
Konstantin
