Message-ID: <OF341B5F3C.677DE0AA-ON86256D41.0072A259-86256D41.00734A57@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Tue, 10 Jun 2003 15:59:16 -0500
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] Print scenario
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
To: printing-architecture@freestandards.org




The following is a scenario for an application that wants to print.
These are the steps that I think the application will perform.  What areas
in this scenario do we need to work on/standardize?

 1 enumerate print queues
      * Use Foomatic for this?

 2 display job dialog

 3 receive job properties in standardized format
      * rely on PPD file format for this?

 4 query page presentation parameters
      - size of page
      - margin information
      - resolution
      - color/monochrome
      - fonts
      * parse PPD file for this information?

 5 generate print job
      - postscript/PDF
      - html
      - plain text
      - bitmap file (png, jpg, etc)
      - SVG file
      * linux applications generate postscript files

 6 submit print job with job properties.  The queue processor will run some
      transformation.  Ex: use Ghostscript to convert postscript to printer
output.
      * CUPS will accept postscript

 7 track print job / display status
     - real-time display?

 8 receive end of job notification

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


