Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 5 Nov 2017 17:58:13 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20171105165813.7frmcojb7unbvaxz@var.youpi.perso.aquilenet.fr>
References: <20171029212554.volqq54tg5a7gmhz@var.youpi.perso.aquilenet.fr>
	<bf03f307-1bcd-ca24-dae8-02eaca6cad83@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf03f307-1bcd-ca24-dae8-02eaca6cad83@gmail.com>
Subject: Re: [Printing-architecture] [PATCH] braille: fix computation with
 old bash
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Hello,

Till Kamppeter, on dim. 29 oct. 2017 21:15:22 -0200, wrote:
> On 10/29/2017 07:25 PM, Samuel Thibault wrote:
> > Old bash does not like quotes in $(("123" + 0)) , the attached patch
> > removes these unneeded quotes.
> 
> Applied, thank you very much.

I don't see it appearing on bzr http://bzr.openprinting.org/cups-filters/ or
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/changes

Did you perhaps forget to push, or is there perhaps some staging phase?

Samuel
