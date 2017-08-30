Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=jTEz6XwUYjShJUsVDUoFyGLAXpIkY3S5JWQWKPMQ134=;
	b=vG25P724tgWVZ0ivGsY65bnltGewxvbeKGc0QTUcfnSs1SDVkTobHULVlmdEWXCDm2
	SY1CxJWztsWx3BOPnkgyTyf5OsflbF72bK5IIvGN5NJlhDnUaca4lNFQsxUDP+/i9Ani
	6uM46YfDeJV6JbBF3IOpiASgY4SjUZtvTRUrtfkUw5wtsDiiGqpnRH5oG8HIo1iZDt7a
	jnKtP4K14/S3l3ckRYV9+UN6y7nPQWA8gjxeTDk2XbVBjvsD5/Zpj3ST/VcjudI42Uxv
	aXHc1d5sjF5HkXhrENbhshZUBI1WuJzkMMiwzDsQMtyC/dtoGMQmj6H+c19aho9qRU9/
	YGmw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
Date: Wed, 30 Aug 2017 19:10:26 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OpenPrinting code repositories in GIT format
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@apple.com>, Aveek Basu <aveek.basu@lexmark.com>
Cc: Nilanjana Lodh <nilanjanalodh@gmail.com>, Abhijeet Dubey <dubey.abhijeet09@gmail.com>, Jeff Licquia <licquia@linuxfoundation.org>, Jeff Licquia <jeff@licquia.org>

Hi,

with the Google Summer of Code 2017 we got three new free software 
projects added to OpenPrinting. Nilanjana Lodh (CCed) wrote two of these 
projects to improve the print dialogs of GUI applications.

The projects do not provide any GUI, but they make it possible to 
separate the the dialog's interaction with local printing systems (like 
CUPS) or network print services (like Google Cloud Print) from the 
dialog itself using a frontend/backend architecture with the dislog 
being the frontend and for each print technology (currently CUPS, Google 
Cloud Print, ...) a backend. All print dialogs (currently GTK, Qt, 
LibreOffice) will use the same backends and so adding a print technology 
in the future will be much easier, in the ideal case the print service 
provider supplies the appropriate backend for his service.

One of the projects is a pair of frontend and backend libraries to make 
it easy to write backends and supporting print dialogs. The libraries 
hide away the D-Bus interface between frontend and backend and the 
mechanisms to find and invoke all the backends.

The other project is the CUPS backend without which the whole effort 
would be worthless.

See Nilanjana's work here:

https://nilanjanalodh.github.io/common-print-dialog-gsoc17/

Abhijeet Dubey (also CCed) has implemented the Google Cloud Print 
backend, making Google Cloud Print available to all supporting print 
dialogs.

His work you can find here:

https://github.com/dracarys09/gcp-backend/wiki/1.-Google-Summer-of-Code-2017-%7C-Common-Printing-Dialog

These three projects need to be hosted as pat of OpenPrinting and, as 
GIT turned to be the standard VCS in GIT format. And once thinking about 
project hosting I am also thinking about converting cups-filters from 
BZR to GIT and also move ippusbxd into OpenPrinting. ippusbxd is 
currently hosted in my personal GitHub:

https://github.com/tillkamppeter/ippusbxd

Now my question is how to do all this hosting to also have it somehow 
unified and not each project hosted in a different way.

There are two approaches:

Hosting on the OpenPrinting/Linux Foundation web site
-----------------------------------------------------

Pros:

- OpenPrinting is part of the Linux Foundation, and the LF has the 
hosting facilities, without any commercial interests.
- All code on the web sites of the Linux Foundation (or at least what is 
used by OpenPrinting) is free software
- The Bugzilla bug tracker is an established system with a lot of 
functionality, especially allows binary attachments (very important for 
printing)

Cons:

- A new project GIT repo needs to get created by the sys admins of the LF.
- There is a large community of GitHub users, for whom contributing to 
projects on GitHub is easy (report bugs, post pull requests, ...), but 
projects outside GitHub are not that easy (need to create LF account, ...).


Hosting on GitHub
-----------------

Pros:

- Using the de-facto standard of hosting with a large user community
- As a user one can easily create a new repository for a new project
- Pull requests allow easy contributing

Cons:

- Site software is proprietary
- Run by a commercial company which could easily cease the service
- The issue tracker only allows plain-text attachments. How to attach 
print sample files or similar.

Now I would like to hear some opinions of you all on how we should host 
the OpenPrinting projects.

    Till
