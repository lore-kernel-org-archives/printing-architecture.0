Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=BNNO75dNzwhFmrn2JYKsgtH3qEoYeje2TqBYgtbmLvU=;
	b=S2qymCJpzqlUMRpUggahw1cjSBAcKuKGMY9GNH41hhqnGhaO0gogtOW2XEOZt0lXb8
	HFPJOyZ1ALNQOwRfQoiuHFCeP24vU/gammcjXrqqv1i60i4MmLGii7KAnevSq65c06xg
	ofS6t+TRpDyNN036lLRl1+atZQgNXclprU98I8Wq3+6ROMVDMF4kkqJRXG93gQkyqE76
	rjUUExQqKEzxNbKJOGlJDuP83IfgdbfIIDx13pX17Ks2GxIN+UJYDKiy8h45eiV4Ee2+
	cUt9EadykGf3pdkpao93aHwZdrfwDYmx27UUYDjAJX2NwjlscqlAhJMlsTTqmAnbguQu
	9XFg==
References: <a6b09ce3-c0ef-c273-7887-0daa4ec52edc@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <12e132cd-2029-aba3-7406-8b2a4299d772@gmail.com>
Date: Mon, 20 May 2019 14:08:09 +0200
MIME-Version: 1.0
In-Reply-To: <a6b09ce3-c0ef-c273-7887-0daa4ec52edc@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RHEL 8 and system-config-printer GUI
 removal
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 20/05/2019 12:43, Zdenek Dohnal wrote:
> Hi all,
> 
> Red Hat released new RHEL major version, 8, where desktop team and
> cockpit team led initiative for removal of GUIs system-config-* projects
> like system-config-printer.
> 
> These teams decided that GNOME control center for clients and CUPS web
> interface (or cockpit using CUPS web interface) for servers are valid
> alternatives, so system-config-printer GUI is not needed. The library
> for dbus methods used by control-center, scp-dbus-service and udev
> subpackage (tools for automatic printer installation) stay in the release.
> 

With this and with the conversion of scp-dbus-service to C which will 
(hopefully) happen this summer we could split system-config-printer into 
2 projects, one would be the core part, completely in C 
(/lib/udev/udev-configure-printer is already in C) and the other would 
be the GUI, continuing in Python. We can try to get the student to also 
convert /lib/udev/udev-add-printer).

> Because of that development (work priorities were shifted) I would like
> to ask if someone would be interested in working in cooperation as
> system-config-printer upstream - for GUI part especially, where there is
> request for IPP everywhere support. I'm trying to at least maintain the
> project, but unfortunately I cannot find much time to implement new
> features in the present.

Ubuntu also uses GNOME Control Center as default printer setup GUI and 
so a default installation of Ubuntu Desktop also does not contain the 
system-config-printer GUI (The Debian packages are split appropriately), 
so Ubuntu also does not make use of the system-config-printer GUI.

SUSE is also not using the system-config-printer GUI. Server users are 
using the CUPS web interface, as with Red Hat, desktop users use YaST, 
it is unmaintained, should it not suffice any more, one could perhaps 
recommend GNOME Control Center there, too.

So with this one question for me is which distros will continue using 
the system-config-printer GUI, so that we should ask there whether they 
would overtake maintainership.

If you want to get the hosting out of your personal GitHub (and also out 
of Red Hat) we can move system-config-printer into the OpenPrinting 
GitHub, at least in the Core (C) part I would also contribute stuff and 
for sure I will also open GSoC projects.

For the GUI (Python) part it depends on which and how many distros want 
it. It is simply only one, they could host and maintain it themselves. A 
hosting on OpenPrinting makes sense as if a maintainer abandons it it 
does not need to get re-hosted when anotherone takes on. I simply change 
commit permissions.

    Till
