Message-ID: <OFFA850325.CE3227DE-ON86256EE8.007888D7-86256EE8.00792A6F@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Fri, 6 Aug 2004 17:03:27 -0500
MIME-Version: 1.0
Content-type: multipart/alternative; 
	Boundary="0__=09BBE47BDFEB0E478f9e8a93df938690918c09BBE47BDFEB0E47"
Content-Disposition: inline
Subject: [Printing-architecture] renderer/driver
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

--0__=09BBE47BDFEB0E478f9e8a93df938690918c09BBE47BDFEB0E47
Content-type: text/plain; charset=US-ASCII





A renderer is a program that takes a recording of drawing commands from an
application and interfaces with a printer driver (driver) to create a
print job in printer specific language.  The driver may support high level
drawing commands, accept a raster image, or handle a mixture of some high
level drawing commands with a raster image fallback.  The renderer is also
responsible for presenting the printer driver's device fonts to the
operating system.  If an application uses device fonts, then the renderer
will notify the printer driver during the print job.

The operating system may support the concept of device independent drawing
contexts.  Once these contexts are created, they can be used for drawing
on the video screen or on hardcopy output with no change to the API set
except for the initial creation.

---

A printer driver (driver) is the interface between the operating system
(OS) and a physical printer (printer).  There are many responsibilities
for a driver.  The primary responsibility is to generate print jobs from
an application.

One interface that the driver provides deals with properties.  There is a
set of properties that can change between print jobs.  These properties
are called job properties.  The job properties are divided into three
sets, 1) those properties that are defined by the OS and are supported by
the printer driver, 2) those properties that are defined by the OS and
understood by the driver but not necessarily supported by a driver and 3)
properties that are specific to each driver.  Some properties might be
supported if an optional feature of the printer is installed.  Defining
if these properties are installed/activated or not are called printer
properties.  Through the interface, applications (and spoolers) may
enumerate the properties (either one or many).  The interface also may
tell the application that constraints exist between different properties.

Another interface is dealing with print jobs.  Print jobs under linux are
generated using the Postscript language.  When the jobs are despooled,
then a rendering engine that understands Postscript will convert the
Postscript commands into a API set for the driver.  The driver will then
create a printer specific data stream that corresponds to the Postscript
commands.  Drivers may support either a set of vector drawing calls or
accept a raster bitmap or support both sets of drawing calls.

Drivers may optionally support device fonts.  When device fonts are
supported, then applications can query and use these fonts as part of the
print job.  The font metrics are provided so that the application can
position the characters on the screen using a system font if an exact font
is not available.

Drivers are asked what devices that they support.  Drivers are told to
install or remove a specific device.  They are also told that a new
version is being installed.

Drivers are responsible for bidirectional communications protocols to
their device.

Drivers may provide a color profile for their device given the current job
properties.

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/
--0__=09BBE47BDFEB0E478f9e8a93df938690918c09BBE47BDFEB0E47
Content-type: text/html; charset=US-ASCII
Content-Disposition: inline

<html><body>
<p>A renderer is a program that takes a recording of drawing commands from an<br>
application and interfaces with a printer driver (driver) to create a<br>
print job in printer specific language.  The driver may support high level<br>
drawing commands, accept a raster image, or handle a mixture of some high<br>
level drawing commands with a raster image fallback.  The renderer is also<br>
responsible for presenting the printer driver's device fonts to the<br>
operating system.  If an application uses device fonts, then the renderer<br>
will notify the printer driver during the print job.<br>
<br>
The operating system may support the concept of device independent drawing<br>
contexts.  Once these contexts are created, they can be used for drawing<br>
on the video screen or on hardcopy output with no change to the API set<br>
except for the initial creation.<br>
<br>
---<br>
<br>
A printer driver (driver) is the interface between the operating system<br>
(OS) and a physical printer (printer).  There are many responsibilities<br>
for a driver.  The primary responsibility is to generate print jobs from<br>
an application.<br>
<br>
One interface that the driver provides deals with properties.  There is a<br>
set of properties that can change between print jobs.  These properties<br>
are called job properties.  The job properties are divided into three<br>
sets, 1) those properties that are defined by the OS and are supported by<br>
the printer driver, 2) those properties that are defined by the OS and<br>
understood by the driver but not necessarily supported by a driver and 3)<br>
properties that are specific to each driver.  Some properties might be<br>
supported if an optional feature of the printer is installed.  Defining<br>
if these properties are installed/activated or not are called printer<br>
properties.  Through the interface, applications (and spoolers) may<br>
enumerate the properties (either one or many).  The interface also may<br>
tell the application that constraints exist between different properties.<br>
<br>
Another interface is dealing with print jobs.  Print jobs under linux are<br>
generated using the Postscript language.  When the jobs are despooled,<br>
then a rendering engine that understands Postscript will convert the<br>
Postscript commands into a API set for the driver.  The driver will then<br>
create a printer specific data stream that corresponds to the Postscript<br>
commands.  Drivers may support either a set of vector drawing calls or<br>
accept a raster bitmap or support both sets of drawing calls.<br>
<br>
Drivers may optionally support device fonts.  When device fonts are<br>
supported, then applications can query and use these fonts as part of the<br>
print job.  The font metrics are provided so that the application can<br>
position the characters on the screen using a system font if an exact font<br>
is not available.<br>
<br>
Drivers are asked what devices that they support.  Drivers are told to<br>
install or remove a specific device.  They are also told that a new<br>
version is being installed.<br>
<br>
Drivers are responsible for bidirectional communications protocols to<br>
their device.<br>
<br>
Drivers may provide a color profile for their device given the current job<br>
properties.<br>
<br>
Mark<br>
<br>
Take a look at the Linux Omni Printer Driver Framework at<br>
<a href="http://www.ibm.com/linux/ltc/projects/omni/">http://www.ibm.com/linux/ltc/projects/omni/</a></body></html>
--0__=09BBE47BDFEB0E478f9e8a93df938690918c09BBE47BDFEB0E47--


