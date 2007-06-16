Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=NklVHKMOafw8I2VibXaT4uITgHnJMmnHBoRJamsec7m4zIq3SXK067SwzK3KKb8FAerb4dy2bM9rqCHaCUjd0dIxHyvvJ0NX894ExISAyL4Tbo3eBiwZGXdCO9qC1O8gJYrTc0Bv5awGzlgzABF2e9ZRTl0851ZZLlHoghyRR+M=
Message-ID: <e395be80706151811g45659786t521518126d4ff270@mail.gmail.com>
Date: Fri, 15 Jun 2007 20:11:55 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
In-Reply-To: <4672146D.6030103@fujixerox.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <789E617C880666438EDEE30C2A3E8D10EF3A@mailsrvnt05.enet.sharplabs.com>
	<4671CDAD.6050409@fujixerox.co.jp>
	<e395be80706142051g74848370v2ee0ab2917596a8e@mail.gmail.com>
	<4672146D.6030103@fujixerox.co.jp>
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
Cc: printing-japan@freestandards.org, printing-architecture@freestandards.org

Hi Mihara-san,

Sorry I didn't see your note during the day, so I didn't get
to discuss this with Toratani-san.  But the LF procedures
for release are the same as the existing Open Printing WG
procedures - an implementation is required before final
approval.  But I don't think this is a problem for LSB/3.2,
because the OPVP/0.2 (plus UPDF namespace) will be
the LSB/3.2 requirement (without text/font APIs).

For LSB/3.3 and beyond, we can standardize on OPVP/1.0
as long as it's present in the major Linux distros (as I
understand it).  So we should have sufficient time for spec
review and implementation revisions before we complete
formal approval.

We can discuss timelines more on the OP Printing
Architecture mailing list in the next few weeks.

Cheers,
- Ira

On 6/14/07, Osamu MIHARA <osamu.mihara@fujixerox.co.jp> wrote:
> Thank you, Ira,
>
> Please discuss with Toratani-san at Google about the procedure to
> finalize the spec hereafter.
>
> We are planning to update the opvp meta drivers for ghostscript and pdf
> renderer, as well as some vendor drivers, incorporating the updated
> spec, for the purpose of validation of the updated spec.  I think
> btaining approval for formal release may be after the validation by
> implementation.  However, if LSB requires a formal release of spec for
> incorporating the vector driver spec, we may need a front-loading of
> formal release.
> --
>    Osamu Mihara // Fuji Xerox
>
> on 2007/06/15 12:51 Ira McDonald said the following:
> > Hi,
> >
> > My congratulations to the OP Japan team for all your efforts!  When I
> > return home from the Linux Foundation Collaboration Summit, I'll sit
> > down next week and read carefully over the spec.
> >
> > Thanks very much,
> > - Ira
> >
> > On 6/14/07, Osamu MIHARA <osamu.mihara@fujixerox.co.jp> wrote:
> >> Hi,
> >>
> >> Toratani-san has posted the latest update of vector driver API spec.  It
> >> is the result of big efforts of OPWG Japan members in these several
> >> months.
> >>
> >> ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc4.odt
> >> ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc4.pdf
> >>
> >> Massive parts are reviewed and improved.  The change list is not
> >> attached at the end of the document, due to the time limitation, here is
> >> the main changes since RC2/RC3.
> >>
> >> # Toratani-san, we should make a document to describe the changes
> >> # of spec from version 0.2 to 1.0.
> >>
> >> - Improve English expressions.
> >>
> >> - Rewrite introduction section.
> >>
> >> - Raster operation (ROP) functions are removed, since it does not
> >> directly reflect the graphics model of PDF or PostScript. Because the
> >> mapping scheme of superposition of graphical elements from
> >> PDF/PostScript to ROP is ambiguous in the previous spec., and it causes
> >> some artifact problems with vector printer driver implementations.  We
> >> review the related functions carefully and confirmed that ROP is not
> >> essential factor for our model and removing it does not cause problems
> >> in the aspect of function and performance.
> >>
> >> - Remove unnecessary sentences and paragraphs.
> >>
> >> - All descriptions are rewritten to remove ambiguities, using RFC2119
> >> definition (MUST/SHOULD/MAY...).
> >>
> >> - Parameters for bitmaps and brushes are reviewed and rearranged.
> >>
> >> - Some figures are added for clarification of concepts of functions.
> >>
> >> - Etc. etc. etc.....
> >>
> >> Please review the spec. and post the feedback to this mailing list.
> >>
> >> Thank you!
> >>
> >> --
> >>    Osamu Mihara // Fuji Xerox
> >>
> >> _______________________________________________
> >> Printing-architecture mailing list
> >> Printing-architecture@lists.freestandards.org
> >> http://lists.freestandards.org/mailman/listinfo/printing-architecture
> >>
> >
> >
>
>


-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: blueroofmusic@gmail.com

