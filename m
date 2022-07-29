Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30FB360E96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 350D560C0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659082134;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=L4SpLFYCvY/OTDpnW+lpkPmSDEzw37nFOUNvqDpCyq0=;
 b=C/Kg3gaw9hcZyuRgjlQU7bqsiDvOQZjl/bCt/9d/3w6Kev5Qhqya9KegXhMOZBJw8233an
 AcerJO3i3q3zBjukix8LlGS21DzGeI7Kk7eqM90tlbL4WFHPad3yjWQ5U6eNBv2pCpFkUJ
 79yFn4sW39PSygky+8llDG12hNutf5c=
Message-ID: <7690e8a3-6bf6-cb69-03d6-e8e8328df373@redhat.com>
Date: Fri, 29 Jul 2022 10:08:46 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] How to send a job to printer's internal
 memory to have it available for reprinting via IPP
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, ipp@pwg.org
Cc: bugzilla@countrybusdevon.co.uk

Hi all,

I have a user (Neil in CC) in Fedora (see comment 
https://bugzilla.redhat.com/show_bug.cgi?id=2095755#c22 ) who has a 
Kyocera printer, which is capable of driverless printing, however he 
sticks with classic driver, because it can save the print job data 
directly into the printer's memory, and user can reprint the job 
directly on the printer (he doesn't want to reprint from CUPS interface 
on PC).

Is something similar doable via driverless printing over IPP 2.0+ via 
CUPS? Or is there a standard defining such functionality?

I can imagine a similar behavior with IPP can be achieved if the printer 
has a job log and saves the job files for some time (just as cupsd 
does), and provides a button in menu or somewhere which will reprint the 
job - but this whole would have to be implemented in printer's firmware...

Thank you in advance!


Zdenek

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

