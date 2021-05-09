Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FL1GLhlaum+C49irHVeOHXd8A3/yRTSA2D5MvvixveU=;
 b=HWi3w/naZlhbbp0O3ReuIwmW0uJXLcTa96CUXQubnGFOXVIZQiw9IZSnK73wnP6hBJ
 ysOHoNpSmFRHvkuAUi1aYz7F2l9GJHfN4TJYHREsy7xjT8IWhF+7ZrdO/FgUuwf6Na9n
 DQzm4qTCWUZaNf5KZS2HqQu7eaUcQRl6Rvr+Y/1nryjjB7JvP5AX0qDORPoJiEovlDI5
 hG76ryubD32ETU4B6rJFxXGocNyHoLz96epVs+cIIu4gTR2kQ6j4y5lCHkX96zpcijYj
 5TFSLPCP3a9I9Fpdk9l5fPo9fGwhS0GXJj5nLPZLSZbR3SOGMoE/1fRV6K0E+kkcNxVR
 QBgg==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
 <YJdH6p4ePqKSATLL@shaftnet.org>
 <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
 <1a37c322-5ca3-727b-583f-2b6bc78e44e2@gmail.com>
 <663F1B36-C6A5-4261-8226-C659DC8DA871@msweet.org>
 <11635c5c-deaf-94af-012e-36717fd6900e@gmail.com>
 <71632EB9-69EE-4AF8-A191-D638C439C7DD@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <65dec678-dcd9-9dd1-cf9d-30033dcd7be6@gmail.com>
Date: Sun, 9 May 2021 22:43:36 +0200
MIME-Version: 1.0
In-Reply-To: <71632EB9-69EE-4AF8-A191-D638C439C7DD@msweet.org>
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

On 09/05/2021 22:34, Michael Sweet wrote:
> So if you used a color profile generation utility you could print a target image in DeviceRGB to generate an ICC profile that could be used locally.

"color profile generation utility"? What is that? Do you mean that the 
user calibrates the printer by himself? And the device color spaces are 
simply to allow that the user can calibrate this printer by himself?

    Till

