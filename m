Message-ID: <4A893556.8000707@gmail.com>
Date: Mon, 17 Aug 2009 12:47:50 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4A86AA98.8010003@gmail.com> <4A882E99.2070209@gmail.com>
	<4A89337B.3040701@gmail.com>
In-Reply-To: <4A89337B.3040701@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Common Printing Dialog and job being
	rejected by CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Wauck <alex.wauck@gmail.com>, Per Hermansson <hermansson.per@bredband.net>, printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>

CUPS bug report:

http://www.cups.org/str.php?L3291

    Till


Till Kamppeter wrote:
> [ Mainly for Alex and Lars, I have discussed this with Per on IRC ]
> 
> Per, thanks also for your quick implementation of marking printers as 
> stopped, rejecting jobs, or needing authentication.
> 
> For testing, I have added
> 
> AuthInfoRequired username,password
> 
> to one of the print queue entries in /etc/cups/printers.conf and 
> restarted CUPS. This printer shows correctly in your dialog that 
> authentication is required.
> 
> Problem is the following: I printed through this printer successfully 
> from your dialog, not getting asked for a password. As I am privileged 
> user (in "lpadmin" group), I tried also to print via
> 
> sudo su nobody -c 'lpr -P 2 ~/.bashrc'
> 
> Then I get only asked for my password to execute sudo, but CUPS does not 
> ask for the password of "nobody". It simply printes the job.
> 
> This looks like that
> 
> AuthInfoRequired username,password
> 
> in /etc/cups/printers.conf makes CUPS reporting that, but in reality it 
> does not need it.
> 
> Per is using standard CUPS APIs 
> (http://www.cups.org/documentation.php/api-cups.html#PRINTERS_AND_CLASSES) 
> to report whether a printer needs authentication. Seems that CUPS has a 
> bug here. Per will report it to CUPS upstream.
> 
>    Till
