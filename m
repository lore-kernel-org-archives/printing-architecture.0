Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=XnSxLQtw/DAD2f0AZIGRAnE/qdxNTEA7hyl8x69+f/4=;
	b=K+gbgkOqlb94sOU2w0tMOMDqlq4Ev1FqWVGMp3DuLDrctZBqOkSKXFphubClHd5zD/
	OHzZ0oalUpWwSfe1ZpywzFdyj+gsN8tGPBrtOtYauaM5LENttDplbKyG6zmYPRDnMI8Q
	00QtF6ZXmhSaa7frenGMIryKG6Oqiw6jLkadCbmaDWfshLjP19Ou+rvxCM1TM0jjgbYh
	+lPustGrN1we1M76CW8bjN0J4IzR9PzLhczLHgYaeYb2IbbOAL80SsDXnl2n1jRraLEs
	osj+7FdGoBCKw5f5d1r72Z2JRcQjbespnyWk7dpXQMw8v0+hBUcsZ1/lU2t3esahDpyX
	stHg==
Message-ID: <530B8704.2010608@gmail.com>
Date: Mon, 24 Feb 2014 18:53:08 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAN40gSsVN9bXYQqkewazZToBXn7v4icsJQbMpw0F=S+YZ40woA@mail.gmail.com>
	<m3txbr4o45.fsf@carbon.jhcloos.org>
	<9576314E-B688-420E-825D-523F6ABFB7D3@apple.com>
In-Reply-To: <9576314E-B688-420E-825D-523F6ABFB7D3@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
To: Michael Sweet <msweet@apple.com>, James Cloos <cloos@jhcloos.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jeff Licquia <jeff@licquia.org>

On 02/24/2014 01:54 PM, Michael Sweet wrote:
> James,
> 
> Putting it in the USB backend would greatly increase the complexity of that backend without actually enabling things like the embedded web interface of the printer and other IPP and HTTP services offered by these printers over USB.  Also, while the IPP API in libcups can handle alternate IO paths, the HTTP API is tied to sockets, so any implementation inside the USB backend would need to provide its own mini HTTP API to send requests and receive responses over USB.
> 
> On OS X we have a launchd service (launch-on-demand) that is setup when a printer is connected and removed when disconnected. This service basically acts as a proxy or gateway between IP connections and the USB interfaces offered by the printer (minimum requirement is 2 interfaces, which looks to be the limit for most printers in the foreseeable future thanks to the SoCs they use...), and the service arbitrates access from multiple IPP/HTTP clients to that limited number of IP interfaces.
> 

Is it already possible to buy an IPP-over-USB printer? If yes, which
model(s)? Would be great if one could by one for an appropriate Linux
kernel developer.

   Till

