Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=2Y5CSQADk87Syvi4Yy9Ti1wENAw9TO2JhzGYfyI/0Ws=;
	b=IXpQ9B3masC9VJfOM4G45zNV4NSH+ycnv4/8gZrvXDmIowv7HXIYxJxhp2+ChK8s7y
	tkF5WwZlUp/ZMbzT7r2zit7y1SbmO3KktnNSZT2OhRcO4GbLIzoukEhWuu2OGM8l2pqZ
	rpKbCnxFChSLDbPLwhzVC8EjSGFhIEqfimlOfEgnWMvxmXdySw2snrhMRD9XtXxrnX8Y
	y/ufV2Oa3WCdwFXzFoTW+KNEjje5oFtmEouIaPbRaPGZKronlXpQDbgQgL7HpaMxZGzt
	TY3gmJxckE5kZWQsNAFj33zNKGE8156VhagBrESCWf9kqZr7rQqUlmewSo4Vp7HQHiCF
	7GYg==
Message-ID: <52A0CCDB.3020503@gmail.com>
Date: Thu, 05 Dec 2013 19:58:35 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <52A0C52B.5060707@gmail.com>
	<E3EE29B3-EDB7-4452-8803-9D150FBB3554@apple.com>
In-Reply-To: <E3EE29B3-EDB7-4452-8803-9D150FBB3554@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] cupsd crashes when Avahi is used
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Thanks, I have added your answer to the bug report now.

   Till


On 12/05/2013 07:48 PM, Michael Sweet wrote:
> Till,
> 
> Based on the bug report, it sounds like this is an internal bug of Avahi.
> 
> The fact that a production build of a library is forcing an assert is troubling - it doesn't allow the caller to perform any recovery and IMHO makes Avahi totally unsuited to production use at all.
> 
> The fix on the CUPS side is easy - bundle mDNSResponder (Apache license) with Ubuntu and build CUPS against it.  For Avahi, we'll need to get someone from Avahi to look at the issue...
> 
> 
> On Dec 5, 2013, at 1:25 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
>> Hi,
>>
>> at Ubuntu many users (> 2000) hit the following bug:
>>
>> https://bugs.launchpad.net/ubuntu/+source/avahi/+bug/1131854
>>
>> It is an assert failure in a function of the Avahi library which makes
>> the CUPS daemon abort, naturally only if CUPS uses Avahi which is the
>> case in Ubuntu.
>>
>> The Ubuntu patches on CUPS do not change anything in the Avahi support,
>> so the problem most probably also occurs with other distributions.
>>
>> Anyone has already observed this problem? Can it be a CUPS bug? If it is
>> an Avahi bug, is it already known?
>>
>>   Till
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 

