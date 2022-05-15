Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=BG6I3tl17zn6jpy1vMvQFueSuWVcZ8xgeBQrRXWD+VU=;
 b=Wo0Ugbc4D4z71Wj+H4JE2+DhOJwe43z4VdGtp7+Eic50v+gu/bFfGF2lRa4uHC3en3
 DcdqskGXTxtDG1VY8ol8LZKl9nvV67i6Tp7ewVm/09YR5Yd1GQuxrbb5aBWZUQaNVB7Z
 EQPTp+CcJQOAU/jtCtE0wSfEjvJXdUbdNlZpzU0FgmIRCcZA1gR0lUSKd1JiQvFz11mo
 6cidRke0BMyhRn6pY5JZLYF557QoqmHuavsRfK6IYcS9VRsAKnIzZhbZgc8zvRh6Ux/H
 hY0vAgE7FUZpPQqNs1Rd9mJTiPxEZmeob1a9MfXttSpwYQl08h6YOpzTpEss3DqxhN+q
 GucA==
Message-ID: <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
Date: Sun, 15 May 2022 20:57:31 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 15/05/2022 17:30, Michael Sweet wrote:
> Till,
> 
> You can set it unconditionally; ideally I'd at least look at the device URI and only do it for network printers.
> 

Set it unconditionally in pappl-retrofit, file 
pappl-retrofit/pappl-retrofit.c:

----------
--- a/pappl-retrofit/pappl-retrofit.c

+++ b/pappl-retrofit/pappl-retrofit.c

@@ -1785,7 +1785,7 @@ pr_driver_setup(

      driver_data->ppm_color = 0;



    // Properties not supported by the PPD

-  driver_data->has_supplies = false;

+  driver_data->has_supplies = true;

    driver_data->input_face_up = false;



    // Pages face-up or face-down in output bin?

----------

Now I get a "Supplies" button for each network printer setup.

But clicking it does not show any ink levels, only a gauge as it would 
appear above the ink level diagram (when comparing to what I see in the 
test app of PAPPL where the ink levels are totally artificial).

Printer is the HP OfficeJet Pro 8730.

Can it be that the printer does not supply sufficient info? How can I do 
a simple test on the printer?

system-config-printer (Right-click printer icon in main window -> 
Properties -> Ink/Toner Levels) displays the ink levels correctly (and I 
assume this uses some mechanism of CUPS).

GNOME Control Center (Printers) does not show the ink levels of this 
printer.

    Till
