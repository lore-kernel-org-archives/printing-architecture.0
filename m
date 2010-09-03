Message-ID: <4C80B0A9.20502@gmail.com>
Date: Fri, 03 Sep 2010 10:24:09 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4C809328.300@ac-orleans-tours.fr> <4C80AB6B.10202@gmail.com>
	<4C80AE55.2040608@ac-orleans-tours.fr>
In-Reply-To: <4C80AE55.2040608@ac-orleans-tours.fr>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] New PDF file format in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Stephane Ascoet <Stephane.Ascoet@ac-orleans-tours.fr>
Cc: printing-architecture@lists.linux-foundation.org

On 09/03/2010 10:14 AM, Stephane Ascoet wrote:
> Till Kamppeter a écrit :
>
>> https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfasstandardprintjobformat
>
> Yes, I read this things... Thanks for the answer, but even if the
> application send the job in PDF, there's still a conversion from PDF to
> PS, which consumes CPU energy, reducing the advantage of using a PS
> printer.

The PDF->PS conversion as a vector-to-vector conversion should be much 
less CPU-consuming than a vector-to-raster conversion as you would have 
with a non-PostScript printer.

    Till
