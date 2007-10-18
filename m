DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	bh=PhKGGa2XFTJSysBpmGanNcKCYwGy5i1iYDtp1MmWfnQ=;
	b=kHdrmC9JvUtgHdb521nwy8ELgTkobcfqPANCXFFOvbq2KCynPXCxbqj4Q9vpIwgJYCqKhf47WjhyrvZ088sURbXx9kZuxWQjdj/UMkvoYVi9kBkEINtVQ4ZRw0Qj8odQL4VmefI1M+nR7/yDH7pdwG6j4sf2G5HOfVuy/FbGmhA=
Message-ID: <4717CBCD.7080302@gmail.com>
Date: Thu, 18 Oct 2007 22:10:37 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-summit] Re: [Printing-architecture] Posted OPS Summary
	from Montreal
References: <e395be80710151142y1c10408ei62c07ea6ddc5ec72@mail.gmail.com>
	<4713CA56.3050708@gmail.com>
	<200710152346.l9FNkVXZ018939@dsl092-065-009.bos1.dsl.speakeasy.net>
	<471483AB.9050309@gmail.com>
	<200710161227.l9GCRgdF002017@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200710161227.l9GCRgdF002017@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

Robert Krawitz wrote:
>    Date: Tue, 16 Oct 2007 10:26:03 +0100
>    From: Till Kamppeter <till.kamppeter@gmail.com>
> 
>    Robert Krawitz wrote:
>    > Question:
>    > 
>    >   - Installing everything in /opt/<supplier>/ to avoid conflicts with
>    >     distribution
>    > 
>    > What does this mean for Gutenprint or other similar packages?
>    > 
> 
>    This means that for distribution-independent LSB packages the
>    "./configure; make; make install" sequence has to be called with
>    different selections of installation directories and the
>    post-install script of the package has to add directories to the
>    $PATH and links to system locations.
> 
> I didn't ask the right question: what is the value of <supplier>?
>

It is the name of the company for printer manufacturers and commercial 
driver suppliers, the name of the project for free software projects. So 
for you it is "gutenprint" (see my already existing packages).

    Till
