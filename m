Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5106EB81.3050001@gmail.com>
Date: Fri, 01 Feb 2013 15:49:45 -0500
Message-id: <B9DA789A-5991-433C-A6F9-9233BEECE94F@apple.com>
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
	<5106EB81.3050001@gmail.com>
Subject: Re: [Printing-architecture] IPP Everywhere: How to make CUPS queue
 so that applications can use these printers
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till,

On 2013-01-28, at 4:20 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> I have seen in the source of the IPP backend that for PDF and all image formats the IPP attributes are carried on to the IPP printer. So this means that for PDF, JPEG, and PWG Raster the PPD simply needs to have the option and choice names being the ones of the IPP attributes reported back by the Get-Printer-Attributes request and no PostScript code needs to get assigned to the choices. Am I right? Will CUPS supply all atributes on the filter/backend command line then?

No, we only do that if the other end is another CUPS server.  Otherwise we map the core IPP Job Template attributes used for IPP Everywhere from the PPD options.  Look at the ppd-private.h header, specifically the PPD cache stuff, for inspiration.

Basically we map/pass-through:

    PageSize/PageRegion to media/media-col.media-size/media-xxx-margin
    InputSlot to media-col.media-source
    MediaType to media-col.media-type
    ColorModel to print-color-mode
    Duplex to sides
    OutputBin to output-bin
    cupsPrintQuality to print-quality
    copies
    finishings
    job-account-id, if cupsJobAccountId is in the PPD
    job-accounting-user-id, if cupsJobAccountingUserId is in the PPD
    job-password, if cupsJobPassword is in the PPD
    any IPP options listed in the cupsMandatory keyword in the PPD

> Another problem would be some PPD options where the Adobe specs impose certain option and choice names, like PageSize, InputSlot, Duplex, OutputBin, Resolution, ... How do I proceed with these options?

Proceed according to the Adobe requirements - the PPD cache maps to/from Adobe names.

> Can I "translate" the IPP attributes somehow into PostScript commands so that I can also generate PPDs for PostScript printers?


That may prove tricky since a) most IPP printers do not support PDL override for PostScript, and b) the PostScript commands for a printer are likely different than the commands needed for Ghostscript/xxxtoraster to generate PWG Raster data.

For now, at least, I would focus on a) determining whether a printer supports IPP Everywhere and b) using the standard IPP Everywhere formats (i.e. NOT PostScript) when that is the case.  If the printer doesn't support IPP Everywhere then you should probably gracefully fall back to doing the legacy driver dance.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

