Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB1C78C9C
	for <printing-architecture@lists.linux.dev>; Sat,  6 Jun 2026 19:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780774751; cv=pass; b=E2FwL8K+PcVrceXQU/YFnjymNxe+wtnGT30XTr29uHt2MfNKvrr2mAgYcCGIvoq/RHGBIoXX9rC3Zh/F3MBLyt1W76t5DQEWO2CPB8ULT1Un7xWFEcQRXhn/2q+y7piG0zD+OfGndajORhbkuAqu+Kn9NJJfGJzTUA3nSq4XO3Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780774751; c=relaxed/simple;
	bh=Pg0gx8MdtrzWigRD6bHEXX46XjPrBhKii2rd5JQK818=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=XKY4VeJgPdjSgZr5g3pLLOXQ3b6AQW72JJQLXsgHdVQTQ9/TQE84ohKKxqJpZxRnK5q9Ta+NH+3RATAALeteBm/Z9Ypr8KUQjHfhN/c2EGMRZfL99dbL4PQLSDezEcxfvv0hNoG3arDixEbFuq/HXcSGEPyg54GV3GRdfH3/2Pw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VpCJJQEY; arc=pass smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VpCJJQEY"
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-43cce34c881so2329688fac.2
        for <printing-architecture@lists.linux.dev>; Sat, 06 Jun 2026 12:39:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780774749; cv=none;
        d=google.com; s=arc-20240605;
        b=RLmTXyW4nB6AH/bzQZdwUL55Ea3SQUXY8lfCvfnBUd8E0kZohTIk2fGU9p7LyyxECW
         lYW3YP+7sqxiZkwbjGM6LPATm/KZ0xQd/HMauBcrwRmk72fz+XjhWSzMfThujFop35uz
         crnijqcDSAtzjQAMwEKAKsJS/2cIcZy5Biq2Zt9X34fzJjN/Yr1/Kk0AZIwlBcsIrxwQ
         S5soqt0txhlYT8zHtyAYutR5RdqltIiYefh4ydsnFZ2+fu1Sto8E/FmSVSagOhoKrsLS
         phgHZIKyFe6GkOEWSYgXEWm3YS8tEHVGl/Cmv6vx4U7QubjvLe0c2RNcFULfKw6HI2dt
         XT5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=qSUn6LgR7ZUNPYFIP0McrpG9xCJ6TXrgQjIrsRIhHCQ=;
        fh=m4od8JhQ2tHYJn2BKlkxtLRo/12dAAVN3EaHINuco2Y=;
        b=KYZftE8RSeqlthRTIeDeYJnPcfd2JDs+EMm9zZCk3K0kscKAcInfWkcRAk7Xh3prLU
         h5thtvB0hxjTBAzCer8yREAI4CQvZef+oetnF65BZcze5QVq8gieE80wCF2lewOamiwm
         JuenulOKsw8uARLpgumdWPmALnHsYn1F05CXOhUAFx1jeBXvZKosqsb5rRWQ1G8KEWw1
         tXd/SG2/Dtr8AwZgYIZ71+jf0IpwXZFTyXCwRFbIahwSPx2Gtzfk4Z3BPVYTuJTrdMmr
         6c53HwfoawNOAbMSOFonNoQBIL/ogqOBwBafy5k7QFi6D5OP189z2w9LbC6eZYgN1VjG
         6DQQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780774749; x=1781379549; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qSUn6LgR7ZUNPYFIP0McrpG9xCJ6TXrgQjIrsRIhHCQ=;
        b=VpCJJQEY53HUXuA/cFS+QjReebWh2te1gqZQf85NLgNZZSy/PWgJM5tsjSZcg7nMNI
         FGQEJ1+pg8T/iBesncE7Aqep22vUKEDgq553Y3LXUU6oPVS9P3KEeLZAxyWOTYr6XFLU
         lBRoQ176k2V3f96X37UZtVv++hCM42r9D3p/D3Ibx4RywwXO/unpn7tDiWNkQ7dgYi6x
         kbzchyXcX5tI3SCj4bMhaOPdAy4snK8cGFU2BJNUNg+CWOx/UbyO90HTStcVu2EvRj2M
         wV3Frwn6FWc5I12Q22lxw7DZYXAw58gwnopY6gUnQbJ7WPiZM96XY3i/bKINPIw+lpCN
         VqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780774749; x=1781379549;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qSUn6LgR7ZUNPYFIP0McrpG9xCJ6TXrgQjIrsRIhHCQ=;
        b=XZaZrMCeLxQTkf5mYRyxolH71SGxD1wQ133tUQ9sqE1BPFkDW2s5d21HRozdvZdfj2
         futLOri5unDq5kodC8DmMKkx3lsUiLszxocXgVvZ/IFjXNeoCEa332BvFK8s5Y9HtkRy
         HClwLF8iuyoA97eS866pFpr5BGSM5evIUAaUEJ0krrdMg3tpOGwno5pBvZw1GpRt2ap1
         H8qPZrw6+Hjch3fLC/+O6BFgiMTYZI4EwgGwkukyo8/OCx3S1i9JfPLCGJEO+OjwHA0I
         gg+4+VBL70NdY2kLsT6NktRi7fc6Nmj+xczn78e/Km5HGNoQ8yXEk+y3LCB64+uEjitH
         o+og==
X-Gm-Message-State: AOJu0YxjoljB6AMUKIQN9CP2FUwVIoXLa5xYXF71p+tXDzIiNd07VUpI
	e8BvScnLWk4ZWF9dOx/BZuL5nhrcFvUw4yvCl4RvQTplWPBxcbFJbaoE+43BmpsLBO+s5r7h4iV
	aIdAH4snMDpETH8cYvHlCBJHlpVGJwtNYoIafL0I=
X-Gm-Gg: Acq92OG0tY9+/HKn4g6P99JqNWOXGkwwukEm4itqqYSDshJomTDuSzFrRK3gnX9zwQc
	TAUDzzRmBj1RkZfpRCR/LuSwZJZKtSey2eURhCzdMaXnDYiisq7+a9tDKNndZv4eUKEk0lLcVIg
	1tE+joink9epf9npJbY5dAC7gvvOtlnL9m4SMUhUp/Ax7c0GhegAqXZa+kwIApAv4EVUKoqUslE
	fkha3tKhHfJcddHi1u7ci2WnGLRdeY/kudFZgPHH2zRtgDaUwx3tNDLYknI+/92L5hzBGvHKuJt
	ZnDgXiNuTd/vvJluxD/MENRKVtwTh7Lyu2LXTrb3BE8NS78XP4Q+
X-Received: by 2002:a05:6870:c08e:b0:43d:1575:c284 with SMTP id
 586e51a60fabf-4413d539308mr4951176fac.1.1780774748754; Sat, 06 Jun 2026
 12:39:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Date: Sat, 6 Jun 2026 22:38:58 +0300
X-Gm-Features: AVVi8CfUkxR89H1ztj24uCkG9ZvSBzfbIJF-FPIxA2IR3o1c2PfCSGUFt9830-M
Message-ID: <CAHK3-apu=q3W673Mnc7_tbnBs6yRmfPqci+af_sUCkCUw9wLmA@mail.gmail.com>
Subject: [CUPS] Authentication for local GUI admin tasks
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello,

I am working on printer setup integration for COSMIC Settings. Till
suggested that I ask here about the recommended authentication path
for local CUPS admin operations from a GUI application.

Current architecture:

  - UI: cosmic-settings
  - Backend: cosmic-settings-daemon
  - Communication: varlink/zlink
  - CUPS access: cups-rs/libcups

The main issue is that privileged CUPS operations may require
authentication. Examples include:

  - Setting the system-wide default printer
  - Updating printer location
  - Removing a printer
  - Setting system-wide printer options, such as paper size

If libcups asks for a password inside the daemon, this is not suitable
for the UI.

From what I understand, the possible fallback order is:

  1. Use cups-pk-helper + polkit for local privileged operations when available.
  2. Fall back to direct libcups/cups-rs admin requests, preferably
over the local UNIX socket.
  3. As a last fallback, use per-user settings in ~/.cups/lpoptions,
with a warning that this is not system-wide.

My questions are:

  - Is this fallback order reasonable for a modern desktop settings app?
  - Is CUPS 2.5 OAuth2 relevant for authenticating a local GUI app as
a CUPS admin user, or is it mainly for network printer/service
authentication?

Any guidance would be appreciated.

Thank you,
Abdelrahman Khalifa
