Message-ID: <OF651CC450.87AD1F76-ON85256C31.00782AB4@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Thu, 12 Sep 2002 08:19:01 -0500
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
Subject: [Printing-architecture] Diagram component description
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
To: printing-discuss@freestandards.org, printing-architecture@freestandards.org

Here is a description of some of the items that were on the
diagram I sent out yesterday.  It is not complete by any
means but should be good to get going on a discussion.


Components:

      Job Ticket Creator (spec currently available) -
        Facility that provides the necessary function
        to be able to formulate job tickets for a
        print job.  These job tickets need to have
        the ability to store settings based on the
        current configuration.

      PAPI (Print API - spec currently available) -
        The glue code and standardized interfaces to
        allow for querying of printer properties along
        with the ability to do job submission with a
        Job Ticket.  This grouping of APIs should be
        the window with which to access the print
        system basic function for queue and job info.

      Rendering Engine (Ghostscript - ESP/GPL) -
        This component will be for generating the
        raster output and provide high level graphics
        mapping support for any simulations that need
        to occur.  It should also provide an interface
        with which to connect the printer driver and
        allow for accelerated graphics support that may
        be provided by the driver e.g. high level
        filtering or drawing primitive support.

      Spooler (CUPS, LPRng, ....) -
        Provide the ability to store a series of jobs
        to disk while the jobs are awaiting printing.

      Queue Mgr -
        Manages the connections between the spooler
        and the output device along with providing a
        single connection concept back to the application
        no matter what number of printers are physically
        attached to that queue.

      Backend support/classifier for filtering -
        This allows for the use of multiple features.
            - Provide knowledge of job ticket support and
              when the filter or printer needs to handle
              the job ticket.
            - Classifier to have knowledge of what the
              input is and what the output is to know
              what transformation (via gs or other filters)
              needs to occur for the print file.
            - Has the ability to route the job to the
              appropriate backend/filter support.
        There can be any number of schemes for doing translation
        on files.  The particular translation service needs
        to be able to plug into the architecture and make its
        services information available to this classifier
        support to allow for proper routing of the job to
        the correct translation service so their could be
        an implied registration scheme.


      Printer Driver (Gimp, CUPS, Omni) -
        Supports the generation of the PDL for the connected
        printer.  It will convert the incoming stream to
        a printer ready format that can be printed.

      Standard Backend -
        Support for standard types of interfaces to a printer.
        Those are typically local parallel, lan, USB, etc.
        It also provides an interface for remoted spooling.  The
        job could be remoted to a different spool system in
        this process.

      Bidirectional plug in -
        Component that has the ability to provide a mapping
        between the vendor specific protocol to a system
        api that allows for information about the printer.
        Typical uses for this data are to provide information
        about the printer such as ink/toner levels, errors,
        configuration information, and printer/job status.


Interfaces:

      Printing Interface (PAPI - currently ver. 0.5 ) -
        Allows for working with the particular objects in the
        print system such as the queue, printer, and jobs.
        This interface will allow for querying of the standard
        attributes of a printer and being able to set those
        attributes, allow for the utilization of a job ticket,
        and selection of various job and queue manipulation
        functions

      Graphics API -
        Allows for drawing to occur on what could be considered
        the logical output page of the printer.  This API should
        interface into library support that will validate the
        API information and generate the appropriate output
        commands in some portable format.  It then can be used to
        generate the actual physical page information later based
        on the target printer and features that it provides.

      Capabilities Interface (currently being discussed) -
        This will allow for the querying the actual physical
        characteristics of the page and if needed the device.
        This "hardcopy" information should be based on the queue
        or single printer information to allow the job to be
        rendered as close to what the user asked for when the
        job is submitted.

      Printer Driver Interface (HPIJS, IJS, PDC) -
        Allows for plugging in printer drivers (filters) under
        a rendering or translation system.  This should be a
        standardized interface so that drivers from different
        projects or vendors can plug into the print system
        without worrying what distribution or spool system it
        is.

      Job Ticket API (JTAPI) -
        Allows an application to call the job ticket creator so
        that the application can generate a job ticket that can
        be submitted along with the job.


Database/Configuration Files:

      Queue Configuration -
        Stores the current device configuration.  This
        would be the device settings such as paper,
        trays (w/connections), and options settings.

      JT/Job Properties Store -
        A storage mechanism or database for storing
        Job Tickets or a representation of a particular
        job or document's settings.

      Job Store -
        The actual job that will generate the output
        data or the actual PDL if the job is raw.  The
        jobs should have the ability to be pulled based
        on a reference contained in the Job Ticket.

Misc:

      Service Provider for printer lookup -
        A component that can provide information as to
        printers that are accessible by a user.




Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com



