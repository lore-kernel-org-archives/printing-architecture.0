Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
 s=ore17; t=1652731385;
 bh=pxNESO77xESHYIIORIrjVzLjvCtkP2hO0zjVs7/I/Dg=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=VlQW5dhEXXKXR35VZUGKY83glk+AtWcKS8s4ANn9ht9sWSrlYZuqIabJ2jzxFW9aS
 l/ENl1hfVYcemtg1WPlNhr22L2gMYp9eeb4hfWWrsUxC57l7nfnXTm5Ti2WGqCVwhl
 +vVwNW+HFrH1/JyeD3gD4wir743hkNH/okvfc4BMT8dTimP/zA2RDFuj9IzmcudayO
 1V8L3npSsGZLt/ZdnHBppN9H6+HFUwxkuzHq6I1BP6DkKLg8U8bjcDeGd3yGEjJFlD
 H74xObgDeNvrpXmmUaZFu+cqTYh7bZst4yoXIS8m9DyPvOcS1xUFE3miDbuDDjq2kA
 g7LNJgUn1YUgg==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <E70BA899-B53D-454A-851C-9A182ADE0FCC@msweet.org> (Michael Sweet
 via Printing-architecture's message of "Mon, 16 May 2022 13:39:21
 -0400")
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <m3y1z1o89y.fsf@carbon.jhcloos.org>
 <FB549E97-8B2E-45A1-9550-684DC2A499B7@msweet.org>
 <m3sfp9o0xu.fsf@carbon.jhcloos.org>
 <E70BA899-B53D-454A-851C-9A182ADE0FCC@msweet.org>
Date: Mon, 16 May 2022 16:02:58 -0400
Message-ID: <m3ilq5nt3h.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
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
To: Michael Sweet via Printing-architecture <printing-architecture@lists.linux-foundation.org>
Cc: Till Kamppeter <till.kamppeter@gmail.com>

>>>>> "MS" == Michael Sweet via Printing-architecture <printing-architecture@lists.linux-foundation.org> writes:

MS> It looks like the change was made in CUPS 2.2.7 to use the new name.
MS> I've pushed a workaround to the PAPPL repository - please let me know
MS> whether that fixes things for you.

cups 2.4.0_pre refused to emergem but 2.3.3_p2-r3 succeeded.

before that, there was still another failure due to the older cups.

but pappl compiles fine with 2.3.3_p2-r3 installed.

on all of the boxen snmp:// fails even though socket:// uses snmp to get
its data.

strace shoes that it succeeds in gettig snmp date, but it prints
nothing.

the strace output ends with:

recvfrom(3, "00\2\1\0\4\6public\242#\2\1\4\2\1\0\2\1\0000\0300\26\6\20+\6\1\4\1\225\v\1\2\1\3\1\1\6\1\1\2\2\2\3", 1472, 0, {sa_family=AF_INET, sin_port=htons(161), sin_addr=inet_addr("192.168.1.5")}, [256 => 16]) = 50
pselect6(4, [3], NULL, NULL, {tv_sec=2, tv_nsec=0}, NULL) = 1 (in [3], left {tv_sec=1, tv_nsec=990743222})
recvfrom(3, "0+\2\1\0\4\6public\242\36\2\1\4\2\1\2\2\1\0010\0230\21\6\r+\6\1\4\1\205+\6\3\1\4\21\0\5\0", 1472, 0, {sa_family=AF_INET, sin_port=htons(161), sin_addr=inet_addr("192.168.1.5")}, [256 => 16]) = 45
pselect6(4, [3], NULL, NULL, {tv_sec=2, tv_nsec=0}, NULL) = 0 (Timeout)
pselect6(4, [3], NULL, NULL, {tv_sec=2, tv_nsec=0}, NULL) = 0 (Timeout)
close(3)                                = 0
exit_group(1)                           = ?
+++ exited with 1 +++

(that trace is from my magicolor.  my cheap inkjet shows a similar end.)

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
