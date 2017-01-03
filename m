Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=N5z5ZfQ7GaVGaz6ui+DHFI79S0Sm8o3AHHwgQQLuYKQ=;
	b=BIeXUUciPzLXeeqEoayC18fyuaTwLJJro4eSdJ5AkDdP/VrSQ3bAAVamEq70IaKWEH
	sR63qoWC2s49TCjP3dwNN/1+pdn5uZBCbiL/fPbS+q7xQxfGP93TPXly1ZdBu4Tv0KvH
	pPrIqJp6c7aNagjYtl1TyO9XdSbPU1cMRvdP69CltmfhM6Cttt2UN7QqSlUYJaIqNdwV
	svk8nkqiIhc6oyWYQwB9PmytIfqxe8eL4Q82g0yjTxkPEmu6Hgd9+sbFn/ETx6FvGxiH
	jYaJgmI405XpMeKApcBlv4K3b842aIbVg44lF2TU5dYa4A/moyXgCP9FijMVHJI8NAEO
	EWRQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <c8eab08c-255b-c00d-a4dd-320f362a04a3@gmail.com>
Date: Tue, 3 Jan 2017 14:26:09 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] IPP Scanning: GSoC project for a SANE
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

a great, driverless 2017 to everyone, everywhere!

After having done a lot of work on driverless (IPP Everywhere, AirPrint) 
printing with cups-filters and ippusbxd, especially to make both IPP 
network printers and IPP-over-USB printers get set up automatically with 
an auto-generated PPD file, I was also thinking about driverless scanning.

So I looked around on the PWG web site and found the document about IPP 
scanning:

http://ftp.pwg.org/pub/pwg/candidates/cs-ippscan10-20140918-5100.17.pdf

and this looks promising, information based on which one could write a 
SANE driver. And at SANE no one tried up to now:

http://www.sane-project.org/

I think about putting up a GSoC project for that.

As my driverless-printing-capable IPP printers do not seem to offer IPP 
scanning, I want to know how far we are with IPP scanning currently.

Is the IPP scanning standard already an approved standard?

Are there already scanners or multi-function printers which do IPP scanning?

Is there a list of models?

Is there some free software which emulates an IPP scanner (like the 
ippserver utility of CUPS emulates an IPP Everywhere printer)?

    Till
