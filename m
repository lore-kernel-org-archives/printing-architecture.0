Message-ID: <4891C5EC.7030406@gmail.com>
Date: Thu, 31 Jul 2008 16:02:20 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com>
	<4890C6FE.2090307@gmail.com>	<200807310223.m6V2NkAv006976@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48918374.8080404@gmail.com>
	<200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD extension specs updated
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
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com

For me this does not change anything. The generated PPDs still have all 
translations in English. Also adding --enable-globalized-cups-ppds to 
the configure command line does not help.

    Till


Robert Krawitz wrote:
> I wonder if there's any relationship between the translation problems
> you're having and what Matt's having.
> 
> I'm trying this change to cups-genppd, to clear the locale-related
> environment variables before doing anything else.  I've observed that
> if LANGUAGE is set it overrides whatever I do; perhaps this will fix
> that?
> 
> Till and Matt, could you try this change and let me know if it helps?
> 
> --- genppd.c	31 Jul 2008 08:29:26 -0400	1.164
> +++ genppd.c	31 Jul 2008 09:06:27 -0400	
> @@ -398,6 +398,11 @@
>    int           opt_printmodels = 0;/* Print available models */
>    int           which_ppds = 2;	/* Simplified PPD's = 1, full = 2 */
>  
> +  (void) unsetenv("LC_ALL");
> +  (void) unsetenv("LC_MESSAGES");
> +  (void) unsetenv("LANG");
> +  (void) unsetenv("LANGUAGE");
> +
>   /*
>    * Parse command-line args...
>    */
> 

