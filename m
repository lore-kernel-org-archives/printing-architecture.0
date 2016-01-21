Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=zXfRHpF5FI3/0gkmN8YSo3sfGKONRZ80ZXr2U1B420I=;
	b=DTNCu3XQI8N3Pp4rXw3RVl7IWdiRHJcK3SeaOgY+pxRuVw4ITwzRZfPJDxy916ynO5
	Vr7sHat1NxbTzinubRr3fkODNk/wG1fsvAgjbk5N5t1a4uTMl53Rg5YyJ5uNrKkocPWf
	XuMES0vtMMEW7u8K63qBMI4tsxB7g+68QL58djIW8IOTrX6QMVkiOf/WYJW5QTPFjyoy
	uMM3MbjW+aR3gR9CI2Gr4QyNB3l8Q1A4BH17YE78FEqmPr2VGFbXrSaCUP1kTMGFVgqL
	me7qkGVGrGiwVTv8g0FltxtFOrzAjfdUwhbS3lfZm8XrdOeygPTpLFptURSBu5ZmnUEy
	Akqw==
References: <20160119220929.GR3427@var.home> <569EBD80.3040504@gmail.com>
	<20160120232807.GA465@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <56A031AC.3030801@gmail.com>
Date: Wed, 20 Jan 2016 23:17:32 -0200
MIME-Version: 1.0
In-Reply-To: <20160120232807.GA465@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] braille: Checking for tool
 presence
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 01/20/2016 09:28 PM, Samuel Thibault wrote:
> The attached patch makes cups-filter able to use lou_translate from
> liblouis-bin (and warn about that) when file2brl from liblouisutdml-bin
> is not available.
>
> Samuel
>

Thank you very much. I have committed it now to the upstream BZR 
repository and so it will be part of cups-filters 1.8.0.

    Till

