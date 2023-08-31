Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7232741913
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FFD841910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693519443; x=1694124243;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mLjH6o7mv5zhANDpFjmlSvu/8Xv/hrNHfsdf6rA6oHo=;
 b=Vn/7u/i+AerZyCLvtt3GImbRTsxVLHdD6I2R5YRRxhNXEO48aJGclAbch7D5DC90Ud
 92Shnac5rnuWUuCKnvpuwAiuMzLVBv6GjP5RLMiNsULjyRd+pURZuISaalIPy/ai/edU
 1RUQggi1mA1N7FaiE9/Y8zY3E5fUhWhO0dRW8kiVDKkFCyRxpBL7mdvxCmOXWRo72Dcm
 5X+rX29g1XRR4vJSzDUQTi//A7+aM0DL+hIKHs6HPHV3S61iBYLlI0lhLC6mQahLjaSo
 iaGK+/Q+S3gVzm6BT76qPt5NEyIC6Jfp7G1ZghspEOc53FW+hYEFmlliNjrgshlZkibl
 Fkvg==
Message-ID: <9c94f703-0821-3017-1689-d22bb6ecb77d@gmail.com>
Date: Fri, 1 Sep 2023 00:04:01 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <928cbe8b-1c02-2593-f446-6141631490a9@gmail.com>
 <877cpbjimp.fsf@gnu.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <877cpbjimp.fsf@gnu.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OpenPrinting - Documentation urgently
	needed!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Amin Bandali <bandali@canonical.com>
Cc: Heather Ellsworth <hellsworth@protonmail.com>, Sahil Arora <sahilarora.535@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Monica Madon <mayhens@gmail.com>, Mohit Verma <b20215@students.iitmandi.ac.in>

On 31/08/2023 18:12, Amin Bandali wrote:
> Hi Till, (all,)
> 
> I'm interested in helping out with the docs, particularly developer
> docs.  I recently asked my manager if I could spend some of my time
> helping with this, and essentially he said yes, depending on the
> workload and the priority of my other tasks at hand at a given time.
> Later on I hope to spend time on this outside work as well, as soon as
> my schedule opens up a bit more.
> 
> I'll start by taking some time to skim through the library functions
> for the libraries Till mentioned, and try to get a lay of the land.
> If folks have any suggestions or tips about which library and/or what
> modules specifically may be good places to start, I'd appreciate the
> advice.

Amin, we have 4 principal libraries which need developer documentation 
and you are highly welcome to work on that:

- libcupsfilters
- libppd
- cpdb-libs
- pappl-retrofit

Note that on Michael Sweet's projects (cups, libcups, pappl) Mike is 
already taking care of the documentation by himself.

To simplify our work at OpenPrinting we want to do all the documentation 
with the same tools, and as Michael has started with his codedoc tool on 
his own projects we want to adopt it for the rest of our libraries where 
I am leading the development.

See the sessions/slides of last year's OpenPrinting micro-conference 
which I have cited in my initial e-mail.

So your work would be:

1. Check the header and parameter comments of all API functions whethet 
they are actually there and also are in correct sysntax
2. Run the codedoc utility over the source code base and check whether 
everything appears correctly in the browser.
3. Add/complete the documentation which needs to be done manaually 
(Introduction, ...)

The priorities are:

1. cpdb-libs
    Needed for desktop integration. All print dialogs should use CPDB

2. libcupsfilters
    Needed for creation of printer and scanner drivers.

3. pappl-retrofit
    Needed for turning legacy CUPS printer drivers and SANE scanner
    drivers into Printer/Scanner Applications

4. libppd
    Usually used by pappl-retrofit and legacy CUPS filters (cups-filters)
    and not directly by developers, but for sake of completeness we
    should document it, too.

I hope this is sufficient info to get started. Do not hesitate to ask me 
if you have questions.

    Till
