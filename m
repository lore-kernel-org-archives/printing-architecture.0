Return-Path: <samuel.thibault@ens-lyon.org>
Date: Mon, 11 Sep 2017 21:38:46 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170911193846.aqrqdtw6ctaf744u@var.youpi.perso.aquilenet.fr>
References: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
	<096ec9d7-7dbb-9d5c-184f-40b4c384bbac@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <096ec9d7-7dbb-9d5c-184f-40b4c384bbac@gmail.com>
Subject: Re: [Printing-architecture] [PATCH] Add braille support for vector
 images
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

Till Kamppeter, on lun. 11 sept. 2017 11:59:01 -0300, wrote:
> On 09/09/2017 04:02 PM, Samuel Thibault wrote:
> > This adds support for embossing vector images as braille, by using
> > ghostscript to rasterize without antialias.
> 
> Thank you very much for your two patches. I have applied them now.

It seems you forgot to add the vectortopdf and vectortobrf files?

Samuel
