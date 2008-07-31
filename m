Message-ID: <4891C06D.1060409@gmail.com>
Date: Thu, 31 Jul 2008 15:38:53 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com>
	<4890C6FE.2090307@gmail.com>	<200807310223.m6V2NkAv006976@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48918374.8080404@gmail.com>
	<200807311226.m6VCQED9017811@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200807311226.m6VCQED9017811@dsl092-065-009.bos1.dsl.speakeasy.net>
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

Robert Krawitz wrote:
>    Date: Thu, 31 Jul 2008 11:18:44 +0200
>    From: Till Kamppeter <till.kamppeter@gmail.com>
> 
>    Robert Krawitz wrote:
>    > I've added support for Quick Presets using the Image Type
>    > (StpImageType) and for widget hinting.  They pass cupstestppd.  Till,
>    > can you check them out (use "make ppd-global" to produce
>    > multi-language PPDs).
> 
>    Generally, the PPDs are generated correctly, but there are some problems:
> 
>    - All the translated UI strings are English for me. My distro is
>    Ubuntu Intrepid. What do I have to change to get actual
>    translations. I would like to have multi-language PPDs in both
>    Ubuntu and LSB packages.
> 
> How did you create the PPD files: are these statically generated
> files, did you use cups-genppdupdate, did you create new queues?
> 
> What locale is your system running in?
>

I used the following configure command line. It is from the LSB package 
but with I18n reactivated:

./configure --enable-static --disable-shared --disable-rpath 
--without-modules --disable-libgutenprintui --disable-libgutenprintui2 
--without-gimp --without-gimp2 --with-cups --without-ghostscript 
--without-foomatic --with-foomatic3 --disable-test --enable-cups-ppds 
         --enable-cups-level3-ppds --enable-static-genppd 
--enable-simplified-cups-ppds --enable-cups-1_2-enhancements 
--enable-escputil

I want to conserve this command line as far as possible for the LSB package.

My locale is en_US.UTF-8, I did not create any queues, I did not even do 
"make install". I only looked into the PPDs which I got in src/cups/ppd/ 
after running "make".

    Till

