Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=tTCJs6682sFTcrQCqO8rLa2FZuMaC6eyVygbNYbbbT0=;
 b=E/QMyMkHqvObjzeFKDIkHJxdu+L4Grxs2BAdtAhkd90+pvtAQoVbJeIgCUWjeZMIYd
 Fe+fAV79i6xPQ2wr72zWlOEpFshLf5GLrQxATFAdxjXr7eNC+1Rx/A+sKHM4CXyabv6t
 HFg0LVzpNYtBglShH1FBD3PKcokB1qvWs5KjIpV5vIID/evYRXUGAYOJCKgMNph3GSqE
 k05b6UjDSthHQpwOD/eqiF5mRrhl1GWWQEi+bev04wWxq2hIbTYTMzc0lPnSnYAocd5f
 1/xq2Gj8W1bqtErn8Qf9CxMredTHRH8ujmj2W1Tv832urrtxbHjwxpvhtC2fr20b/IdN
 2Cbg==
Message-ID: <8db7ade3-a098-5ca1-d3b4-f1d2df02a8e6@gmail.com>
Date: Sun, 15 May 2022 16:40:13 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
 <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
 <917E2E0A-E1BA-4219-8C96-E0A31808BA11@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <917E2E0A-E1BA-4219-8C96-E0A31808BA11@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2.0
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

On 15/05/2022 15:57, Michael Sweet wrote:
> Till,
> 
> You need to create a .strings file of the form:
> 
>      "optionname" = "localized text";
>      "optionname.choicename" = "localized text";
> 
> Add these resources in your system callback with papplSystemAddStringsData/File.
> 

Can I set this dynamically while the Printer Application is running? 
This way I can create it when I set up a printer and read the PPD file I 
have assigned to it. I do not want to have to pre-build this for ~4000 
PPD files and this way blow up the size of the Snap. And there is also 
the function for users to load their own PostScript PPD files.

    Till
