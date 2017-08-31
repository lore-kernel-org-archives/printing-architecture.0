Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1504138681;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Eo5rDRVNairLNXuqhNayy/kp5ei2XFcPrbYtvIFnH4s=;
	b=L4F2cOYBOOC+zJNUcOCNPZm6xA6vLewXW1R3EkmFGSQBssUIb3cYFfipHAIkw+gs
	8o6ZgME2nKq8WR9LI2gW0WAzWAzq7o8qQSb4nW0a7klGQuUkXul8BAbfXaOrXXM/
	E7vqFBU50TOoQ4NgDcTWYBQqEv4diJqnfz8Al6Zya38y1m1LeXI/a4jm869/RbIu
	ZsW1nddGusj/l6Oz6+KueBqPYOnd8yd8y83Tdg1Zte8SMYIXPz0j0ByQ/G+OZNT5
	y26h/GCY5+XROFmrPfEMVKmwqXzJy5U/kCCKChjqPzOQS4kTPSiDukOSigS6RHUY
	S/JTA29fzTWCfg+3I7MOFg==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
Date: Wed, 30 Aug 2017 20:17:58 -0400
Message-id: <D634549F-FD01-482E-AE04-12B10F4198A2@apple.com>
References: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
Subject: Re: [Printing-architecture] OpenPrinting code repositories in GIT
	format
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Abhijeet Dubey <dubey.abhijeet09@gmail.com>, Aveek Basu <aveek.basu@lexmark.com>, Jeff Licquia <licquia@linuxfoundation.org>, Jeff Licquia <jeff@licquia.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Nilanjana Lodh <nilanjanalodh@gmail.com>

Till,

Personally I think Github is the way to go.  Yes, it is run by a company but that company has many major clients (including Apple) so I think they are going to be around for a good long time.  Also, every Git clone of the repository creates a backup (should something catastrophic happen).  Finally, the issue tracker *does* allow you to attach binary files - I think the only restriction is HTML files (but I'm sure they'll be happy to clarify that...)

A third alternative is to put something like Gitlab on the openprinting.org VM you have - then you get the benefits of a Github-like environment that is hosted on your own server.  But I'd only do that if you are willing to do the admin tasks...


> On Aug 30, 2017, at 6:10 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> Hi,
> 
> with the Google Summer of Code 2017 we got three new free software projects added to OpenPrinting. Nilanjana Lodh (CCed) wrote two of these projects to improve the print dialogs of GUI applications.
> 
> The projects do not provide any GUI, but they make it possible to separate the the dialog's interaction with local printing systems (like CUPS) or network print services (like Google Cloud Print) from the dialog itself using a frontend/backend architecture with the dislog being the frontend and for each print technology (currently CUPS, Google Cloud Print, ...) a backend. All print dialogs (currently GTK, Qt, LibreOffice) will use the same backends and so adding a print technology in the future will be much easier, in the ideal case the print service provider supplies the appropriate backend for his service.
> 
> One of the projects is a pair of frontend and backend libraries to make it easy to write backends and supporting print dialogs. The libraries hide away the D-Bus interface between frontend and backend and the mechanisms to find and invoke all the backends.
> 
> The other project is the CUPS backend without which the whole effort would be worthless.
> 
> See Nilanjana's work here:
> 
> https://nilanjanalodh.github.io/common-print-dialog-gsoc17/
> 
> Abhijeet Dubey (also CCed) has implemented the Google Cloud Print backend, making Google Cloud Print available to all supporting print dialogs.
> 
> His work you can find here:
> 
> https://github.com/dracarys09/gcp-backend/wiki/1.-Google-Summer-of-Code-2017-%7C-Common-Printing-Dialog
> 
> These three projects need to be hosted as pat of OpenPrinting and, as GIT turned to be the standard VCS in GIT format. And once thinking about project hosting I am also thinking about converting cups-filters from BZR to GIT and also move ippusbxd into OpenPrinting. ippusbxd is currently hosted in my personal GitHub:
> 
> https://github.com/tillkamppeter/ippusbxd
> 
> Now my question is how to do all this hosting to also have it somehow unified and not each project hosted in a different way.
> 
> There are two approaches:
> 
> Hosting on the OpenPrinting/Linux Foundation web site
> -----------------------------------------------------
> 
> Pros:
> 
> - OpenPrinting is part of the Linux Foundation, and the LF has the hosting facilities, without any commercial interests.
> - All code on the web sites of the Linux Foundation (or at least what is used by OpenPrinting) is free software
> - The Bugzilla bug tracker is an established system with a lot of functionality, especially allows binary attachments (very important for printing)
> 
> Cons:
> 
> - A new project GIT repo needs to get created by the sys admins of the LF.
> - There is a large community of GitHub users, for whom contributing to projects on GitHub is easy (report bugs, post pull requests, ...), but projects outside GitHub are not that easy (need to create LF account, ...).
> 
> 
> Hosting on GitHub
> -----------------
> 
> Pros:
> 
> - Using the de-facto standard of hosting with a large user community
> - As a user one can easily create a new repository for a new project
> - Pull requests allow easy contributing
> 
> Cons:
> 
> - Site software is proprietary
> - Run by a commercial company which could easily cease the service
> - The issue tracker only allows plain-text attachments. How to attach print sample files or similar.
> 
> Now I would like to hear some opinions of you all on how we should host the OpenPrinting projects.
> 
>   Till

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

