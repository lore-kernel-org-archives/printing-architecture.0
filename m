Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B89206297
	for <printing-architecture@lists.linux.dev>; Mon, 16 Dec 2024 18:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734373875; cv=none; b=I8GPsqBc20D/aNe7VfG8wbeK/FeIQwE+DMPaceDwfYqudrajMWsqkcRbIKiNq5lFi/L3XKCZmdHxa/3kSyr4QHdF4QCgOAR6Rfla0sdjXHv9YLuwfaX/sP+/gB0vUccwvVZHcinbZOn+FXTwC/mOx5KJwvuDw6cWQPGgcm5hOyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734373875; c=relaxed/simple;
	bh=r7n+0N/6HCAYe1FMtknAwB+Bj3rrrLl7FJcYfBXaq1I=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=azDdkbZLpafDbqW4JJz5bGiz/7m/ttO6ks3xfymneMGADpQG42VDa0nwSkw4Qkp/dwfWBDKdL+jh6XD42OAZ2quzxcvXXg921K2LgSGAUTDm/CmKlwaM/w4xwexA2qXXBsEWgb6gtlv4MyzMOW5peyvG/l+rxUWIbyOu+EA9lvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jSr2NqF3; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jSr2NqF3"
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a9a68480164so731524266b.3
        for <printing-architecture@lists.linux.dev>; Mon, 16 Dec 2024 10:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734373871; x=1734978671; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvYxcAK9RP2IHL8UfsKE6qE8WvOWU8cq3s+P6KPTL6I=;
        b=jSr2NqF3UWBy5OJUnkOoJ/K3kCgzBGZhGeYNaazq6d2VrdYCByTMkq95iUef9aNuGL
         5c9BEnDxK+PjnM/C6Ly8a88jj6YkGu9PnQRXMm8gWo3ydk7/q0T1KMGP4SVD6E4V+i9A
         SzekovWjEL4ZETbCfK+f7b75s3ALqQoNxQhZ4qDCvdSa4B0HQLZPzm3XVI8ruo4dS9S4
         NqViOsX8NYR7HckGFu344CgUWsjBknvFSDC1ZhoHxVo5ENSHLrXRUuJPzG4YgLUcjApD
         0RCJh3Q+lXPsoIkBfqe761+I/hdOa+j30tGKc35fOETJ8erpQoDXq3O3f9ezzjJFsc02
         FQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734373871; x=1734978671;
        h=content-transfer-encoding:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NvYxcAK9RP2IHL8UfsKE6qE8WvOWU8cq3s+P6KPTL6I=;
        b=W7DT1bm8vRF4x1IAsdTlqxgj2hWEKAzob/CHr0TV8NDXSOFU710fiaihWGzXsvcAA5
         rLnJjCA8XVp3UXxDP07hV0W2xMJD7bAcT4X5yDWaFqjnZ079QbnTegwaXcJ+8qlvR6Iz
         nAF68x6Ah6O0IAGAbP/P0gOAf7CxZM7Wp9qZGLjmF4Xto+czS6tP2TT1Ihv3Ai89cHbK
         O1zA62LQlGBz3MB7Z2dCYpyN6J0Q7UMU28AbVzjKx2IGzb4vIAgJf6DsGrJRuwiGKkwp
         i9yXp266SYSYDrlC2WpFRq3Q0bxMFcld9pj22+DEhz0z+VIFVNnMBneL9T/NXedZt6UL
         qOHA==
X-Gm-Message-State: AOJu0Yye8uQw3BKCpu/qh08M8MrYoslb/oCjyfykY775gtfSxc+MyabE
	AD90P7gdET2fOZyheYWsbh+SH37nUAAfj498Vp2ibHR7RFieASuCp0rrsrh4
X-Gm-Gg: ASbGncv3SfjdCsl6dKi/Go+KIe8EyqXahubfm7y+JS+uCoEKiRaEyYXXungy/HECq6r
	aTZgM4kVNC4Ezw4CY6nEnqh6X4lCEJoKB1815uOv3zFY/eUfhOCaI09y5RDsjPcZvOc8VTlhp9+
	kkwzQlIZxWxcoTGQ2dZPKXsxSVO+LpuGEP27RS8McCE3U+JoPaC/JLgUfjnJxnwuozzL5RtJuVY
	iK+ddcyVfU8OYRDa1Z32lVFjBYWu24hGwNFFHNuFQwm/HRoOR9Tr1WTVRvKfoEnAzltBo9bL8qE
	DWa8SkPuIZpngGHs9f+GAI/0NREF9N8=
X-Google-Smtp-Source: AGHT+IFTaHEImaWDVZpwfHnDLo+3DIgir1kmTbf/ElSbJs0W4Ops1wM+xdVu5lXbdIamUlmDxtnglg==
X-Received: by 2002:a17:907:3f8d:b0:aa6:a7ef:7f1f with SMTP id a640c23a62f3a-aab778c80a7mr1276497066b.11.1734373871047;
        Mon, 16 Dec 2024 10:31:11 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96006456sm354647266b.31.2024.12.16.10.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 10:31:10 -0800 (PST)
Message-ID: <50499e9a-3f1b-4b7c-b293-11c8363486c2@gmail.com>
Date: Mon, 16 Dec 2024 19:31:08 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Winter of Code - by Google Developer Group on Campus Indian Institute
 of Information Technology Kalyani
To: OpenPrinting <printing-architecture@lists.linux.dev>,
 Aveek Basu <basu.aveek@gmail.com>, Michael Sweet <msweet@msweet.org>,
 Zdenek Dohnal <zdohnal@redhat.com>, Sahil Arora <sahilarora.535@gmail.com>,
 Deepak Patankar <patankardeepak04@gmail.com>,
 Kushagra Sharma <kushagrasharma30072001@gmail.com>,
 Mohit Verma <vermamohit3301@gmail.com>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 singhrudra5556@gmail.com, Saurav Dharwadkar <dharwadkarsaurav@gmail.com>,
 ttfish <jiongchiyu@gmail.com>, George-Andrei Iosif <hi@iosifache.me>,
 Dongge Liu <donggeliu@google.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>,
 Solomon Peachy <pizza@shaftnet.org>,
 Biswadeep Purkayastha <bpdps95@hotmail.com>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Alexander Pevzner <pzz@apevzner.com>,
 Samuel Thibault <samuel.thibault@aquilenet.fr>,
 Michael Weghorn <m.weghorn@posteo.de>,
 Arun Patwa B 2 0 1 8 4 <b20184@students.iitmandi.ac.in>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

the Google Developer Group on Campus Indian Institute of Information Technology 
Kalyani (GDG on Campus IIIT Kalyani, https://gdgiiitk.bio.link/) is organizing 
the 4th Winter of Code:

https://winterofcode.tech/

This is a mentoring program similar to GSoC, but smaller, the coding period is 
one month (Jan 20 - Feb 20), there are also no stipends for contributors. 
Passing contributors will get swag from the sponsors though. My intention is to 
attract GSoC contributors for 2025. WoC contributors doing well on OpenPrinting 
projects get high-priority candidates for the GSoC with us.

Contributor can be anybody, no requirement to be a student, but most will 
probably students, they are young, want to make experience, have time to engage 
themselves, ... and WoC is probably mostly advertised in Indian universities.

Contributor candidates are already registering and can do so until Dec 20.

On January 5-12 organizations are presenting their projects and registered 
contributors are applying for them. On January 12-19 contributors get selected 
by the mentors and onboarded.

Coding is from January 20 to February 20.

After that, mentors evaluste the contributors from February 21-27, for the 
results to get presented on February 28.

Timeline:

https://winterofcode.tech/#timeline

Organizations apply until December 31 with the following form:

https://forms.gle/fxHLpHtf2Bp8uXyK7

The application consists of telling which org you are, listing your mentors with 
contact and posting a short list of project ideas.

Project ideas which I would suggest so far are:

- Add JPG-XL (JXL) image support to libcupsfilters
- Make a Rock/OCI image from ipp-usb
- Desktop/GUI: Printer certificate resetter pop-up on cups-pki-invalid 
(https://github.com/OpenPrinting/cups/issues/1072)
- Web: Manage database of get-printer-atrributes responses for listed driverless 
printers, to allow emulating any printer and also to use for CI
- Printer Applications (PAPPL): Complete IPP interface to create queues in the 
Printer Application (https://github.com/michaelrsweet/pappl/discussions/372)

Now I want to ask the following:

- Who wants to mentor together with me?
- Which of the projects you would like to mentor?
- Do you also have project ideas?

Note that all project for the WoC must be relatively small, as there is only 1 
month of coding period.

For contributors it is a way to get involved in OpenPrinting to join the 
developer community and also to show their skills and enthusiasm as possible 
GSoC contributors.

Please respond ASAP, the sooner we apply, the sooner we will get visible for 
potential contributors. Note also that contributor registration ends on Dec 20, 
Friday this week.

    Till

