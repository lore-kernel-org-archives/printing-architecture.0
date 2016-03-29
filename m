Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=WahM/VwXbkD7ON0Jel2bTRgOSWEwQ3c4AIl3/1Cf1xk=;
	b=Z+boolQtSi2U534dx03Oxwkp6r9EjC2Pxw90d04NWP2UmzxkXqU0pUExvmrSbmvo/9
	/sIKqyj9CjaiNTVryaxp7Ehz43VMKS5pjOJGz9yjAad6nbMXkToC/GjFYGm0TGlFttCO
	q15fSxWkvJxYdXVYEmIQB3IYKrDvgNQYCdzPcdJ/qj6iwLoI73yjHndrr2NLfmL78Q6V
	OYxlyCompd9ZrSxmmpU6mfYfQXMCWIlflsDHNKLDOXPCfJ2a0AfuUcTWHMjUPbGOWs4s
	okh9rRYRdKn1HnFVeoUtOdAvcNRcSg84YP0mrHHzLSzIg5DorjNYTRHu7lPQW5gjhUiL
	EBcA==
References: <56F6A4D2.8080801@posteo.de>
	<B8C7B89F-7C26-44DC-8756-40462551859F@mmiworks.net>
	<CAD2FfiHY4Z040wCiWYbA+WhV1tQDUcjSwzEhogpkoXrX_=9yRg@mail.gmail.com>
	<9D8EBC58-B0EF-451A-A3E9-3869725B82E3@mmiworks.net>
	<CAD2FfiE6XGBAv6ZvBQk-N-waOJQLLO-YY5oKUSEvxmjO2t1GLA@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <56FA8396.2060504@gmail.com>
Date: Tue, 29 Mar 2016 10:31:02 -0300
MIME-Version: 1.0
In-Reply-To: <CAD2FfiE6XGBAv6ZvBQk-N-waOJQLLO-YY5oKUSEvxmjO2t1GLA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Status and future of the Common
 Printing Dialog (CPD)
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

On 03/29/2016 09:19 AM, Richard Hughes wrote:
> In the meantime, the GNOME designers designed something different[1]
> which suited the design style for GNOME, e.g. using GtkSwitch to make
> it easy to use on touchscreens. I think it's completely fine to have
> different dialogs on KDE and GNOME, and even on applications for the
> same desktop as long as they have been designed to be easy to use for
> the specific use cases the application cares about.
>
> Richard
>
> [1] https://wiki.gnome.org/Design/OS/Printing

Great, I like this new design, especially with the Chromium-like preview 
integration (preview integration was also was I liked a lot in the CPD). 
Also the touchscreen support is important as convertibles (laptops which 
double as a tablet) get more common.

And great to see that the GNOME developers are actively working on the 
print dialog. I feared that the efforts on it have practically died.

My dream of the times of the CPD was that common dialogs like 
Open/Save/Print are always coming from the desktop in use and not from 
the app, with the app's call for the dialog let's the GUI library call 
the dialog via D-Bus. This should give the user experience of a clean 
interface of having the same dialogs for the same tasks.

    Till
