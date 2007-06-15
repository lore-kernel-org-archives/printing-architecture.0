Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=BtgBGH7/Os/h+GP7riAq47zL1zwH3gVnApRSQqUCFNqqsPKBIjF+2AMwIehDi156ExkJm9ZxTwFtFzGf85jACSQ4ETxC6n4fTJIxN++9ZVto9YeW5vL9MO/NbJb9KezvZ8Lt/tKeIWoeCzXEe9OjlDG1RSgANvS2ZQxHjjd9pUM=
Message-ID: <e395be80706142051g74848370v2ee0ab2917596a8e@mail.gmail.com>
Date: Thu, 14 Jun 2007 22:51:11 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
In-Reply-To: <4671CDAD.6050409@fujixerox.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <789E617C880666438EDEE30C2A3E8D10EF3A@mailsrvnt05.enet.sharplabs.com>
	<4671CDAD.6050409@fujixerox.co.jp>
Subject: Re: [Printing-architecture] OPVP spec RC4
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@freestandards.org

Hi,

My congratulations to the OP Japan team for all your efforts!  When I
return home from the Linux Foundation Collaboration Summit, I'll sit
down next week and read carefully over the spec.

Thanks very much,
- Ira

On 6/14/07, Osamu MIHARA <osamu.mihara@fujixerox.co.jp> wrote:
> Hi,
>
> Toratani-san has posted the latest update of vector driver API spec.  It
> is the result of big efforts of OPWG Japan members in these several months.
>
> ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc4.odt
> ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc4.pdf
>
> Massive parts are reviewed and improved.  The change list is not
> attached at the end of the document, due to the time limitation, here is
> the main changes since RC2/RC3.
>
> # Toratani-san, we should make a document to describe the changes
> # of spec from version 0.2 to 1.0.
>
> - Improve English expressions.
>
> - Rewrite introduction section.
>
> - Raster operation (ROP) functions are removed, since it does not
> directly reflect the graphics model of PDF or PostScript. Because the
> mapping scheme of superposition of graphical elements from
> PDF/PostScript to ROP is ambiguous in the previous spec., and it causes
> some artifact problems with vector printer driver implementations.  We
> review the related functions carefully and confirmed that ROP is not
> essential factor for our model and removing it does not cause problems
> in the aspect of function and performance.
>
> - Remove unnecessary sentences and paragraphs.
>
> - All descriptions are rewritten to remove ambiguities, using RFC2119
> definition (MUST/SHOULD/MAY...).
>
> - Parameters for bitmaps and brushes are reviewed and rearranged.
>
> - Some figures are added for clarification of concepts of functions.
>
> - Etc. etc. etc.....
>
> Please review the spec. and post the feedback to this mailing list.
>
> Thank you!
>
> --
>    Osamu Mihara // Fuji Xerox
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>


-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: blueroofmusic@gmail.com

