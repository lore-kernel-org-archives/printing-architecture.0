Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB04A34FC@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 20 Apr 2004 07:08:26 -0700
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] RE: [printing-driver] Questions on the
	Vector Driver API
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: Discussion for the driver API subgroup <printing-driver@base3.freestandards.org>
Cc: printing-japan@freestandards.org, printing-architecture@freestandards.org


.On 19 Apr, Petrie, Glen wrote:
>  7.        In the TransferRasterData call the data to be transferred is
typed 
>  as "unsigned char".  The size of "char" is not technically defined in C 
>  (most people take it to be 8 bits) and I have worked on platforms where a

>  char is 32-bit in length - not 8-bit.   I suggest the type for "data" be 
>  changed to BIT8. 

True, char is defined to be large enough to hold the character set that
expresses C programs.  But it's also the smallest directly addressable
data type.

So using BIT8 instead of char, wouldn't you be fooling yourself into
thinking that (BIT8 *) lets you address a byte at a time, when in fact
it wouldn't?

In other words, if the software is ever going to run on a system where
char != BIT8, then I believe strings won't be arrays of BIT8 either,
and you won't be able to have variables of type BIT8 - you'll have to
use masks and shifts to acquire BIT8 values.

Does my understanding match your experience on the platform where char
was 32 bit, Glen?

I suppose you are really making the point that the raster data is
organised as multiples of 8 bits though, and if the platform doesn't
have 8 bit chars, then the software has to do whatever it takes to
produce collections of 8 bit data.

[[ GWP ]] Yes, this is my point.  
  
For the rest, I agreed.  BTW, I think for alpha the minimum "resolution"
you need to support moderately smooth alpha blends is 100 - I think 10
would be chunky enough to cause visible artifacts.

luke


_______________________________________________
printing-driver mailing list
printing-driver@mail.freestandards.org
http://mail.freestandards.org/mailman/listinfo/printing-driver

