Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=c4sTlolai/ezpch2HtprNtJyX2qxIQaSTkDHqkz7j0g=;
	b=iI4LePh7R9VEIZQ7oF5AuNQ+Ul/JitE6IsyRj9ixHVKHmqQdI6Xkb0bUUAVuBfFjK6
	hqWCY4Ynq34x6FxEqhOFqIUb8OXFdaiQ4yNVC9VhWYVzflEgRrWjzPeUDcTqNHfrKDg2
	QyK9i/U2LreTJb5hpREREg7dyrF0QnsZ/ZhWaID+AUvEQ35Po1qCvc9ryLSlRJ4iBWhf
	6njkLalENrMpFgB9D4erkNUK02VdsrxIZ5xhb+UFGwpRzUp7TwRj7o15lnDtORgurmfH
	f1vpMEwRyfXKMObd9wg/S1vGMgxpaKJkT+AJsSQ9J4alUE4kzFHwF7/rVaCSoFwSfwUA
	Vtrw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
Date: Wed, 21 Nov 2018 23:26:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] IPP-over-USB and Printer Applications:
 DNS-SD-advertise localhost:PORT a security problem?
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
Cc: David Valleau <valleau@chromium.org>, Sean Kau <skau@chromium.org>

Hi,

I talked with Sean Kau and David Valleau from Chrome OS (CCed) about the 
implementation of IPP-over-USB with ippusbxd in Chrome OS. Sean told

----------
Using DNS-SD on localhost doesn't fit our security model as we don't 
want to allow arbitrary processes to talk to each other.
----------

This would mean that we cannot implement IPP-over-USB and Printer 
Applications as innitially thought out. They are supposed to make the 
printer available as

ipp://localhost:PORT/ipp/print

with PORT varying so that there can be several devices connected to the 
same machine (and CUPS running in addition). For CUPS (or the printing 
system in general) automatically discovering the devices and creating 
print queues the Printer Applications (and ippusbxd) are supposed to 
advertise themselves via DNS-SD.

This would mean (local-only) advertising of localhost via DNS-SD, which 
Sean considers a security problem. Is this actually a security problem? 
If so, how should Printer Applications (and ippusbxd) actually work?

    Till
