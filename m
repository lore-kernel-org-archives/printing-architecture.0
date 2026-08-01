Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FADC35F5ED
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 16:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785602708; cv=pass; b=EL+yY9QCAgLnTjvsQ9wTFfm8tfFWcuCs91iRHytgN9vTdIv1ZfIJqXmrp9ImsoolL/85a2RFUXqTyT49e+HuISg50Kc+hrJAIf/snLp0yB5scHEbWRuBTb+nTHCdrTr7koHm8fA5Xw1cV+uB5kFmgexvIdhXD5xRD5rF6aADQjg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785602708; c=relaxed/simple;
	bh=H6Pkc1D5SDnlwJviqx+2yIwoIw1KotWgrRB1WnRQCIg=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=llSTk7lWYxCULJEyGRShCGW37PTq3BwIiJG0hM9JM/BmMm71lnIlyySD0TFc9jSL8oF49oFmAJcR/qQ4g/GXXUjiJ/bbmgH4qW2nP3+uNkhWdMF23SxHX+uklMdhevy0WEifcEW5C9rJrFCrsp/96oKzwzDW1OGY00CuGSb7h9w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UdpHgxhs; arc=pass smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UdpHgxhs"
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7f0167e59a3so1048127a34.0
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 09:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785602706; cv=none;
        d=google.com; s=arc-20260327;
        b=BaTN2pupF+GG7hiLmLa3zVOqs31CyOpIiUNw7jY0rTpWn2qkh1shygBRTOR2dA/8sA
         z9uRoyno+lpV9eeNYC3nosbXA2iJJqDKIaxmJWFbQM3x2ETio/NXs3in9EJDsIFMebm/
         2mszM4fkbvjtpjI5oQem6mXMGt/pT7X2cpm/ksiqTlxg6BNQVGCB/YWIlkO5fBj/AnF0
         WqpjRw6j0UXAMBhT/HzDyW+vYqYsDI3Au9tpNnzucRM3blRQRJLXuiHnjo4HVbWnDH+a
         yzNIJvJLIDtJCt8lo1QaHZplCtDF4dNcL6vJS7hWYfLDznts6HJARdk/XNqmm0qQxNRc
         DZEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=H6Pkc1D5SDnlwJviqx+2yIwoIw1KotWgrRB1WnRQCIg=;
        fh=m4od8JhQ2tHYJn2BKlkxtLRo/12dAAVN3EaHINuco2Y=;
        b=nsByVoB1IEOAOwY28D/JUewy0+Ci+yO2pVq/rJuECn6vNhYhZOIdWK5QnRzoVHJd+N
         cK7vGo11zofAHo96E+joqfMLobWvu178jT+JIohgmcIdNP9afsTnaFDrSNMsM8PUnYuh
         IQ48qlyTRhNW1+HpkSRlIwTStSeQ3JPAFQSvCU+mzDx52lMu9M3z72D5U4tCp/+DAvja
         FoWQiKRYQ6n4/3IOo9x3WJuOjnxtn6YWJDnt3Fk4fptrEsyMBZxiigWvLnslWRmlElAQ
         1J7/5xohHvYX4wW6SCIixHHhxcZDR6iP82sgTJG5Ro7RKbUWIKyNxmHpA4ECkQUvXdZL
         wsyQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785602706; x=1786207506; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=H6Pkc1D5SDnlwJviqx+2yIwoIw1KotWgrRB1WnRQCIg=;
        b=UdpHgxhs0WiOYJ5ZHDuxR9uDPEv6XEjjfdfMlp8kzGSJbyKHXPUpYXwEdcTr5k4RtW
         DTZd4GpQEus9DHh7qJXF2uk8LlR+Qu5kblU3+46HbvvP+psbO2oB6ywr7WGoF0+iwjTp
         ZaRoPeUOrcHYRllYMqZ0hDwSImganyziwMMG2zN/iLzeokWCYPjFARkRqFeDD9VSwILR
         WaHG+xMXj1EZGacFfOjnaNDNLXeERIOC+lx6HdulgS4O+KootDF2FXYhdZ2jQsiKtTta
         WXexKecajr43qvb6AFDFB1+RafwR5W/H9lQTZJdYRkgIsMjrlRdE8H1AUcV3NeUCTztg
         23tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785602706; x=1786207506;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H6Pkc1D5SDnlwJviqx+2yIwoIw1KotWgrRB1WnRQCIg=;
        b=N5uMD87rJ7l8i+fjqTDhZTThuI6sI8yNSUGRyCsbYRshjd9CbGWm6einvnGjuXBWia
         x7YiQLl5ZG56OvG+fggEsqQij92bq+ZfMUd5xGNWginZUoKyzGR1z3RRXI09fSL8NLAV
         m+WVGODBu+OM4AKftLNtMLaowjzctiBHGBDJtciu7rPONvQYTAl0FkH+0TVWRAKvXnGq
         R1tcYwdfIjg+aaoikP6ZI1sUKneH5n+7WWdGYZka0e5S/CzD1WDlClNItM2s3+VK8Hum
         sFyZfbTOEsiYc/y5sMqDL4WbuVptBiV19MRxe6g+du3Apb2mLJVwOX53a0XugOVR2tYR
         CHGQ==
X-Gm-Message-State: AOJu0YzUS4ANahjIdWEh6wIzeTv72bd/dzss5s9fPg8NNlEN/XsqBLDp
	g31EmMnHduWpofHu/iHUD3g5ufhmUmYi4yiJ53t+toW5sxk7D7vIihCEqAYd0Vsg+NhF1vaF9EF
	xOH7aCdLR2b27ScZIqg0jc42BxvLkOCMi//jm
X-Gm-Gg: AR+sD10jdYfNzzkXDZa5KY5G3xZwSF5wORLyMM2UwWSynQYFsqaEiRNvu1AbNUjuTT0
	GmGSkYeZQQ7cRvGUzY6KVbBptWzwEaFReU8Mn4wEIqjze87aNdtSDG9trfCMpF+y6+NXY7MI4ke
	ENMsSz3n0Ykq/CFv+kI3ZVjNqtMvHMZAC2iES+yVOhuzaV8WJxoiXYLdYTgZYHqsruST+2MFJ/S
	VIJZQWQxl6V5JsvUVD6VR3n+8/9wV9+WJlJ+QYvsdLehKlyK42Xy/jkv8bmkCXSNlWTRxl5Jvnc
	DMiPjxWrkTRGgksePBvkYXE6T9ATfAF9Dn00zCW7k+QO0vUwoovDyGErzoylD9V8tSlEArfSH2R
	8Fao=
X-Received: by 2002:a05:6830:349d:b0:7ee:37dc:59e1 with SMTP id
 46e09a7af769-7f1971d52d3mr7345809a34.16.1785602705943; Sat, 01 Aug 2026
 09:45:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Date: Sat, 1 Aug 2026 19:44:55 +0300
X-Gm-Features: AUfX_mxo6Wv8AMYdNw9QG70FDvmL0EH1YQAcg__51Hu6gUbpuGUmTlon1ft7Iqo
Message-ID: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
Subject: Recommended way to manually add an undiscovered IPP printer in CUPS 3.x
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm working on the COSMIC printer setup application for CUPS 3.x.

I have a question about driverless IPP printers that are not
automatically discovered, for example, when DNS-SD/mDNS is disabled.

What is the recommended way for a desktop printer setup application to
allow users to add such a printer manually?

I'm looking for the intended approach in the CUPS 3.x architecture.

Thanks,
Abdelrahman Khalifa
