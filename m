Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC21@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Wed, 22 Aug 2007 14:44:16 -0700
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] Trying to get an understanding
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

All, these are some my notes from today's meeting.  Please tell me if my
statements about the original jtapi are correct or correct the parts I
don't' yet understand.

With the new understanding I will start review my current solution.


========================================
The meeting went into details on the current OPEP JTAPI implementation.  I
chose a different implementation concept than the original JTAPI.  Not on
purpose but based on experience and some misunderstandings.   

Correcting my understanding of the original jtapi
The original JTAPI creates an object (with no attributes contained in the
object). The calling-routine, then creates those attributes it needs for the
objects and the calling-routine sets values for the newly defined
attributes.   Example: assume an object type can have 10 attributes.  In the
example the calling-routine only "needs" to set 2 attributes.  Then the
object would look like.

Object: A
	Attribute 1: (AttributeId (or AttributeName))
		Value of 1: 100
	Attribute n:(AttributeId (or AttributeName))
		Value of 2: "test"
End of object

    << Here other attribute for the object are assumed set 
	 to NOT_SET or ???? >>
    << Note, there is no implied ordering to the attribute; the order is
	 simple the order in which they were asked to be created.>>
    << For this implementation the AttributeId or AttributeName of each 
	 attribute must be stored.  >>

	In the different implementation (mine), the calling routine uses the
new API to create an object (with all attribute "defined"; that is, the data
struct for the object is created.  The calling-routine skips the create new
attribute step (api); unless it is an object which it creates by creating
the new object.  The calling-routine then sets values for any attribute in
the object.  Example of this case is...

			Object: A
				Attribute 1:
					Value of 1: 100
				Attribute 2:
					Value of 2: NOT_SET or ????
				Attribute 3:
					Value of 2: NOT_SET or ????
				Attribute 4:
					Value of 2: NOT_SET or ????
				Attribute 5:
					Value of 2: "test"
				Attribute 6:
					Value of 2: NOT_SET or ????
				Attribute 7:
					Value of 2: NOT_SET or ????
				Attribute 8:
					Value of 2: NOT_SET or ????
				Attribute 9:
					Value of 2: NOT_SET or ????
				Attribute 10:
					Value of 2: NOT_SET or ????
			End of Object

Which implementation is "better" for an embedded solution.   The original
jtapi requires fewer resources when only a limited set of objects/attributes
are set. When most attributes are being set, then greater resources would be
used.  The second method requires the same amount of resources all the time.


The second factor is how other processes will use the processed jtapi
objects/attributes in the job ticket forms above.   In the original jtapi,
other system processes wanting to use the job-ticket (as shown in the first
example) would have to parse the content of the job ticket to identify what
objects/attributes are set (and not set).   In the second API
implementation, the other system processes would directly inspect or use the
object/attribute defined in data struct's; in other words, all attributes
are defined; even if the value is set to NOT_SET.  No parser is required by
other system processes. 

According to other individuals, IPP and other printing implementation use
the original jtapi approach to job tickets (and other system data as well
that will be used by other processes).  Fair enough; but the other solutions
are not targeted to embedded solutions.  Other solutions have greater
processing capability and more usable memory resources. 

Finally, the argument that "if an attribute is not set to some default value
(not simply NOT_SET)" then the resulting printed job may be produced
differently by different downstream implementations.  Fair enough and not
solely an embedded solution problem!

========================
Conclusion: I believe that not having other system processes need a job
ticket parser is a big plus when looking at embedded solutions.  The parser
(even if it is small; is just more overhead).  I believe having all
attribute set is a big plus for any solution.   By the same token, do we
really expect embedded solutions to be setting a lot of attributes; not
really!   So the tradeoff is having a "common job ticket" parser function
versus the job-ticket size; even with the overhead for the original jtapi
job ticket content.

For the future, I would like to add one new JTAPI that does not uses
AttributeID (an enum) versus AttributeName; again to save on memory and
processing of string data which internal will result in some type of
AttributeID.  

I will begin writing the jpapi code based on the original jtapi; assuming my
understanding above is correct. 

glen 


