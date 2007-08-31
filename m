DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=sKpyOndvcDo40RfaeNwwC3AyHgc1WgEATP82cadrMFAysEd6/Quy6t6AQG4OuYgKyhkaDsJuCrbFqe3Aa7fta5Jt6/ee5cW2nO8R/t6bxnuZMx+Ty79ZIjDpsUwYtIQUalmpgcJnlLWZNLbvhleXntEmMgBtuKXw1jhW0AjLq0I=
Message-ID: <e395be80708310930pf17f57fy5eef2e79d1c229f9@mail.gmail.com>
Date: Fri, 31 Aug 2007 11:30:34 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
Subject: Re: [Printing-architecture] more questions on fsgjt api
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC48@eitc220.eitc.epson.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC48@eitc220.eitc.epson.com>
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

NO - the 'pages' parameter is a LIST of objects (thus pointer to
pointer), which is NULL terminated, NOT a single object.

Cheers,
- Ira


On 8/31/07, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
>
>
>
> I believe that for the API call
>
> fsgjt_return_code_t fsgjtNewInsertSheet(  /* OP_INT32  */
>
>         fsgjt_object_t*     insertSheet,  /* void**    */
>
>         fsgjt_position_t    position,     /* enum      */
>
>         fsgjt_object_t*     pages         /* void**    */  --->>>>>
> fsgjt_object_t     pages         /* void*    */
>
> that the  'pages'  parameter should be "fsg_object_t' and not
> "fsg_object_t*'  because the 'pages' in an input and is not created with
> this api.
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
