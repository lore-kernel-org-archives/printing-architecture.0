Message-ID: <OF904F8B2C.AAC37CCF-ON86256CFC.0083863B-86256CFD.000098E1@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Wed, 2 Apr 2003 18:06:31 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] FSG Printing Driver meeting notes 04/02/03
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
To: printing-driver@freestandards.org
Cc: printing-architecture@freestandards.org




Attendees:

Mark Hamzy
Till Kamppeter
Helen Ko
Ira McDonald
Kevin Nuwer
Glen Petrie
Pete Zannucci

There were two issues that came up during the call.  Everyone had different
semantic interpretations of words used in this standard.  The other problem
was that there are different views of how the architecture should look
like.

We need to use a common an consistent naming scheme of API verbs.
   begin/initialize
   everything (getAll) vs one
inside/outside job

> * what are the top level messages?
> * should we use a message header format and if so, how should it be
encoded?
>
> Talk about API calls
>
> initialize session ( "client version" )
> <- "server version"

This call is used to initialize the library before talking to a driver.

An API will be added to query the installed drivers.  Once a driver
is chosen, there will be APIs to initialize the driver and to close the
driver.

> close session
>
> is command supported ( cmd )
> <- success/failure
>
> set translatable language ( "abbreviationX" )
> <- success/failure
>
> get translatable language
> <- "abbreviationX"
>
> query translatable languages
> <- "abbreviation1 abbreviation2 ... abbreviationN"
>
> enumerate devices
> <- "display_device_string1 load_hints1 ... display_device_stringN
load_hintsN"

The hints are opaque to an application.  The application is not supposed to
read or modify them but to pass them back to the driver.

It is mandatory that there are unique display_device strings.

It was suggested to change the name from load_hints to load_handle.

This handle should not be kept in persistent storage but only used during
the communications session.

> select device ( "load_hintsX" )
> <- success/failure
>
> is device valid ( "load_hintsX" )
> <- success/failure

We will remove this API.

> get PDL info
> <- "PDL info"
>
> query current job properties
> <- "key1=value1 key2=value2 ... keyN=valueN"
>
> list job property keys
> <- "key1 key2 ... keyN"
>
> get job property ( "key" )
> <- "value"
>
> get job property type ( "key" )
> <- string/integer/boolean/...
>
> translate job property key/value ( "key=value" )
> <- "display_key=display_value"
>
> begin job
> <- success/failure
>
> start page
> <- success/failure

We need to add an option set of new properties to use.

> end page
> <- success/failure
>
> end job
> <- success/failure
>
> abort page
> <- success/failure
>
> abort job
> <- success/failure

Two new APIs were suggested:
   - suspend job
   - continue job
These were for spoolers that might hold/release print jobs.

Other new APIs are
   - font metrics
      + install
      + query
   - color management
   - bidirectional communication

We agreed that printer properties are also required to be supported
by drivers.

We gave some initial properties that should be considered
   - printer properties
      + ink cartridges
      + forms in trays
      + memory
      + duplexer
      + fonts installed

   - job properties
      + form
      + input-tray
      + media-coating
      + media-color
      + media-type
      + resolution
      + orientation
      + duplex
      + nup
      + scaling
      + collation
      + booklet
      + output-bin
      + stapling
      + jogging
      + stapling
      + hole-punching
      + folding
      + quality

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


