Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB5A3A3821
	for <printing-architecture@lists.linux.dev>; Sun,  2 Aug 2026 12:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785672299; cv=none; b=pLwrkccm3HifkzmlqJDjZJIzYbau/lSI0CeClNOI4fW0lRAB30z7lsqV2F6+Aj7N5IVJasV1bcvuss9LQbliR7JjbP1dabiZNgLZOee4R8E3n0XzNtRlOLefuK9YG3V423SArapJ8B7xltXeaKn3V75OPfz+3OdB0sKj4tzqNiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785672299; c=relaxed/simple;
	bh=CSdOfuEjUgpDUOpjQYWgdeAQ8D4KVuIxpKZyRg5H2tY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u6JWMrOmcScRcjjfMwbtMkUcr+CwsSPikL7ZtiX3YeBJFfOeczfn2Sk2z7RCFLDZ0tbIQhDrR14Qd/hFhCkQCSv/uCc4jWNZA0opRQa8IS8Q3w89K4WOnkhoY6ur4FPnfKNgJR/PPn0XI2gdhtg2X4MjeuIVfsxC+GvJld3adlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bGez2y5T; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bGez2y5T"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-49558ce01afso9370265e9.1
        for <printing-architecture@lists.linux.dev>; Sun, 02 Aug 2026 05:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785672295; x=1786277095; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vkMJzjja3h5t2qxDDmXaKY01hdf701X8ooztlpEbgb0=;
        b=bGez2y5T+GylvM0jikMiAfK3XHb6wiHcyaqMosW2KIqXaJWn9KrpCwMXa2ySM3mB/e
         EllZL2ItDT80vlOGo+m1yZ/a8fdRV2so1QXQhZvT6zkGYkedfS+4DBcvWOBXNdbLIm/5
         4z218f15eaIWaIN7aUwUre+FDpG8YQnC29g8g0krhAJ9QA+sP0tD8ZNqDm4PXjxiCjec
         dpN8nwYUvuZOyM3g3Y9YbeY1XwhLi4dAu4jElTyQHLrYj4tCYYpTVcXTtnAySArjj+UE
         5e9Cv+x0qIaM3aDr9D+VDk3nlN8nuDiCUZm8GzHwQInmS41tD4sz/VYRvJEsrQjYQIYw
         2PLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785672295; x=1786277095;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vkMJzjja3h5t2qxDDmXaKY01hdf701X8ooztlpEbgb0=;
        b=aXHEB1EKyUhYvMk6kLx24aBhWHw+LUoWAgO1GRs2OvJhOArJhUny+Cs5U4RsRNAEJ+
         m5z3nCDPdGQoohdDFdciUGYzKGXHE8OePHk4I1MP1ZHVhEv60Du0YD66BQP/t97QWYrj
         Iz4KvuWFU2K64kJsdnSdkNgT/H6D+EZIE/c06XCuP4JPEllMMVT1JR+qvu6kg6D8KA9f
         w/F0Ayc+Z18jndE5ZeCTKiniwElRgBtf9ojr2MvlHRT+feHRe50HlxOLeQaTMpwdodMt
         yK951PA9ewmy0TKwY64Eh9UbYmDPO6FTIWayy8GHKwfa/4l+/MIqblONi2aPy2PXx+PL
         Ixfg==
X-Forwarded-Encrypted: i=1; AHgh+Ro3CqbNdfcYt+AuQmA7mldvqH2X5vs8/k5/15lD7zDrkncAPKwRQ9+dzFs9Ncp9CTQiUjqT5p1d53OfK8pBTCABpeMj28E=@lists.linux.dev
X-Gm-Message-State: AOJu0YxORpGJX62er99vhtHwlOLXxX1XkOIh2JV+Za5FvKPAklBNAvrj
	3A//ly1S1ibbJ6z7kAhZswj6bmCN1/rGQWmD1Ll+VRVq++bF7iAETOT3
X-Gm-Gg: AR+sD13FeHDatCVzsXsngltHIdK5db4XW3euv4yDcGYESyOG6bxfeWLBpq5KdUCaBDD
	OtjXIpz/8lAcZB7FAZbQ28bPm5p1f7BcPfq1Dzq/9YEOpsk3ZQErz3/Z0mwuWSUR1V8iJlFJjBT
	NOtg/iqpr1g/rGtBgsZAG/vrDDAAHN2MIuGypjWsP8+3jbm9OPeELIFXvS0hi1g8AcNCfHMCjdg
	YzCUJhuR7nrwzYrPo+yZmg+ffpXjhOo55qvNBbNB/2sqEtzqYKv2Ue87cKNhxfck+fG1DAIXJ/L
	IycpIT9HZfwn9pC3hY3CYuvtR6D3xFW/WfQXgFRbq7aQlvNmVmxagjQwfgd8Sr6orKLm+xjvxXQ
	n63tUw34+lxRsnzsuUHT9QuOmqbUl/aZm3/rdPGaw/xT+FF7ui1M+GjaYb5QP+6se6GbL8xo1Qr
	+9CkBKI2pbS4itugU4l4jOhPWAFmlU9vn00TXhZRsUEYPwBP9sqg/MUKVhtRSBaP8DaiBZi6t/W
	sIHmkWuAMgf68C4ZnpcXgXIBxQotz7dAEu9io3vdHsgdjfOSSk3LUydJQ==
X-Received: by 2002:a05:600c:564b:b0:495:52dc:73a9 with SMTP id 5b1f17b1804b1-4980c675370mr96509145e9.11.1785672295223;
        Sun, 02 Aug 2026 05:04:55 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4980878dbaesm226445865e9.12.2026.08.02.05.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2026 05:04:54 -0700 (PDT)
Message-ID: <84bbe4d2-36b7-4b27-904a-b1b7b23d2d2e@gmail.com>
Date: Sun, 2 Aug 2026 14:04:53 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Cc: Michael Sweet <msweet@msweet.org>, printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com>
 <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
 <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/2/26 11:18, AbdElRahman Khalifa wrote:
> Thank you for the explanations. I think I now understand the
> separation between printer profiles, the local server, and the sharing
> server.
> 
> My current understanding is the following:
> 
> 1. cupsEnumDests() should be the source of truth for the destinations
> displayed on the main Printers page.
> It can return automatically discovered IPP destinations, remote CUPS
> queues, Printer Application destinations, and eventually destinations
> supplied through profiles.
> Therefore, a destination must still be displayed even when I cannot
> find a corresponding local DNS-SD advertisement.
> 

Yes, especially as there can be destinations due to entries in the profile, 
either because DNS-SD is off or destination outside the local network are 
defined. You do not need to parse the profile or investigate any reasons, if you 
are using cupsEnumDests() the right thing will happen and you will see the 
correct list of available destinations. And as print dialogs are also supposed 
to use cupsEnumDests(), you see exactly the printers which you see in the print 
dialogs.

> 2. DNS-SD should be an enrichment and grouping source, rather than the
> authoritative destination list.
> I currently use Avahi to obtain information such as the service
> instance, hostname, port, resource path, TXT UUID, and the
> relationship between _ipp._tcp and _ipps._tcp advertisements.
> I will correlate this information with the destinations returned by
> cupsEnumDests() and use it for physical-device grouping. Where
> possible.
> 

Yes, DNS-SD checking by your software is only to get extra info, like for 
grouping. The authoritative list of available destinations comes from 
cupsEnumDests().

> 3,. COSMIC Printers should not create or edit printer profile files.
> 

Generally, under Linux configuration info is stored in text files and GUI tools 
to do configuration save the settings in that text files. So the GUI tools are 
frontends to easily "edit" these files and the user sees the realm of 
controlling the settings by GUI, as this is much more intuitive.

So principally one can make a GUI for managing a profile for the local server of 
CUPS.

For correctly configured Linux distros this should not be that necessary, as for 
end users at home or in small offices (SOHO setting), where we do not have a 
system administrator, DNS-SD should always be turned on, and so all print 
destinations get automatically available, without need to edit the profile. An 
end-user distro coming with DNS-SD off is not a good end-user distro.

In enterprise settings with a lot of machines and networks there are always 
system administrators who have no problems to hand-edit config files. And to 
manage the vast amount of network resources (also printers) they decide on how 
to do so, and when turning DNS-SD off or sub-dividing the local network into 
many smaller ones, they enter the needed references to printers and 
printer-providing external sub-nets, and also filters in the CUPS profiles of 
the desktop machines, so that cupsEnumDests() called by a user's print dialog or 
printer setup tool shows exactly the needed printers.

> 4. Profiles belong to the local-server/libcups discovery mechanism.
> When libcups supports them, profile-defined destinations should appear
> naturally through cupsEnumDests().

Yes, exactly this.

> Queues owned by the sharing server are a separate concept.
> I should query the sharing server using its IPP System Service
> operations, such as Get-Printers, when I specifically need to list or
> administer the queues owned by that server. I should not infer that
> every destination returned by cupsEnumDests() is a configured
> sharing-server queue.
>

A sharing server is a Printer Application and so it is like an IPP network 
printer. A Printer Application is not necessarily an application providing the 
driver for a non-driverless legacy printer, but a Printer Application is any 
kind of software implementation of a driverless IPP printer. Even ipp-usb is a 
Printer Application. On the sharing server there are print queues defined. These 
print queues are IPP print destinations for clients, and they pass on the jobs 
to other IPP print destinations. They are highly configurable, for example to 
allow only certain clients to see/use the print queue, to do page accounting, to 
restrict the use to certain users, to require authentication, ... and the 
network where the print queues are visible to clients and where the destination 
printer is do not need to be actually the same.

In most SOHO settings you do not need a sharing server as network printers are 
sharing themselves to your whole local network. Also Printer Applications to 
provide the driver for a legacy printer can be set to share the printer to the 
local network instead of only the local machine. The same is valid even for ipp-usb.

cupsEnumDests() is showing any IPP print destination, regardless of whether it 
is a network printer, a destination from a sharing server, an IPP-over-USB 
printer, a legacy printer set up with a Printer Application.

With IPP System Service you handle any IPP server. Get-Printers gives you all 
IPP destinations which this server provides. Works on a sharing server (shows 
the queues created on it), on a network multi-function printer (shows the print 
destination and depending on the device also the fax out destination), ... IPP 
System Service can especially also help you to group the print destinations 
correctly, especially if DNS-SD is turned off.

> 5. A normal driverless destination returned by cupsEnumDests() is
> already usable and does not require an Add operation.

Yes, that's it. The printer setup tool should provide buttons for opening the 
web admin interface and for default option settings (GUI for lpoptions).

> A queue on the
> sharing server should only be created if the user explicitly requests
> server-side sharing, relaying, accounting, access control, or similar
> policies, for example, when the user opens the Add Printer dialog and
> selects that printer.
> 

Yes, you use the sharing server by installing it and creating queues on it if 
you have special needs, which are not served by the network printers themselves.

You can have for example a sharing server in your local network which has a 
queue set up pointing to a printer in a VLAN, which your local network's DNS-SD 
does not see, but your DNS-SD sees your sharing server and so the printer gets 
available for everybody.

Or you can enforce page accounting by configuring the printer (via its web 
interface, do not forget to password-protect the web interface) to only accept 
jobs from the machine running your sharing server. On your sharing server create 
a queue pointing to your printer and having page accounting. Now users see only 
the queues of your sharing server and not the printer itself, forcing their jobs 
through the page accounting.

With DNS-SD in your local network turned off, you have to point to your sharing 
server in your profile, as you would also do for a regular network printer.

> 6. For an undiscovered driverless printer entered manually via IP
> address or hostname, printer setup tool should probe it using
> Get-Printer-Attributes and then create a queue for it on the sharing
> server.

Here the sharing server is not necessarily needed. To just overcome the fact 
that DNS-SD is not available or the printer is in a separate local network the 
sharing server is often overkill and adding the printer's URI to the profile 
does the trick already.

    Till

