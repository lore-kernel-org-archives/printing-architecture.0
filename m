Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Qya1pMlw+SE0+G7AFYttVOT7jmXBd+SJdnXmCo5ZHEY=;
 b=ubWTa9aH/+pBBWoqbd1CWlupN53brykOiS7OH0Jk5MTlpRLabBn+RSptnsENtsgsz6
 UW7TO+5FzlL4jWCiDHUUSmxZFzNmZLFWRFSAWd17HPWSFMP6iZJMlkALGxEhuI1wZ6o+
 aRq/rRp0FEEod0E/PgyU40GUgsG3n+qHpIkxY75BMTPoHrWq8QrWN4ddvViYt5gdiv0s
 42VeRMPGIV/mMY63m5WVSfy6/aheSM7E7Wa7edG1zgi8VIEjUgnwEmMvrV/Q+8Qu2ANk
 /nguovMZY5/E5jmVu7DZZYUjN6yAj4YVyeGBrlVd3Hjfx6AUCrtG+DTIPYYAnMWLptFx
 8bGw==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
 <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
 <d98786f1-b8ce-4530-715d-d507b2110baa@gmail.com>
 <22E3C15E-13D2-42B5-9384-4637E8033E93@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <9bbc006e-da7a-26a8-bb8c-58e928ec2424@gmail.com>
Date: Sun, 9 May 2021 23:31:49 +0200
MIME-Version: 1.0
In-Reply-To: <22E3C15E-13D2-42B5-9384-4637E8033E93@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>

On 09/05/2021 22:55, Michael Sweet wrote:
> Till,
> 
>> On May 9, 2021, at 4:14 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> But this would be the task of the renderer then. Does Ghostscript do this?
> 
> It might, but certainly not with the current CUPS driver.
>

Probably I have to check with the Ghostscript developers to see what to 
add to the ghostscript() filter function to make the Ghostscript called 
by it do this.

>> 1. Let us in the second use case assume that the t-Online logo is complete represented as vector graphics, like an SVG, but not necessarily in any standard format. How is its color defined then? An how the color space?
> 
> So there you would need to look at the PDF content stream or the page's dictionary (and its Resources array).  Any resource object that has an array value with "/ICCBased" is an ICC color space, and the referenced object after the "/ICCBased" is the ICC profile.  There are other ways that common profiles can be specified/approximated (e.g. "CalRGB" is approximately sRGB and "CalGray" is approximately sGray).
>

Zre their more "variants" of sRGB and AdobeRGB? Is this documented 
somewhere? I hope this does not get arbitrarily complicated to rasterize 
a vector PDF into the desired color space.


>> 2. And how about a PDF with a mix of sRGB and AdobeRGB images? Should we produce the resulting (raster) page
>>   in AdobeRGB then as this has the wider gammut?
> 
> In general, yes.  If there is also device RGB support and you have a profile, then *that* is your best color space.
>

OK, then I will go this way.

    Till
