Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=UBObLF9nKnW87AgeBmghN7MzBGtsam6HJKayfk6p1L8=;
	b=d/WKDsCAP+FGVK5CrCUwCOFSIGwa9Pn97FEhQi9vAPDImuAFSb465OOnMX6GOy10qM
	YXdtGthbQI2ChDSAQ60kw453x8N5SPFYKXdbJdcNuT28TKzVTB6lQMSIMGZ1qUt49Hg/
	eMavIJepu4Ndhnd42ZzRd4zTU8wXxKjbDzNEgd/bcJmuRzljM7vQAj7nxJ0JfwS0fXzT
	qcLDR7T0/KT9LLVkerICTqZ2Jg+Brdq2wYlMpCZkOKvhvhSppIrREba2xrTHzllk0N9Q
	sl94fZ4AM0VFLM8AzdfWyEEfejj3aobkCxiAS1V19QSaeKNQGTfJFsO5NuMFCF+qSE38
	f3IA==
References: <a3fb698b-4b5a-6489-4c06-9ac3e4b219e0@gmail.com>
	<CBC22B5F-D257-4D9B-922A-2C790BF94A02@apple.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5852c935-3747-59b4-8dba-49961d19e27a@gmail.com>
Date: Fri, 2 Aug 2019 23:46:10 +0200
MIME-Version: 1.0
In-Reply-To: <CBC22B5F-D257-4D9B-922A-2C790BF94A02@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] DNS-SD advertising of local services on
 Linux
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Michal Sekletar <msekleta@redhat.com>, Ken VanDine <ken.vandine@canonical.com>

On 02/08/2019 23:38, Michael Sweet wrote:
> Till,
> 
> Avahi needs to support "localhost" for the loopback interface, for all of the reasons you've discovered.
> 
> In addition, if Avahi returned 127.0.0.1 as one of the addresses for a .local lookup, that would cause some serious security problems when machine A looks up machine B ("b.local") and gets its own loopback address - by returning localhost ("localhost.") that security issue is avoided.
> 

Thank you very much.

This would mean that Rithvik's part of the patch is correct and 
important. Am I correct?

Could you post your answer on

https://github.com/lathiat/avahi/issues/125

Thanks in advance

    Till

