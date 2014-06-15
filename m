Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=utBQhmGKC6XMVRAj13M5f+BDO0ZNz9BBLREszuHIEJE=;
	b=CwJfNM6la3YnkHELvP6AM02u9gUnzjgBovJHFs/nTFzTtLi7427sT4hZ6d0qzgAUm4
	+ubNiZFgA3kzNX8IlvnGB/gmzGwPQxCcihzY+xj/8qFyNu/D2bGxtOkuJXznvKe0x1ia
	vhB/F2DZ50NJNWIy4pR7Ukmb4xuHZYHKr/aL2PTlE/baf+NxmtmH5gJBBQ2eFfOMSZu5
	/9O2YCtCWT9kJyTMbWOofdyixo7q+ck00sxwVr5eQaM7I9u59cyD+R7SVrNnFMESYQkj
	r7nUpLoGnnkm56SLiLUYhlyy33UoSXq1jZ/1Ny2DT7NpUtqB28VE8iqSlYRLwDr/Jz+B
	fcPg==
Message-ID: <539D630D.9070500@gmail.com>
Date: Sun, 15 Jun 2014 11:10:37 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <53997D3F.2060803@gmail.com>	<CAERbVPTANK7nmPN0MBZiJQ-cAVZwL2-xQsZLhTKNtR+fiwpRGQ@mail.gmail.com>	<539A19FB.80303@gmail.com>
	<CAERbVPTFyySZZScc_Yycs+tdg2mD4K-7vEOC8rsgdkigz5CCKA@mail.gmail.com>
In-Reply-To: <CAERbVPTFyySZZScc_Yycs+tdg2mD4K-7vEOC8rsgdkigz5CCKA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] "no-color-management" not a good idea
 for a name of a boolean CUPS option
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Joseph Simon <jsimon383@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 06/13/2014 01:52 AM, Joseph Simon wrote:
> Hi everyone,
> 
> Rev. 7225 of 'cups-filters' now replaces "no-color-management" with
> "cm-calibration" for the bool option. So the following commands should
> work without the added '=' symbol, and will disable ICC profile management:
> 
> $ rastertopdf 1 foo bar 1 "cm-calibration" input.ras >>output.pdf
> $ foomatic-rip -p foo -o cm-calibration
> 
> Joe Simon

I have looked into foomatic-rip and it seems that the "cm-calibration"
option only works when using foomatic-rip in direc/spooler-less mode. To
make it also working in CUPS mode you will probably also have to check
it in the first loop in the process_cmdline_options() function.

In imagetoraster you are not only renamimg the option and the variable
but also dropping "else cm_off = 0;" With this probably you need to
preset the variable to zero at declaration ("int cm_calibrate = 0;").

Rest seems to be OK.

Please check these points, as I only reviewed your commit but did not
actually test it.

It would be also nice if you add to all filters with the
"cm-calibration" option a line which generates debug log output telling
whether "cm-calibration" was set or not, like

fprintf(stderr, "DEBUG: Color Management: %s\n", cm_calibrate ?
"Calibration mode/deactivated" : "Standard mode/activated");

   Till



