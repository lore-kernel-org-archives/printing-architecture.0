Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <4EAACFBC.3070502@thax.hardliners.org>
Date: Fri, 28 Oct 2011 17:52:28 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <4EA99DFF.3080801@gmail.com>
In-Reply-To: <4EA99DFF.3080801@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Moving CUPS filters to OpenPrinting
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

Till Kamppeter wrote:
> Another decision to make is whether we really should maintain all the 
> filters which get over to us from CUPS or whether we should 
> discontinue some. The filter set will contain "imageto..." and 
> "textto..." filters which are not made use of by the usual desktop 
> applications, they send all PDF (and some send PostScript). 
> Alternatively, these filters could be made optional.
Regarding texttops/texttopdf:
As both of them depend on common code (in general: you can drive both a 
PS and a PDF output-backend with a common api), it makes much sense to 
maintain them together, especially as there is some stuff I would have 
changed in texttops when creating texttopdf, but didn't, to keep them 
independent.
OTHO: It's not would quite clear to me, whether PS-based workflows will 
have any future. If we just wait for them to be replaced by PDF, we'd 
better decide to only keep the filters working for some more time.

I'd further say that the ability to directly print text files should 
stay, even though most features of textto{pdf,ps} (e.g. pretty printing) 
are almost never used(?). Also, to circumvent some nontrivial issues the 
current code uses some unpleasant glyph-stretching.
I wonder what Mac OS X does with plain text submitted for print directly 
(e.g. via command-line), when they don't use textto* ?

  Tobias
