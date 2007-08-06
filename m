DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=U/DJrY7ESmkJP3R5kMFok9G3LcYz+uDtfczjQcE5qY8nvMxPAN4fdDj0M4Ls8kkIoKvwu4L8POedjgXOUbPEJZVKc+JlDrPUzj7YoFOcGEK25RLOOYlik15Je1razt437niCyeAL1bXZhahKw7Vd+ImHQSobg5cm3GZkXRU3QSQ=
Message-ID: <e395be80708060901y2267a779o5a04389ff59e9724@mail.gmail.com>
Date: Mon, 6 Aug 2007 11:01:10 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
Subject: Re: [Printing-architecture] OPEP Job Ticket con't
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBC1@eitc220.eitc.epson.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBC1@eitc220.eitc.epson.com>
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.freestandards.org

Hi Glen,

Your reasoning is fine and was used in my draft PWG Micro Job Ticket.

By the way, I suggest that I could rewrite my Micro Job Ticket draft into
an OP EPS Micro Job Ticket encoding spec.  It would support a standard
namespace (where standard OP objects and attributes were already tokenized
into numerical values) and an encoding for vendor extension namespaces
(where the string attribute names would only have to be declared once and
then numeric values could be used in a ticket instance).

Cheers,
- Ira


On 8/6/07, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
>
>
>
> Hello All,
>
> I am examining the job header files, principally those that create new
> objects.   Within each header we used #define statements for declaration of
> the object themselves and the object attributes.  The #define in all cases
> declared (or represent) a string.  After thinking this over, I was concerned
> about the memory requirements for the string and the extra processing for
> parsing the string.  In other words was the use of string adding value or
> added information?  I concluded, that strictly from an information-theory
> bases, the string declaration provided no additional informational value for
> the #define's would require more processing compared to numerical #define
> declarations.    In other words, programs will use the #define variables as
> calling arguments do not know (care) that strings are being represented. For
> the developer that writes a parsing routine to support the #define, it is a
> different story.  In that case, a set of string compare statements will have
> to determine what object and what attributes was received; then processing
> can proceed.
>
> I believe, that without any loss of generality or abstraction, the #defines
> in the "create new object" header files can be declared as numerical values
> (sequential enum values to be specific).  From the point of view to person
> calling/using on the new object API; they will not care what the #define
> variable represents.  For the programmer creating the parser, simple switch
> statements can be used with no additional string preprocessing.
>
> With this proposal, which really help in memory utilization for embedded
> device, I have create a draft header file using numerical #define's instead
> the string #defines.   I also believe this will mean ADDING a new job ticket
> API that uses the numerical #define's versus the string #define's.
>
>
> See the draft header file at   <<< This is draft file and not complete >>>
>
> ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/JobTicket_Lib/inc/opJTAPI__draft.h
>
>
>
>
>
>
>
> Rgds,
>  Glen W. Petrie
>  Epson Imaging Technology Center
>  2580 Orchard Parkway, Suite 200
>  San Jose, CA, 95131
>  Voice: 408.576.4131  Fax: 408.474.0511
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>


-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
work: +1-906-494-2434
home: +1-906-494-2697
email: blueroofmusic@gmail.com
