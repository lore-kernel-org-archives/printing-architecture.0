Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=cRvWWt3VPZhwKRrmsMNY6P/0VDq3/Tm6afHnsGqd+so=;
	b=LiDDBchiw7yS/S1jwE9A6jyCsjFG7Nu0wXwFTyBWvtEHjE8c2zIKhW5S/F+cWTLhPx
	i1bUoinViQBnKijZuVHGZhUqGCDPE7jgSxtjvHbLANFG77moVECgouXT3f+bv75xl3fk
	Hr1ebsbdImYocMN7Awrjmn7XprHRV4n/XGfC7jnAJa0R1Qk/TI5yCduruuoqGv5Dnj65
	+MrsbEG6R8paEid5+eJAOyWLWVEI/s5F/KIeXf/O3rKyd26uKCvSgMYwWKYhxHf9id8e
	u0g1g8713HXBHSfy20bfTRluPM90QZMuggtckB9k/EhRc8vW+Tc+TZCQtMtG8nQn5jh/
	TCAA==
References: <55F30A6F.5000403@gmail.com> <55F8877B.9050806@gmail.com>
	<FB1D5086-D828-40DE-AD16-85293A1C66C4@hp.com>
	<55F9C459.4080401@gmail.com> <56006057.30600@gmail.com>
	<36CB0E79-9A2E-44E4-AA39-A04101623303@hp.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <564F7BB7.8080404@gmail.com>
Date: Fri, 20 Nov 2015 17:59:51 -0200
MIME-Version: 1.0
In-Reply-To: <36CB0E79-9A2E-44E4-AA39-A04101623303@hp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [cups-devel] Communication between IPP
 printer and "ipp" CUPS backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Kennedy, Smith (Wireless Architect)" <smith.kennedy@hp.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Daniel Dressler <danieru.dressler@gmail.com>, "cups-devel@cups.org" <cups-devel@cups.org>

Hi,

did you hear back something of the firmware people? In the meantime I 
have worked on ippusbxd, not being able to solve the problem, but fixing 
and improving several things. See

https://github.com/tillkamppeter/ippusbxd/commits/master

Perhaps these last changes could help the firmware developers.

    Till


On 09/21/2015 06:17 PM, Kennedy, Smith (Wireless Architect) wrote:
> Hi Till,
>
> I've asked some of the firmware folks to take a look at it.  (I don't work in printer firmware.)  When I've heard back I'll let you know.
>
> Thanks for your patience,
> Smith

