Message-ID: <OF27AFA33A.01E32C4E-ON86256CF5.0081F563-86256CFA.00778122@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Mon, 31 Mar 2003 15:45:18 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] FSG Printer Working Group conference call 04/02/03
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




Wednesday, April 2

GMT 19:00
EST 14:00
CST 13:00
MST 12:00
PST 11:00

Tie Line:    650-3239
Toll Free:   1-800-497-2024
Toll Number: 1-719-457-3821
Passcode:     160458

Topics

Talk about API calls

initialize session ( "client version" )
<- "server version"

close session

is command supported ( cmd )
<- success/failure

set translatable language ( "abbreviationX" )
<- success/failure

get translatable language
<- "abbreviationX"

query translatable languages
<- "abbreviation1 abbreviation2 ... abbreviationN"

enumerate devices
<- "display_device_string1 load_hints1 ... display_device_stringN load_hintsN"

select device ( "load_hintsX" )
<- success/failure

is device valid ( "load_hintsX" )
<- success/failure

get PDL info
<- "PDL info"

query current job properties
<- "key1=value1 key2=value2 ... keyN=valueN"

list job property keys
<- "key1 key2 ... keyN"

get job property ( "key" )
<- "value"

get job property type ( "key" )
<- string/integer/boolean/...

translate job property key/value ( "key=value" )
<- "display_key=display_value"

begin job
<- success/failure

start page
<- success/failure

end page
<- success/failure

end job
<- success/failure

abort page
<- success/failure

abort job
<- success/failure

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


