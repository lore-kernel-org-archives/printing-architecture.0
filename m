Message-ID: <48145E03.6080505@gmail.com>
Date: Sun, 27 Apr 2008 13:05:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com> <481131B6.5050809@gmail.com>
	<4811C5C7.2070803@gmail.com> <4812642B.5040406@gmail.com>
In-Reply-To: <4812642B.5040406@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
 its interface
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Peter Sikking <peter@mmiworks.net>, Jonathan Riddell <jriddell@ubuntu.com>

Marcelo Ricardo Leitner wrote:
> Ok, I've no idea how each app converts its data to the print job, but is
> that really possible? I mean, rendering page 3 on a browser wouldn't
> require pages 1 and 2 be rendered first? Again, no idea here, but the
> idea sounds interesting if possible.
> 

Such applications will have to rerender the whole document, but many 
other do not, like OpenOffice.org, Scribus, photo management software, 
... This is no big problem, as wep pages are not so long and also not 
very complex to render, whereas a document in OOo can have several 
hundred pages, many fonts, vector-drawn pictures, ...

> 
> In this case, storing the configs along with the dialog would be enough,
> as it would be cross-referenced against printer queue and application
> being used.
> 
> You are right, perhaps the application would want to store it matching
> against the document being printed. But that could be handled by the
> dialog too, it would just be another field or even a matter of defining
> a format for that domain name I talked about, "app[/doc hash]"..

OpenOffice.org saves printing settings (selected print queue and option 
settings) in its documents. To not require OOo to change the feature 
with the introduction of the Common Printing Dialog we should support 
this in our interface between application and dialog.

    Till

