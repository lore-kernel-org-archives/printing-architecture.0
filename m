Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=LFGlQPwLTvLbckX5KyPxJQ3ODEHsIN/OcMwp7PPgM5g=;
	b=ZRDvJ9j0jPXOumW5mpkz55JKp8/O28Etu/jctQcgbS8J68nkpe72ES2Alz5tqIgz0Q
	WM8ir1YueZBAkJPWPpwYO3b24HOdAqbWA7romCq5vLX7oWf85JV/2UObA+iI9f+5kst3
	11LN9X869cbLf51boGnRCLxsXWMHEoOvfy+bPrmpXEoGSJOZTkCzSLmyg4LQ4P7smKGI
	BcniMGhxt9AKLxC87em4WUmBhrgmEgSzV1hWmMWHewbFp5U5qnZXNoXF0kk1F82PO/56
	r6w457R0EUHd2jTXueTdxMDfp/0R6MpLJCZXAdRgSemL8GeMpULFYQAxgIfCLORy/w30
	HSwg==
Message-ID: <522E2609.20302@gmail.com>
Date: Mon, 09 Sep 2013 21:48:25 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <5228F4E5.8030203@gmail.com>
	<298AA5C8-4EA4-455C-B5DB-F665EEDF9B1C@apple.com>
In-Reply-To: <298AA5C8-4EA4-455C-B5DB-F665EEDF9B1C@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Fix for STR #4187 incomplete,
	missing part attached
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Didier Raboud <odyx@debian.org>

On 09/09/2013 04:40 PM, Michael Sweet wrote:
> Till,
> 
> This is already fixed for <rdar://problem/14484313>, which was created in response to the bug below back in July.  The 1.6.4 and 1.7.0 releases that are queued up both contain the fix.
> 
> (and FWIW, "n" needs to be ssize_t, not int...)

Thank you very much, Then I know that I can remove the patch when
switching to 1.7.0 final.

By the way, when do you plan to put out 1.7.0 and what are the show
stoppers still preventing you from putting it out?

   Till


