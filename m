Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=rNH29r3pi0u/E+2vY7Juc7SrQWKFH0+tkN0B9Febf2Y=;
	b=Pr8jyH74YiZIgHQQHStg4GQJle5X36Nv/fOC/eGhhZ6OfQQ0rJyH7BN2nBxfun7VRU
	mrfYTUwjkOMh9ru/eeY4ux+h3EhKdou7qTs1zefaC99PxxJwLlPAzUTg0s1WLTnhIhQX
	5mFMt7dlu0CMVKAXe6xw93cmsHaAeReLq7pV4uwQEQ0RkuhwTrdfgdp//JtBduBGIRE+
	dKGKkJw5kkQx5XaGynOJqIV3+ylkm0W43gjkuiRfi/y9YKaBS/V/tvvaYTD00gJG/nTW
	GjY93eZy945oX5gt4V5lzbquU6xajhGsCapn4GYH7WPPTz/Sa4qFFQjjtcnmaYoY5TA7
	yi3w==
Message-ID: <54C65044.7030501@gmail.com>
Date: Mon, 26 Jan 2015 12:33:40 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Projects for GSoC 2015: Implementing PWG
	standards
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Printing-architecture@lists.linux-foundation.org

Hi,

I would like to open some student projects implementing PWG and IPP 
standards, especially for the following three areas:

1. Printer maintenance
----------------------

system-config-printer should get a printer maintenance part doing things 
like firmware update, ink/toner/consumable check, assign paper 
sizes/types to trays, ... The part should be completely based in 
standards to work with all conforming printers (IPP and IPP-over-USB).

2. SANE driver for IPP scanners
-------------------------------

This SANE driver allows scanning with the scanner parts of 
multi-function printers connected via IPP and IPP-over-USB which 
conformto appropriate IPP standards with all common scanning frontends 
under Linux.

3. Fax wih IPP multi-function printers
--------------------------------------

Fax integration in he Linux desktop with PWG-Standard-conforming fax 
parts in multi-function devices via IPP and IPP-over-USB.


Before creating the descriptions of the project ideas and posting them I 
want to ask for some help:

1. Which PWG standards have to be implemented for each of the ideas above?

2. Would these be feasable by one student in one GSoC or are there 
suggestions to split the projects to get them doe by more than one student?

3. Are there further ideas which we could post for the GSoC?

I appreciate any contribution.

    Till
