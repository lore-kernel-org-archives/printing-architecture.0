Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1483463119;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pCnQ0F70HTnNRjdQZsW+Reakd2hbrsGidlHa7jhjdkM=;
	b=wkLXHs22Xb30nrFhPiqnCBHX7KUKd4kRAyTMM6PjCXo2CeMB/h15/MdL+WoF/z17
	qZS1vgnZmn+GxcjtM/J3H9+PSHCdYzQwnRUsGDXRax86jZ2Yjd5sFZcanP3WbsUr
	xXAkymnw2UsGsUNzWZgi9t/vcpK9b7g5h7OQMZFdWBbfpeZqDZC7zvz4Na9G2Ljn
	HQFx4MtDIsxYztnFZry5dKsKjqyeA6L8qYajMDl5ZVWY00OEslr4F0H8byKskxX6
	budOlS4uwJvuLUdW8Et7+Y522somBaDTSk3dfzE/O77X6a+hexMajp9DmJToz/xb
	JRISj+5wt4IcpQLh0L3AuA==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_S+5i8x5uiYTasKZAclx4Ww)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <589105e7-3986-7904-2344-9e8ee9f45974@gmail.com>
Date: Tue, 03 Jan 2017 12:05:15 -0500
Message-id: <3CC2C94E-02C3-471E-B592-C72270678C18@apple.com>
References: <c8eab08c-255b-c00d-a4dd-320f362a04a3@gmail.com>
	<A18DDFC9-8572-442A-ABFF-60FFA167E2D3@apple.com>
	<589105e7-3986-7904-2344-9e8ee9f45974@gmail.com>
Subject: Re: [Printing-architecture] IPP Scanning: GSoC project for a SANE
 module for IPP-based driverless scanning?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_S+5i8x5uiYTasKZAclx4Ww)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till,

We won't be adding IPP Scan support to ippserver (or anything in CUPS for that matter).  Feel free to file a feature request for the PWG's "ippsample" project at:

    https://github.com/istopwg/ippsample/issues <https://github.com/istopwg/ippsample/issues>

but at this point I can say we don't have the resources to develop it...


> On Jan 3, 2017, at 11:49 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> [ Posting back to printing-architecture list ]
> 
> On 01/03/2017 02:31 PM, Michael Sweet wrote:
>>> <mailto:till.kamppeter@gmail.com>> wrote:
> 
> [...]
> 
>>> Is the IPP scanning standard already an approved standard?
>> 
>> Yes, otherwise it wouldn't have been assigned a PWG standard number...
>> 
> 
> OK. Thanks.
> 
>>> Are there already scanners or multi-function printers which do IPP
>>> scanning?
>> 
>> Nobody has come forward to report on this, and I haven't seen any in the
>> wild.  It was prototyped by Xerox...
>> 
> 
> Let's hope they will come out with devices any time soon.
> 
>>> Is there a list of models?
>>> 
>>> Is there some free software which emulates an IPP scanner (like the
>>> ippserver utility of CUPS emulates an IPP Everywhere printer)?
>> 
>> Not at present.
>> 
> 
> So a feature request for CUPS' "ippserver" utility would be to make it emulate a multi-function printer with scanner (possibility to activate/deactivate the print and scan functions of the virtual IPP device by command line options). One could have a directory with printable files on the machine running ippserver and if a client scans it gets files from this directory.
> 
>   Till
> 
> 

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_S+5i8x5uiYTasKZAclx4Ww)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Till,<div class=3D""><br class=3D""></div><div class=3D"">We =
won't be adding IPP Scan support to ippserver (or anything in CUPS for =
that matter). &nbsp;Feel free to file a feature request for the PWG's =
"ippsample" project at:</div><div class=3D""><br class=3D""></div><div =
class=3D"">&nbsp; &nbsp; <a =
href=3D"https://github.com/istopwg/ippsample/issues" =
class=3D"">https://github.com/istopwg/ippsample/issues</a></div><div =
class=3D""><br class=3D""></div><div class=3D"">but at this point I can =
say we don't have the resources to develop it...</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Jan 3, 2017, at 11:49 AM, =
Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">till.kamppeter@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">[ =
Posting back to printing-architecture list ]<br class=3D""><br =
class=3D"">On 01/03/2017 02:31 PM, Michael Sweet wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><blockquote type=3D"cite" =
class=3D"">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">mailto:till.kamppeter@gmail.com</a>&gt;&gt; wrote:<br =
class=3D""></blockquote></blockquote><br class=3D"">[...]<br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><blockquote=
 type=3D"cite" class=3D"">Is the IPP scanning standard already an =
approved standard?<br class=3D""></blockquote><br class=3D"">Yes, =
otherwise it wouldn't have been assigned a PWG standard number...<br =
class=3D""><br class=3D""></blockquote><br class=3D"">OK. Thanks.<br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><blockquote=
 type=3D"cite" class=3D"">Are there already scanners or multi-function =
printers which do IPP<br class=3D"">scanning?<br =
class=3D""></blockquote><br class=3D"">Nobody has come forward to report =
on this, and I haven't seen any in the<br class=3D"">wild. &nbsp;It was =
prototyped by Xerox...<br class=3D""><br class=3D""></blockquote><br =
class=3D"">Let's hope they will come out with devices any time soon.<br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><blockquote=
 type=3D"cite" class=3D"">Is there a list of models?<br class=3D""><br =
class=3D"">Is there some free software which emulates an IPP scanner =
(like the<br class=3D"">ippserver utility of CUPS emulates an IPP =
Everywhere printer)?<br class=3D""></blockquote><br class=3D"">Not at =
present.<br class=3D""><br class=3D""></blockquote><br class=3D"">So a =
feature request for CUPS' "ippserver" utility would be to make it =
emulate a multi-function printer with scanner (possibility to =
activate/deactivate the print and scan functions of the virtual IPP =
device by command line options). One could have a directory with =
printable files on the machine running ippserver and if a client scans =
it gets files from this directory.<br class=3D""><br class=3D""> =
&nbsp;&nbsp;Till<br class=3D""><br class=3D""><br =
class=3D""></div></div></blockquote></div><br class=3D""><div class=3D"">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing =
System&nbsp;Engineer</div></span></div></span>
</div>
<br class=3D""></div></body></html>=

--Boundary_(ID_S+5i8x5uiYTasKZAclx4Ww)--
