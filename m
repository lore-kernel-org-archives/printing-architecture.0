Date: Tue, 25 Mar 2003 20:37:33 -0500
Message-Id: <200303260137.h2Q1bX19023295@dsl092-065-009.bos1.dsl.speakeasy.net>
From: Robert L Krawitz <rlk@alum.mit.edu>
In-reply-to: <A134E2426B46D711BB4B000347AE6E7CAA532D@xvan02.vcd.hp.com>
	(bobt@hp.com)
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Wor
	king Group conference call 03/26/03
References: <A134E2426B46D711BB4B000347AE6E7CAA532D@xvan02.vcd.hp.com>
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
To: bobt@hp.com
Cc: printing-driver@freestandards.org, printing-driver@freestandards.org, printing-architecture@freestandards.org

   From: "TAYLOR,BOB (HP-Vancouver,ex1)" <bobt@hp.com>
   Date: Tue, 25 Mar 2003 14:14:33 -0500

   <bt>
   Agreed - and note that this is a good example of why we need to be able
   to pass localized UI strings through the capabilities interface as well.
   I don't think it's a reasonable expectation that all of these
   rapidly-evolving
   vendor-specific media types will be registered, much less actually supported
   with localized strings in most clients.
   </bt>

Right.

   >    * should we have an interface to query the printer's job dialog?
   >      This will allow for programmatic support of 
   > setting/querying the JPs.
   > 
   > Yes.  This actually maps very well to Gimp-print, 
   > particularly in 4.3.  It's a lot more flexible than a static 
   > file; expressing constraints using boolean logic can get 
   > extremely complex.

   Note that you end up defining these constraints someplace anyway -
   the question is whether you do it in code that's bound to an
   implementation or in a data structure that can be evaluated in many
   implementations.

The flat file's already bound to the implementation; a Gimp-print PPD
file won't work with the HPIJS driver and vice versa.  IMHO, an
application should neither know nor care whether the back end is a PPD
file, an XML file of some kind, a driver, or even a relational
database of some kind.  There should be an API by which it can get
this information from the core printing system.

-- 
Robert Krawitz                                     <rlk@alum.mit.edu>      

Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
Project lead for Gimp Print   --    http://gimp-print.sourceforge.net

"Linux doesn't dictate how I work, I dictate how Linux works."
--Eric Crampton

