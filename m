Message-ID: <4848DF56.8000004@gmail.com>
Date: Fri, 06 Jun 2008 08:55:18 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <484794CF.10300@gmail.com>	<20080605.193227.233691471.sho@bbr.jp>	<4847C5BA.7050304@gmail.com>
	<20080606.145117.189705417.sho@bbr.jp>
In-Reply-To: <20080606.145117.189705417.sho@bbr.jp>
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
> We contacted with Mr. Michael Sweet. He said that he could not put pdf filters
> into CUPS source tree because of Copyright and Maintenance, but he could
> put them on somewhere in cups.org. I asked him to download PDF
> filters and look them. I'm waiting for him to do them.

Including Poppler code in CUPS is no problem with the license. Poppler 
is GPL. Probably the problem is that he wants to have copyright on the 
full source to be able to also include it in closed-source software and 
he probably also does not want to duplicate the Poppler source code 
(therefore he also changed the pdftops filter to call the pdftops tool 
from Poppler or xpdf instead),

As your current PDF filters go deeply into the Poppler source code I 
think the best place for them is the Poppler project.

Can you talk with Mike about including only the imagetopdf filter, as it 
does not use Poppler and goes deeply into the CUPS code. Tell Mike that 
you would transfer copyright to him and agree with him that the filter 
gets into CUPS under the same license as CUPS itself.

    Till

