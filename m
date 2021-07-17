Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=yRLGpUqQqy7dPpwJn00IooBcwXd8Ul5kr1hoIeZBzm0=;
 b=olUz8zIxozwhV51smu0xhNm3aA8m2Eb2OQI8w86F5dlnw/g9bVHe60Vs4PjZa95vdK
 90rS3C/nBmDM1R/LHzPFvhP9U8S7In/708/EGJtvO6ImomKcmCG8om7wnSfU0AdZNr1Y
 2w0V4OmErRFW1qYFjI5PSAO3GZ1fiasuUCsTpSTSUiLNeipbUcBzxc0rBpSMWGFvlGU3
 txFLpd7OplVfPc8BlP9DvpFDsdugNLNrKdmGXLXsCOJso272P9KV6Km/ohcZnFrK4wD4
 S0LQt9OYaneg0V/jJFFYomrIPWmeC1p02+r7NuRZRv9/W/mGO1qjnXkA5RKUDzZd+gk3
 qMQw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <647bc976-ada5-b3af-609e-557036f5c744@gmail.com>
Date: Sat, 17 Jul 2021 21:21:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PPD files in the PostScript Printer
	Application Snap
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: James Cloos <cloos@jhcloos.com>

James Cloos wrote

----------
Are the "~4000 ... PPD files" ppd file available outside of that "snap"?

Ideally in a git repo?

-JimC
----------

probably reading several times in my news posts that the Snap of the 
PostScript Printer Application includes ~4000 PPD files.

These PPD files are not part of the GIT repository of the PostScript 
Printer Application:

https://github.com/OpenPrinting/ps-printer-app

Snaps do not include only code and data which comes in the same 
repository as their snapcraft.yaml file (Control file with instructions 
for snapcraft to build a Snap see http://snapcraft.io/). A Snap contains 
all the dependencies (libraries, auxiliary files, ...) of the snapped 
application, to make it working with any arbitrary Linux distribution 
(at least the ones using systemd where you can install snapd on).

In case of the PostScript Printer Application I have included these 
~4000 PPD files as they were a dependency (actually the Printer 
Application does not depend on these, but it makes the PostScript 
Printer user's life easier). These are all free software PostScript PPD 
files from printer manufacturers which ususally come with Linux 
distributions, like Ubuntu Desktop.

The files come from two projects and are hosted and maintained there:


1. foomatic-db

https://github.com/OpenPrinting/foomatic-db

All PostScript PPD files under db/source/PPD/


2. HPLIP

All PostScript PPD files under prnt/ps/


See also the snap/snapcraft.yaml of the PostScript Printer Application.

    Till
