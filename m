Message-ID: <OF6DE329D6.3E4FBB80-ON86256E85.0066ABF1-86256E85.0066B424@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Thu, 29 Apr 2004 13:41:47 -0500
MIME-Version: 1.0
Content-type: multipart/alternative; 
	Boundary="0__=09BBE416DFF52D618f9e8a93df938690918c09BBE416DFF52D61"
Content-Disposition: inline
Subject: [Printing-architecture] RE: [printing-driver] More Vector Driver
	questions and Job
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
Cc: Discussion for the driver API subgroup <printing-driver@base3.freestandards.org>, printing-driver@freestandards.org, printing-japan@freestandards.org, printing-architecture@freestandards.org, printing-driver-bounces@base3.freestandards.org

--0__=09BBE416DFF52D618f9e8a93df938690918c09BBE416DFF52D61
Content-type: text/plain; charset=US-ASCII





> As for User selectable printer capabilities I
> wrote the email in response to this capability brought up in the driver
> meeting.  My support for this will be based on the feedback from these
> emails.  Actually, I currently see the printer capability as fixed (by
the
> PPD or UPDF or ???) and not having any User selection. If there are
> differing printer capabilities shouldn't there be separate descriptors!
But
> I would like to hear other individual's opinions.

PPDs have user selection in them.  They define what forms, trays, medias,
and
resolutions to use.  They can also define what hardware features are
installed
on the printer such as extra trays or a duplexing unit.

> Let me also state that I strongly believe any vector driver library
> conforming to the specification required to be fully supported all of
vector
> driver API's. It is up to the individual vector driver library to "figure
> out" how to execute each API call not do a selected few.   Otherwise it
> leaves the responsibility to a higher level process to determine how and
> to-do part of the vector rendering.   This places a requirement that
there
> be a higher level renderer process to support vector printing; why?  This
> seems to complicate the situation - it could mean a generic higher level
> renderer would have to, in theory, support all of the vector driver
API's!

Forcing a printer driver to support all high level calls will make it
harder for people to write printer drivers.  When there are a large number
of vector APIs that must be hooked out before a device is supported, it
requires that every API must be written before everything prints out.  Not
every device may support all of the vector calls.  There may even be
devices that only support a few of the calls.  Then those devices will
have to write code that simulate the non-supported vector calls into a
bitmap.  This will then mean that many devices will have the same set of
code that does this raster simulation.  Each driver can then have its own
set of bugs.

By requiring the renderer (ghostscript) to support all vector calls, it
allows drivers to support a few high level calls at a time.  This
simplifies driver development.  It also reduces bugs since the common
rendering code is within one component.  If a bug is fixed there, it will
fix every driver.

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/
--0__=09BBE416DFF52D618f9e8a93df938690918c09BBE416DFF52D61
Content-type: text/html; charset=US-ASCII
Content-Disposition: inline

<html><body>
<p>&gt; As for User selectable printer capabilities I<br>
&gt; wrote the email in response to this capability brought up in the driver<br>
&gt; meeting.  My support for this will be based on the feedback from these<br>
&gt; emails.  Actually, I currently see the printer capability as fixed (by the<br>
&gt; PPD or UPDF or ???) and not having any User selection. If there are<br>
&gt; differing printer capabilities shouldn't there be separate descriptors! But<br>
&gt; I would like to hear other individual's opinions.<br>
<br>
PPDs have user selection in them.  They define what forms, trays, medias, and<br>
resolutions to use.  They can also define what hardware features are installed<br>
on the printer such as extra trays or a duplexing unit.<br>
<br>
&gt; Let me also state that I strongly believe any vector driver library<br>
&gt; conforming to the specification required to be fully supported all of vector<br>
&gt; driver API's. It is up to the individual vector driver library to &quot;figure<br>
&gt; out&quot; how to execute each API call not do a selected few.   Otherwise it<br>
&gt; leaves the responsibility to a higher level process to determine how and<br>
&gt; to-do part of the vector rendering.   This places a requirement that there<br>
&gt; be a higher level renderer process to support vector printing; why?  This<br>
&gt; seems to complicate the situation - it could mean a generic higher level<br>
&gt; renderer would have to, in theory, support all of the vector driver API's!<br>
<br>
Forcing a printer driver to support all high level calls will make it<br>
harder for people to write printer drivers.  When there are a large number<br>
of vector APIs that must be hooked out before a device is supported, it<br>
requires that every API must be written before everything prints out.  Not<br>
every device may support all of the vector calls.  There may even be<br>
devices that only support a few of the calls.  Then those devices will<br>
have to write code that simulate the non-supported vector calls into a<br>
bitmap.  This will then mean that many devices will have the same set of<br>
code that does this raster simulation.  Each driver can then have its own<br>
set of bugs.<br>
<br>
By requiring the renderer (ghostscript) to support all vector calls, it<br>
allows drivers to support a few high level calls at a time.  This<br>
simplifies driver development.  It also reduces bugs since the common<br>
rendering code is within one component.  If a bug is fixed there, it will<br>
fix every driver.<br>
<br>
Mark<br>
<br>
Take a look at the Linux Omni Printer Driver Framework at<br>
<a href="http://www.ibm.com/linux/ltc/projects/omni/">http://www.ibm.com/linux/ltc/projects/omni/</a></body></html>
--0__=09BBE416DFF52D618f9e8a93df938690918c09BBE416DFF52D61--


