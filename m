Message-ID: <48485EA5.7090000@gmail.com>
Date: Thu, 05 Jun 2008 23:46:13 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <484683B0.2060708@gmail.com>	<20080605.153828.28801505.sho@bbr.jp>	<484794CF.10300@gmail.com>
	<20080605.193227.233691471.sho@bbr.jp>
In-Reply-To: <20080605.193227.233691471.sho@bbr.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PDF CUPS filter packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: toratani.yasumasa@canon.co.jp, printing-architecture@lists.linux-foundation.org

Koji Otani wrote:
> This is more complicated. GS doesn't check this, Adobe Reader 8 seems
> to use a trick.
> Following code is embeded in output PS:
> ----------------------
> %ADOBeginClientInjection: DocumentSetup Start "No Re-Distill"
> %% Removing the following eleven lines is illegal, subject to the
> Digital Copyright Act of 1998.
> mark currentfile eexec
> 54dc5232e897cbaaa7584b7da7c23a6c59e7451851159cdbf40334cc2600
> .....
> ----------------------
> 
> So, this will not be a matter of GS.

Can you post this PDF file or make it otherwise available for download? 
I would like to use it for testing.

    Till

