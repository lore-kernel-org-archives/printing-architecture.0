Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=oNMlfBQpa3lnq23RXQ9wrnWIASj1Rqlvh52PbVOZcFo=;
	b=fDeeiYhXEPnHOfbyQT8pDdg2Yc2Q2D47P0Qy6eXHrLSPWtZaeVv/LcEmrmLVpbVrws
	D0k4v6dAhmiatEC1/e3KCzppJxXN1qH13clrky+tDal6HbonRKZxMQyFUPqCSoILFtNC
	y17jkcklIDvWQEVnsfBm0J2c5efNux/pKdMqOA4OY5zfwO+jGrFYRi1qLt4Lvpt3nEcA
	PXfAobBqVRwbyb4xT3xMhSAnMw/zbSvceoXDU1DkaKxKbMFj1IORCyD/rksP7tu0T/rq
	azDItiz0GyK9kB+4On8MqtrbWiAcV+irzK4cXUNuTBYx+aWriCKZJxBdYt7mfTG25woK
	jW3g==
Message-ID: <51E96197.1090606@gmail.com>
Date: Fri, 19 Jul 2013 17:56:07 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1373588081.84939.YahooMailBasic@web172301.mail.ir2.yahoo.com>
In-Reply-To: <1373588081.84939.YahooMailBasic@web172301.mail.ir2.yahoo.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Fujixerox M205B linux driver Re: Fwd:
 Vendor WIN32 (or Mac OS X) drivers made available to Linux applications
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: htl10@users.sourceforge.net
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Discussion for the driver API subgroup <printing-driver@lists.linux-foundation.org>, Tim Tsang <tsang.tim@gmail.com>

Hin-Tak, for me it looks like that Tim does not only want to get his
printer working but he wants to work on the old project idea of creating
something ndiswrapper like for using Windows printer drivers under Linux.

   Till


On 07/12/2013 02:14 AM, Hin-Tak Leung wrote:
> In general, private one-to-one e-mails of this nature from strangers are quite unwelcomed. Please always CC a relevant mailing list (or two). Also the linux foundation listing is for GSoC and any communication should involve one of the open-source communities, and it is for exactly that reason that private one-to-one e-mails are unwelcomed.
> 
> A quick 5-minute examination of the windows driver of the Fujixerox M205B tells me that its B/W printing is jbig-based, within a PJL wrapper.
> Most of the interrogation of the printer status is by PJL commands like the HP printers, but actual printing does not work like HP. Somebody who has jbig related programming experience may be able to get some sort of linux print filter working reasonably quickly.
> 
> --------------------------------------------
> On Fri, 12/7/13, Hin-Tak Leung <hintak.leung@gmail.com> wrote:
> 
>  Subject: Fwd: Vendor WIN32 (or Mac OS X) drivers made available to Linux applications
>  To: "Hin-Tak Leung" <htl10@users.sourceforge.net>
>  Date: Friday, 12 July, 2013, 0:56
>  
>  
>  
>  ---------- Forwarded
>  message ----------
>  From: Tim Tsang
>  <tsang.tim@gmail.com>
>  
>  Date: Thu, Feb 14, 2013 at 1:22 AM
>  Subject: Vendor WIN32 (or Mac OS X) drivers made available
>  to Linux applications
> 
>  
>  
>  Hi Hin Tak
>  
>  Good morning. I've found your contact
>  information from linuxfoundation.org,
>  and I would like to volunteer to make Win32 print drivers
>  available to Linux applications.
>  
>  
>  Please let me know how I can get started on it. I
>  have a Fujixerox M205B printer which I would like to utilise
>  in my Ubuntu environment. I like to use this opportunity to
>  contribute both to the community and myself once this is
>  done.
>  
>  
>  Looking forward to your response
>  Yours
>  Tim Tsang
>  
>  
> 
> 
> 

