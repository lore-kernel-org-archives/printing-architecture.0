Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0722840156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B272F40131
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701195226; x=1701800026;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=s27hyMkmp6phkz9hVJq+EhL/qAF5j3VnfdTxny8yZ9Y=;
 b=eBqZJy8t60c1oi4ROcuZpmf2eCkGAkOiEJ/8JzcHMI4n9gGtpgMYLhClPFdQ3P2GZ9
 pp7z2kM8TToqHnkgeWMSg46Y4X3logdCqlwf9dH0QlON13G6DlhRNRbbNHrQz/LB+YlH
 7tXj3meBUDMC1P5jaP4omHasoCGLoCWVzxa/2htCGw3pqqS7b9tsfBinJkxOviBJSXh+
 TSTZ9iUO6K5FMqeF2jF4kdkQqyraY6BV22T0P36iw46YVlU6dYIQ1kdDQhpEZhQjo4Ax
 r9YKFSHWiiG/EINunsB2gUjf+vllLtyi3QFsA3oTYUqb4FhqYb4NycYaffm2Hq4AnMPH
 wDLA==
Message-ID: <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
Date: Tue, 28 Nov 2023 19:13:44 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] high delay while printing
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

On 28/11/2023 17:59, Stefan K wrote:
> Hello guys,
> 
> I hope someone can help me with my problem because I'm a little bit frustrated and I don't have absolutely no clue how to fix that.
> 
> I have a Debian 12 based print server running, all printers are connected via IPP which works so far but it takes a while if we start printing multiple pages and then for each page, it takes >15s for the next page. It doesn't matter if we print PDF or simple text files.
> 
> For me, it looks like that cups is waiting until the printer says "I'm done". According to the Documentation I tried ?waitjob=false&waitprinter=false at the end of the deviceURI and restart cups, but it's still the same. This happens on different types of printers eg. HP PageWide Pro 477dw MFP or Kyocera TASKalfa 4052ci
> 
> I can attach the error_log with debug information.
>

Please do so, and also attach the PPD file of the print queue (from 
/etc/cups/ppd/).

    Till
