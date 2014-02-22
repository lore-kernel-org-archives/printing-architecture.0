Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1393054939;
	bh=QtcN9q03TNW7RMcGN/3BA08oUX6ep0ktoFQGnX3DLIY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=jOe2PjiZXFUpU3b9Hat4MuSvtIA5zrnPOZvw5nL9uutPZjDN0GwKNQXgfaT4x6ndk
	OmuPPzy7RDClxHOTUs1NkktFIWI3opuS98WQgmgbWRdSZxkPE18MvNCCH8riGRG88N
	tXBBtaMwI2wtZ8qFQrpEj7QYohhSuhdFc4pAESmi4lw==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <CAN40gSsVN9bXYQqkewazZToBXn7v4icsJQbMpw0F=S+YZ40woA@mail.gmail.com>
	(Ira McDonald's message of "Tue, 18 Feb 2014 13:52:57 -0500")
References: <CAN40gSsVN9bXYQqkewazZToBXn7v4icsJQbMpw0F=S+YZ40woA@mail.gmail.com>
Date: Sat, 22 Feb 2014 02:12:17 -0500
Message-ID: <m3txbr4o45.fsf@carbon.jhcloos.org>
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
Cc: Jeff Licquia <jeff@licquia.org>, Till Kamppeter <till.kamppeter@gmail.com>

Does it really need a daemon, and not just proto 4 support in cups/backend/usb?

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
