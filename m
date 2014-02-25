Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1393368215;
	bh=+x8lvxofhnjLqdrTDV8e60JX8vHwwqp4NogeZ4BM5es=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=c+U+4tSpgALj58AhXczQmRmTk3ljWuViTPODsFId4QCwFAv3ArnkOWCQbqtGdxQQ/
	tA4PiB/mJjjYMRWhk+VFayfatRw454aRHo0fF+zICBOGqETJLmBKJBtVoAEOdl1Cl5
	EkLahSDN1GwEMEsyOisiMLRF6qE7kq0s+dlAQSMUaDA==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <9576314E-B688-420E-825D-523F6ABFB7D3@apple.com> (Michael Sweet's
	message of "Mon, 24 Feb 2014 07:54:36 -0500")
References: <CAN40gSsVN9bXYQqkewazZToBXn7v4icsJQbMpw0F=S+YZ40woA@mail.gmail.com>
	<m3txbr4o45.fsf@carbon.jhcloos.org>
	<9576314E-B688-420E-825D-523F6ABFB7D3@apple.com>
Date: Tue, 25 Feb 2014 17:37:06 -0500
Message-ID: <m3ios2zums.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] How to add IPP over USB printer support
	to Linux?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: Till Kamppeter <till.kamppeter@gmail.com>, Jeff Licquia <jeff@licquia.org>

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> Putting it in the USB backend would greatly increase the complexity of
MS> that backend without actually enabling things like the embedded web
MS> interface of the printer and other IPP and HTTP services offered by
MS> these printers over USB.

True.  It seemed a reasonable compromise, at least in the short term.

MS> Also, while the IPP API in libcups can
MS> handle alternate IO paths, the HTTP API is tied to sockets, so any
MS> implementation inside the USB backend would need to provide its own
MS> mini HTTP API to send requests and receive responses over USB.

I expect any implementation of the idea would move some of the code from
the http backend into a .c file to be shared with the http and usb backends.

MS> On OS X we have a launchd service (launch-on-demand) that is setup
MS> when a printer is connected and removed when disconnected.

I didn't get from your previous post that it launches on demand (as
opposed to always running, monitoring usb changes, and linking to any
proto 4 print endpoints as they appear).

I agree that that is a good general solution.  I only thought that
adding proto 4 to usb would be a quicker first step.

MS> This service basically acts as a proxy or gateway between IP
MS> connections and the USB interfaces offered by the printer (minimum
MS> requirement is 2 interfaces, which looks to be the limit for most
MS> printers in the foreseeable future thanks to the SoCs they use...),

Interesting.  I see that the spec requires at least two, but wasn't
aware more than two are unlikely in the wild.

MS> and the service arbitrates access from multiple IPP/HTTP clients to
MS> that limited number of IP interfaces.

I don't know about bsd, but with most linux dists udev rules would
enable the start/quit on demand semantic.

I presume libusb provides enough access to the usb protocol upon which
to write such a daemon.

It will need kernel support to show up as a network interface.  Perhaps
the same support the ppp daemons use?  Or tun/tap?

I think you've covered the rest of the requirements.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
