Return-Path: <jpopelka@redhat.com>
Message-ID: <4FC4F3FD.6080605@redhat.com>
Date: Tue, 29 May 2012 18:06:21 +0200
From: Jiri Popelka <jpopelka@redhat.com>
MIME-Version: 1.0
References: <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp>
	<1330690418.32498.29.camel@rubik>
	<20120303.113354.329374074.sho@bbr.jp>
	<1330949656.9812.8.camel@rubik> <4F54D580.7090608@gmail.com>
In-Reply-To: <4F54D580.7090608@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, sho@bbr.jp
Cc: printing-architecture@lists.linux-foundation.org

Otani-san, Till,

compiling cups-filters 1.0.18 I see
...
checking UGooString.h usability... no
checking UGooString.h presence... no
checking for UGooString.h... no
...

Trying to discover what's this UGooString and why it's not on my system
I found out that it used to be part of poppler but was definitelly 
removed [1] in version 0.6.0. pdftopdf still uses it and has it's own 
copy which it uses when there's no UGooString found on the system.

It seem's [2] that the last known version (before it was removed) was 
quite different than what's been in pdftopdf's UGooString.[h|cxx].
I have no idea which version is newer but it's worth checking whether
the [2] version doesn't fix any bugs.

Anyway, I think that the checking for system wide UGooString.h when
building pdftopdf could be removed because I don't think anybody uses
poppler < 0.6.0. It just confuses people (like me).


[1] 
http://cgit.freedesktop.org/poppler/poppler/commit/?id=bf7e0e980bf29994021cb1228f89f582adddf284

[2] 
http://cgit.freedesktop.org/poppler/poppler/tree/poppler/UGooString.cc?id=ba74bb3b0632593d1937911d73709fc870480efd


--
Jiri

On 03/05/2012 04:02 PM, Till Kamppeter wrote:
>
> Otani-san, for the time being until we succeed to get the Poppler
> developers to expose the additional APIs for implementing pdftopdf and
> pdftoopvp, can you update the duplictaed code to the newest file
> versions available, so that the known vulnerabilities are fixed? Thanks
> in advance.
