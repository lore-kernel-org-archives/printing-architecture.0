Message-ID: <A134E2426B46D711BB4B000347AE6E7CAA5344@xvan02.vcd.hp.com>
From: "TAYLOR,BOB (HP-Vancouver,ex1)" <bobt@hp.com>
Subject: RE: [Printing-architecture] Re: [printing-driver] FSG Printer Wor
	 king Group conference call 03/26/03
Date: Wed, 26 Mar 2003 10:33:53 -0500
MIME-Version: 1.0
Content-Type: text/plain
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: Robert L Krawitz <rlk@alum.mit.edu>
Cc: printing-driver@freestandards.org, printing-driver@freestandards.org, printing-architecture@freestandards.org

see inline -

bt

> -----Original Message-----
> From: Robert L Krawitz [mailto:rlk@alum.mit.edu] 
> 
>    >    * should we have an interface to query the printer's 
> job dialog?
>    >      This will allow for programmatic support of 
>    > setting/querying the JPs.
>    > 
>    > Yes.  This actually maps very well to Gimp-print, 
>    > particularly in 4.3.  It's a lot more flexible than a static 
>    > file; expressing constraints using boolean logic can get 
>    > extremely complex.
> 
>    Note that you end up defining these constraints someplace anyway -
>    the question is whether you do it in code that's bound to an
>    implementation or in a data structure that can be evaluated in many
>    implementations.
> 
> The flat file's already bound to the implementation; a 
> Gimp-print PPD file won't work with the HPIJS driver and vice 
> versa.  IMHO, an application should neither know nor care 
> whether the back end is a PPD file, an XML file of some kind, 
> a driver, or even a relational database of some kind.  There 
> should be an API by which it can get this information from 
> the core printing system.

<bt>
There should be an API - but the API needs some kind of data model.  I'd
rather see this API adopt one of the more flexible existing data models
(PSI capabilities, UPDF, ...) that make yet another, which just adds another
translation into the pile - and in many cases, this may be an unnecessary
translation.  This doesn't mean that the "back end file" has to be the same
format as that passed through the API - but in some (many?) cases it could
be.
</bt>

> 
> -- 
> Robert Krawitz                                     
> <rlk@alum.mit.edu>      
> 
> Tall Clubs International  --  http://www.tall.org/ or 
> 1-888-IM-TALL-2 Member of the League for Programming Freedom 
> -- mail lpf@uunet.uu.net
> Project lead for Gimp Print   --    http://gimp-print.sourceforge.net
> 
> "Linux doesn't dictate how I work, I dictate how Linux 
> works." --Eric Crampton
> 

