Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=C71dUHEJkpGlfsuypmHwKrNiTsuc7bmPd9Lm6sfM9so=;
	b=iYzu3wIlUyutsv94faU+5w7W01gdg3KXiFG5AuFjFc+nkR5pqLDLjlHbfWD7kv4sRw
	DfVyBRe1lnhDEkaA6lk+7jZnLiraNocK44TxTXczCT0iRtN70t0m92qk8+TxXJ8409M+
	Mu43YZr8i6k2S74f9MyCTOw9GXaTqLPerM9nHZvKw48xMXOHn5R1taQL3iLe+XBf52B6
	tuirRUI1v7FpJG6/LcY6nuhOas6QMDGO7dzASwCt8BUgTGLdviHWp8F/G8Flv1DaJnSy
	NMuDagaDITesZfjSZR2KvqvYy3P5glh8Ob5TKK42gYRWj8GO3R/g8a1xr3lb/eUUPt7C
	eBxw==
Message-ID: <506B2483.7010703@gmail.com>
Date: Tue, 02 Oct 2012 19:29:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Dropped features in CUPS 1.6.x
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

This shows what functionality got dropped in CUPS 1.6.1:

https://bugzilla.novell.com/show_bug.cgi?id=735404

There is even some Perl program which emulates the broadcasts of CUPS 
1.5.x and older to get clients with the older CUPS automatically adding 
the printers.

    Till
