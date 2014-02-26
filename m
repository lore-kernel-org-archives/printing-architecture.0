Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=EJVeZzZtKQSceh+zq4Ky/xZloKXYtM7aKrDH2mfOUKQ=;
	b=zwmdiDjcyuQR/50DZW2+RxRvxGv6+C2ES2AVGn4KK9TZzxF3ayn7DEyzwm2qTJTgkl
	AsPG123aiZ0w366BRj6YglBuKid+XD8j0dZeHQHzmcboglUegPlR2pnWl8ytrN/oAx5P
	n8RKyXTpGOeNTH7+xb7mgt5CnA3TJZvvRFXaCgZW27Q3xdij0d0FVSL4kpAb+tLWW+bh
	F7A1ZLYzwslNfNWxKifF2xQlWbmKqxzUle6DcNiDtHmk+TPHTdQtDNB/DvzcPtJIUfJb
	lHYfDXBC4VKYoYpriXoobyRfjB63FmzcnfSqrftIdkdfAmwlQxmiK2frzCmJGTqdUHj1
	HqoQ==
Message-ID: <530E2667.1080708@gmail.com>
Date: Wed, 26 Feb 2014 18:37:43 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <530CCC53.8070007@gmail.com>
	<3F2A4315-4F2C-4BB1-BC9C-67B6F6BCD3A3@apple.com>
	<20140226014714.GA8346@kroah.com>
	<8E2929D6-4A60-4D27-9012-5250503D9B51@apple.com>
In-Reply-To: <8E2929D6-4A60-4D27-9012-5250503D9B51@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Google Summer of Code 2014 -
 IPP-over-USB printer support - Joint project idea for OpenPrinting and the
 kernel
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Greg KH <greg@kroah.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>, Linus Torvalds <torvalds@linux-foundation.org>, kernelnewbies@kernelnewbies.org

I have posted this project on our project ideas list now:

https://www.linuxfoundation.org/collaborate/workgroups/gsoc/google-summer-code-2014

Feel free to do corrections on the posting.

I have also announced our participation in the GSoC on our front page:

https://www.linuxfoundation.org/collaborate/workgroups/openprinting

   Till

On 02/26/2014 02:56 AM, Michael Sweet wrote:
> Greg,
> 
> On Feb 25, 2014, at 8:47 PM, Greg KH <greg@kroah.com> wrote:
>> ...
>> So you want to do this as a userspace library talking directly to the
>> USB device through usbfs/libusb?  Or should the kernel provide a basic
>> "pipe-like" functionality to the hardware to make it easier for things
>> to be queued up to the device?
> 
> libusb is enough.
> 
>> Is there a pointer to the spec somewhere so that I can see what is
>> needed here?
> 
> http://www.usb.org/developers/devclass_docs
> 
>>>> Second,
>>>> I want to suggest this as a Google Summer of Code project, asking for
>>>> mentors on the kernel side. Mentoring Organization will be the Linux
>>>> Foundation, hosting projects for both OpenPrinting and the kernel.
>>>
>>> This will make an excellent SoC project, but you'll need someone
>>> familiar with Avahi, libusb, HTTP, systemd, and general networking for
>>> this.  This isn't a kernel project.
>>
>> That's a non-trivial set of experience to try to find, good luck :)
> 
> Agreed.
> 
>> And why systemd?  What is needed from it for this?
> 
> Just for the launch-on-demand functionality.  Not absolutely required, but it helps to minimize the overall "weight" of the OS when you aren't printing constantly...
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 

