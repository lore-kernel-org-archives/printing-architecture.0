Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634120931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1f1yLXowD2RNBaD+03htK4cv7Sqoz/qhVdd+U5Qu3u4=;
 b=fVcT0/+tdgnTtzp2BX6obrEQRagx2hSjHalTauux/FJs4ZktTEvklLa75wgFtkUJzBLQ2B
 IuGjHkdAVbQPvW6kmiT6sXyDDTO0RsOo0TtxH0yuKRktZtq54LTbeH5JW5+W+UNpdBRbcS
 Hag/FtGahW+FG5vs/tp5ZhJoL3L9FqQ=
Message-ID: <4f316230-28ce-2739-ff36-9b7375b05ac7@redhat.com>
Date: Wed, 13 Oct 2021 12:28:44 +0200
MIME-Version: 1.0
References: <f92096c7-c6ab-631d-df6d-0d1400999dc9@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <f92096c7-c6ab-631d-df6d-0d1400999dc9@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OpenPrinting News
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

Hi Till,

thank you for the news!

A note regarding the news:

Ad GTK temp queues and cups-browsed usefulness - the feature is 
implemented only for GTK3+, so apps with older GTKs still needs a 
permanent queue for local printer (f.e. gimp and thunderbird). 
Additionally, Brian Potkin from Debian found out some problems with 
ipp-usb supported devices [1], does it work in GTK3 apps in Ubuntu?

And some apps (f.e. firefox) started to use their own print dialog 
without temp queue support [2], so cups-browsed is still needed for them 
and Qt...

Additionally, cups-browsed still is the only one automatic way how to 
get printers from non-local server, until I'll get a time to get my 
hands on CUPS profiles, together with load balancing, clustering and 
high availability features of cups-browsed.


Best regards,


Zdenek


[1] https://gitlab.gnome.org/GNOME/gtk/-/issues/4106

[2] https://bugzilla.redhat.com/show_bug.cgi?id=1983403

On 10/13/21 00:09, Till Kamppeter wrote:
> Hi,
>
> I have posted the newest development of the last month on our web site 
> now.
>
> Here we go:
>
> https://openprinting.github.io/OpenPrinting-News-October-2021/
>
>    Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
-- 
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C

