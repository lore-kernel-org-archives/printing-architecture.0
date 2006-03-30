Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <442B870F.6010102@Sun.COM>
Date: Thu, 30 Mar 2006 01:21:51 -0600
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
References: <8A33346A3922BD4EB48A18128BAB16AB04352420@SWA6204.apo.epson.net>
In-Reply-To: <8A33346A3922BD4EB48A18128BAB16AB04352420@SWA6204.apo.epson.net>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Printing-sc] Slide contents for
	Printing summit 2006
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Ide Kentaro <Ide.Kentaro@exc.epson.co.jp>
Cc: printing-architecture@freestandards.org, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

I have converted this text to a set of StarOffice 8 / OpenOffice slides.
You can download them from
ftp://ftp.pwg.org/pub/pwg/fsg/April2006-OSDL-Printing-Summit-Slides/2006-04-10-FSG_PAPI_OSDL_Printing_Summit_Overview.pdf

ftp://ftp.pwg.org/pub/pwg/fsg/April2006-OSDL-Printing-Summit-Slides/2006-04-10-FSG_PAPI_OSDL_Printing_Summit_Overview.odp


If you send me a copy of the image that you want to include in slide 2,
I will put that in also.
Please take a look at the slides and send any comments that you might have.

-Norm

Ide Kentaro wrote:

>Hi, folks,
>
>I attach slide contents for Printing summit 2006.
>It is text based file without images.
>I'll send images to Ira later.
>
>Feel free to ask me about contents.
>
>Best regards,
>--
>Kentaro Ide
>VA Design Engineering  Group
>Seiko Epson Corp.
>
>  
>
>------------------------------------------------------------------------
>
><Slide 01>
>Over view of PCM
>	- PCM is wrapper module for device files
>	- PCM manage data channel between driver and status monitor to device
>		- Upper layer can use Bi-Di channel via PCM
>		- Status monitor can read device status without driver
>	- PCM provide API and Plug-in I/F
>		- Vender depended control sequence absobed by Plug-in
>		- Vender can make drivers with common method
>
>
><Slide 02>
>PCM diagram
>// Comment to Ira
>//  See PCM draft and I'll send you image file
>
>
><Slide 03>
>PCM APIs
>	- fsgpcmOpen()
>		Open port with specific port type and device
>	- fsgpcmClose()
>		Close port
>	- fsgpcmRead()
>		Read data from port
>	- fsgpcmWrite()
>		Write data to port
>	- fsgpcmIOControl()
>		Used to send control command
>	- fsgpcmIOError()
>		Get error code when error occured
>
>
><Slide 04>
>Status update April 2006
>	- PCM API specific will move into release procedure stage
>		- PCM draft is opened at OpenPrinting WG
>	- PCM/Draft focus to provide Vender independent Bi-Di I/F
>	  for various devices
>	- Japan team start discussion about PCM implementation
>	- Information about activity and documents
>		- WG information: <http://www.openprinting.org/moin.cgi/OpenPrinting/PrintChannelManager>
>		- Generic information: <http://www.openprinting.org/>
>
>
><Slide 05>
>Next step
>	- 2006/2Q:
>		- Review and release
>		- Start deliberate possibility of implement
>  
>
>------------------------------------------------------------------------
>
>_______________________________________________
>Printing-sc mailing list
>Printing-sc@lists.freestandards.org
>http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-sc
>  
>

