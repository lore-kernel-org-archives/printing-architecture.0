Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <4505F825.9070904@Sun.COM>
Date: Mon, 11 Sep 2006 18:58:29 -0500
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OPVP notes
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-japan@freestandards.org, printing-architecture <printing-architecture@freestandards.org>

I am resending this due to mail list issues.

Here are some comments on the OPVP specification from our meeting today

       -Norm

Page 9
    Add FSGPD_CSPACE_DEVICEKRGB to table

Remove any references to "at this time", which talk about the reference 
implementation.
Ex. Page 9, lines 7-8

Fix "this will be described later", include the descriptions or page 
references.
Ex. jobInfo, page 12

Page 17, specifies Attributes of Job, Document, ...

    By not specifying this in a common representation, the render(s) must
    know all possible "schemes" available by all possible drivers and
    generate
    the appropriate format for each driver.  This requires the renderers to
    maintain proprietary knowledge of all drivers.

    There doesn't appear to be coherence with JTAPI, PAPI, ... pick a
    property set to represent this data and use it between renderer
    and driver.  Let the driver translate to/from any internal
    representation
    that it may need.

