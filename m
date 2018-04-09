Return-Path: <0j4684@nottheoilrig.com>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nottheoilrig.com;
	s=3532ada; t=1523312808;
	bh=+vj0omOxcbefmGbwRv6MMoweHePBUhxc1RskYmJq2do=;
	h=From:Subject:To:Date:From;
	b=rSiQ9P/+Gj2vxNYZVE8gAsLToGEjmPNouiWwD+xVmTCsJm5WOjZ6k5V1Hp70xBln7
	Ngvlrlx9Dt4CZXmQEkVNgHW0O+CUH4R7+MT4Vp1XL1X7pVLxOZhX+IJpdk+2eKHNTr
	SSWJgJ2wbAFNCxyLTEl7WRjEB46dPfGx1uZMLb5Y=
From: Jack Bates <0j4684@nottheoilrig.com>
Message-ID: <3969c13a-72da-e298-931c-8a472a8b6730@nottheoilrig.com>
Date: Mon, 9 Apr 2018 15:26:48 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Native printers vs. remote print queues?
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

I'm struggling to understand the difference between remote printer 
queues, broadcast by CUPS (the current version) and native printers:

Remote printer queues are IPP and broadcast via DNS-SD.

I have a Canon MX922 that's also IPP and broadcasts via DNS-SD (see the 
avahi-browse output below).

However CUPS/cups-browsed make a distinction between remote printer 
queues and native printers? What's the material difference?

Thanks!

> + wlp3s0 IPv6 Canon MX920 series                            _printer._tcp        local
> + wlp3s0 IPv4 Canon MX920 series                            _printer._tcp        local
> + wlp3s0 IPv6 Canon MX920 series                            _http._tcp           local
> + wlp3s0 IPv4 Canon MX920 series                            _http._tcp           local
> + wlp3s0 IPv6 Canon MX920 series                            _scanner._tcp        local
> + wlp3s0 IPv4 Canon MX920 series                            _scanner._tcp        local
> + wlp3s0 IPv6 Canon MX920 series                            _ipp._tcp            local
> + wlp3s0 IPv4 Canon MX920 series                            _ipp._tcp            local
> + wlp3s0 IPv6 Canon MX920 series                            _canon-bjnp1._tcp    local
> + wlp3s0 IPv4 Canon MX920 series                            _canon-bjnp1._tcp    local
> = wlp3s0 IPv6 Canon MX920 series                            _printer._tcp        local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [515]
>    txt = ["mac=84:BA:3B:09:B1:9B" "Fax=F" "Scan=T" "Duplex=T" "Color=T" "UUID=00000000-0000-1000-8000-84BA3B09B19B" "usb_CMD=" "usb_MDL=MX920 series" "usb_MFG=Canon" "adminurl=http://09B19B000000.local." "pdl=application/octet-stream" "product=(Canon MX920 series)" "ty=Canon MX920 series" "priority=60" "qtotal=1" "note=" "rp=auto" "txtvers=1"]
> = wlp3s0 IPv4 Canon MX920 series                            _printer._tcp        local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [515]
>    txt = ["mac=84:BA:3B:09:B1:9B" "Fax=F" "Scan=T" "Duplex=T" "Color=T" "UUID=00000000-0000-1000-8000-84BA3B09B19B" "usb_CMD=" "usb_MDL=MX920 series" "usb_MFG=Canon" "adminurl=http://09B19B000000.local." "pdl=application/octet-stream" "product=(Canon MX920 series)" "ty=Canon MX920 series" "priority=60" "qtotal=1" "note=" "rp=auto" "txtvers=1"]
> = wlp3s0 IPv6 Canon MX920 series                            _http._tcp           local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [80]
>    txt = ["mac=84:BA:3B:09:B1:9B" "txtvers=1"]
> = wlp3s0 IPv4 Canon MX920 series                            _http._tcp           local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [80]
>    txt = ["mac=84:BA:3B:09:B1:9B" "txtvers=1"]
> = wlp3s0 IPv6 Canon MX920 series                            _scanner._tcp        local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [8612]
>    txt = ["mac=84:BA:3B:09:B1:9B" "scannerAvailable=1" "uuid=546BB8" "mdl=MX920 series" "mfg=Canon" "ty=Canon MX920 series" "adminurl=http://09B19B000000.local." "txtvers=1"]
> = wlp3s0 IPv4 Canon MX920 series                            _scanner._tcp        local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [8612]
>    txt = ["mac=84:BA:3B:09:B1:9B" "scannerAvailable=1" "uuid=546BB8" "mdl=MX920 series" "mfg=Canon" "ty=Canon MX920 series" "adminurl=http://09B19B000000.local." "txtvers=1"]
> = wlp3s0 IPv6 Canon MX920 series                            _ipp._tcp            local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [631]
>    txt = ["mac=84:BA:3B:09:B1:9B" "Fax=F" "Scan=T" "Duplex=T" "Color=T" "URF=V1.2,CP1,PQ4-5,RS600,SRGB24,W8,OB9,OFU0,DM3,IS11-13" "UUID=00000000-0000-1000-8000-84BA3B09B19B" "usb_CMD=URF" "usb_MDL=MX920 series" "usb_MFG=Canon" "adminurl=http://09B19B000000.local./mainmenu.html" "pdl=application/octet-stream,image/urf,image/jpeg" "product=(Canon MX920 series)" "ty=Canon MX920 series" "priority=15" "qtotal=1" "note=" "rp=ipp/print" "txtvers=1"]
> = wlp3s0 IPv4 Canon MX920 series                            _ipp._tcp            local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [631]
>    txt = ["mac=84:BA:3B:09:B1:9B" "Fax=F" "Scan=T" "Duplex=T" "Color=T" "URF=V1.2,CP1,PQ4-5,RS600,SRGB24,W8,OB9,OFU0,DM3,IS11-13" "UUID=00000000-0000-1000-8000-84BA3B09B19B" "usb_CMD=URF" "usb_MDL=MX920 series" "usb_MFG=Canon" "adminurl=http://09B19B000000.local./mainmenu.html" "pdl=application/octet-stream,image/urf,image/jpeg" "product=(Canon MX920 series)" "ty=Canon MX920 series" "priority=15" "qtotal=1" "note=" "rp=ipp/print" "txtvers=1"]
> = wlp3s0 IPv6 Canon MX920 series                            _canon-bjnp1._tcp    local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [8611]
>    txt = ["mac=84:BA:3B:09:B1:9B" "Fax=F" "Scan=T" "Duplex=T" "Color=T" "UUID=00000000-0000-1000-8000-84BA3B09B19B" "usb_CMD=" "usb_MDL=MX920 series" "usb_MFG=Canon" "adminurl=http://09B19B000000.local." "pdl=application/octet-stream" "product=(Canon MX920 series)" "ty=Canon MX920 series" "priority=20" "qtotal=1" "note=" "rp=auto" "txtvers=1"]
> = wlp3s0 IPv4 Canon MX920 series                            _canon-bjnp1._tcp    local
>    hostname = [09B19B000000.local]
>    address = [192.168.1.108]
>    port = [8611]
>    txt = ["mac=84:BA:3B:09:B1:9B" "Fax=F" "Scan=T" "Duplex=T" "Color=T" "UUID=00000000-0000-1000-8000-84BA3B09B19B" "usb_CMD=" "usb_MDL=MX920 series" "usb_MFG=Canon" "adminurl=http://09B19B000000.local." "pdl=application/octet-stream" "product=(Canon MX920 series)" "ty=Canon MX920 series" "priority=20" "qtotal=1" "note=" "rp=auto" "txtvers=1"]
