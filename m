DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=d8wSCrE2Jf1B+DyuqGcSvq+6vA1erg4ijuZxz92VqiYM0U72Y4Sz/FllwWqreBwpsh+C7FNDnjmDi5tbm/RYpeF1hrXSGx7McI1G0EUUxPYIgrkzDs5YWE5YvgaXKzMhuAnwbkiws+tMVCorLOw1BrDEfy0bRBMPdG/OqYJkl8Y=
Message-ID: <e395be80708310926i3636bd24l84883e2d96ac6857@mail.gmail.com>
Date: Fri, 31 Aug 2007 11:26:19 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
Subject: Re: [Printing-architecture] Question on Destroy Object
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC47@eitc220.eitc.epson.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC47@eitc220.eitc.epson.com>
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

YES - it's the intent that Destroy (aka free) is recursive and will
destroy individual attributes (even if they are contained objects).

YES - I think the enum name should be changed (although it
must also be corrected in "fsgjt_separator_sheet.h", remember).

I see there are other inconsistencies, where a finishing object's
type doesn't contain the "Type" suffix.  Not sure why.

Claudia - can you straighten us out on this?

Cheers,
- Ira


On 8/31/07, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
>
>
>
> for the fsgJTAPI - 'fsgDestroy(object)'  is it the intent the any attributes
> bound to (for) the 'object' are automatically destroyed or should the
> programmer explicitly destroy individual attributes.
>
>
> Also, am I correct on the following
>
> I believe that in fsgjt_enum.h there should be a
>
> #define FSGJT_VT_JOB_TICKET_OBJECT
> "JOB_TICKET_OBJECT"
>
> which is used in "fsgjtNewJobTicketInfo"
>
> I believe that in  fsgjt_enum.h there is an error ---
>
> 4// error #define FSGJT_VT_SEPARATOR_SHEET_ENUM
> "SEPARATOR_SHEET_ENUM"
>
> should be
>
> #define FSGJT_VT_SEPARATOR_SHEET_TYPE_ENUM
> "SEPARATOR_SHEET_TYPE_ENUM"
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
