Message-ID: <487B7439.6060405@gmail.com>
Date: Mon, 14 Jul 2008 17:43:53 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <485AD507.4050300@gmail.com> <20080714145107.GC31522@suse.de>
In-Reply-To: <20080714145107.GC31522@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Printer setup tools: Automatically
 choose the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Klaus Singvogel <kssingvo@suse.de>, printing-architecture@lists.linux-foundation.org, printing-foomatic@lists.linux-foundation.org, Tim Waugh <twaugh@redhat.com>, David Suffield <suffield@hp.com>, shiyun.yie@hp.com, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Printing-japan <printing-japan@lists.linux-foundation.org>

Klaus Singvogel wrote:
> Till,
> 
> Till Kamppeter wrote:
> [...]
>> *cupsReplaceURI: "usb://HP/LaserJet(_|%20)42\d\d hp:/usb/HP_LaserJet_42\d\d"
>>
>> Here we do not use model info from the "lpinfo -l -v" output. The 
>> printer setup tool should match the first regexp against the user-chosen 
>> URI and the search the "lpinfo -v" output for an URI matching the second 
>> regexp.
> 
> This is not regex, it's perl extended regex you're using here. Maybe
> we run into trouble, if we extend CUPS tools by perl too.
> 
> We might want to use POSIX regex please, as defined in regex(7)?
>

Sorry for giving a bad example. All this was only a suggestion and not a 
spec. But I hope it shows the idea.

> I think, the rest of the discussion has to be answered by the author
> of "lpinfo" (= CUPS team). It's fine with me, if we extend CUPS in
> such a way.

They answered already in for them there should be only one backend per 
printer. They are working with HP now on making the "hp" backend 
unnecessary.

    Till

