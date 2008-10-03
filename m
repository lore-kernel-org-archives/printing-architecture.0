Message-ID: <f96d234e0810031125v3794d13fq3cfea519fc1e05d1@mail.gmail.com>
Date: Fri, 3 Oct 2008 14:25:40 -0400
From: "Cliff Brake" <cliff.brake@gmail.com>
In-Reply-To: <99D9E6F4-E23E-4FB5-8FF9-6B0AFD94FE2B@hp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <f96d234e0810030811l5ae160a9m9f5997b29e194c38@mail.gmail.com>
	<99D9E6F4-E23E-4FB5-8FF9-6B0AFD94FE2B@hp.com>
Subject: Re: [Printing-architecture] printing in embedded systems
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Donald Welch <donald.welch@hp.com>
Cc: printing-architecture@lists.linux-foundation.org, David Suffield <david.suffield@hp.com>, Raghothama Cauligi S <raghothama.cauligi@hp.com>

On Fri, Oct 3, 2008 at 11:29 AM, Donald Welch <donald.welch@hp.com> wrote:
> For printing to an HP printer:
> http://hplipopensource.com/hplip-web/index.html
>
> Specifically, the hpijs solution (a subset of hplip), provides a printing
> driver for ~1,500 HP printers.

Excellent, so I could write a IJS client in my application.  I think
Cairo can generate image surfaces, so once I figure out the image
format, it should be possible to send a raster image directly to the
HPIJS server.  Seems doable.  I'd really like to skip ghostscript as
cairo will likely be much more efficient at rasterizing an image on a
low power ARM processor.

Thanks,
Cliff

-- 
=======================
Cliff Brake
http://bec-systems.com
