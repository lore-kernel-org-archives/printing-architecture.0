Message-ID: <3E7FBB4F.4040503@easysw.com>
Date: Mon, 24 Mar 2003 21:13:35 -0500
From: Mike Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: printing-driver@freestandards.org, printing-architecture@freestandards.org

Robert L Krawitz wrote:
>    From: Mark Hamzy <hamzy@us.ibm.com>
>    Date: Mon, 24 Mar 2003 13:30:36 -0600
> 
>    * should printer drivers implement a required set of common job properties
>    (JP)?
>      Examples of keys would be: orientation, form, tray, media, duplex,
>    resolution.
> 
> These certainly don't apply to all printers; most inkjets don't
> support duplex, and many also don't have selectable input sources.
> I'd prefer to see a list of standard job properties that could be
> amended, and standards (and/or a registry) for drivers to support
> non-standard properties (such as the whole mess of things Gimp-print
> supports).

WRT the sides (duplex) attribute, the related sides-supported
attribute lists the supported values.  For a printer that does
not support duplexing, the only supported value will be
"one-sided".

As for the property "registry", that is one topic for the
capabilities API that will be part of PAPI 2.0 (or 1.1, or
whatever).  At present, it looks like we'll have an attribute
that lists the available job template attributes, additional
attributes to handle simple constraints, and finally an API
for doing round-trip constraint checks.

> ...
>    * should we have an interface to query the printer's job dialog?
>      This will allow for programmatic support of setting/querying the JPs.
> 
> Yes.  This actually maps very well to Gimp-print, particularly in
> 4.3.  It's a lot more flexible than a static file; expressing
> constraints using boolean logic can get extremely complex.

First, we need static files (or the equivalent attributes) for
the UI; there cannot be a direct interface between app and driver,
otherwise we're repeating the same old errors that have been
cursed on Windows.

Second, all constraints can be expressed using boolean logic;
putting them in code or in a file doesn't matter much - the
same amount of complexity is required either way.  Keep in mind
that we are planning on providing a constraint mechanism that
is a superset of that supported by PPD and that there will still
be a way to do full round-trip constraint checks through the
printing system (if supported); the latter checks are meant for
sanity checks when submitting options/jobs and not for on-the-fly
constraint checking when a user changes an option.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


