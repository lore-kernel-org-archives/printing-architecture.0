Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=hJULEUU/Od2kD3ULxzXZMPiMMSOTs5Fo8JEMH5WmeUY=;
	b=F6JlyXHdXm9iAS8TzL/lBBxcePoysTEfTPQRoOsVIMryM39r62ltqkLG21/TUX0Za7
	z3/k721WS+xQ03jXSeYVbqc/w+VmV+ZdXBHKUNUvpnjPY7zdNEE+1z/gnS0Eh6vLeYEH
	KY0/UolAmS98ff1ah3EGnBO7/OzLGTWrz1Ez/57jR4l9ik4UAlx9dV50z9WOl2IVtj8E
	bFXpk+6F4EhMksdQrH1jMLc/D3BGLM9439AHQKFWc+XQvy+Jivg18AL8E8w9+9PdEKqf
	mzCxabOWNI942XfZiuHd2DXsgc0EHhQDukrcMOybfbuLVNxFmqCBuVo9GArEWdyilN3L
	v/zg==
Message-ID: <5550D4B1.8030508@gmail.com>
Date: Mon, 11 May 2015 13:11:29 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] IPP(-over-USB) scanners - How to
	distinguish them from printers
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
Cc: "Kumar, Sanjay" <sanjay.kumar14@hp.com>

Hi,

The HPLIP developers have found certain stand-alone scanners (not MF 
devices) from HP for which on Ubuntu a CUPS queue got auto-generated. 
Under their USB interfaces there are IPP interfaces suggesting that 
these are IPP-over-USB scanners. Is there are way to distinguish IPP 
printers from IPP scanners easily?

    Till
