Message-ID: <116DB56CD7DED511BC7800508B2CA53735CF05@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] [Backend Scenarios] Call for agenda 2
	/27/03. . .
Date: Wed, 26 Feb 2003 15:35:47 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
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
To: "'HEMSTREET,CHARLES (HP-Vancouver,ex1)'" <charles.hemstreet@hp.com>, "'printing-architecture@freestandards.org'" <printing-architecture@freestandards.org>
Cc: 'Pete Zannucci' <pzaan@us.ibm.com>

Hi Charles,

We should review the Backend Scenarios that Pete Zannucci sent
out on 6 Feb (full text of Pete's note is pasted below).

Cheers,
- Ira McDonald
  High North Inc


-----Original Message-----
From: HEMSTREET,CHARLES (HP-Vancouver,ex1)
[mailto:charles.hemstreet@hp.com]
Sent: Tuesday, February 25, 2003 7:12 PM
To: 'printing-architecture@freestandards.org'
Subject: [Printing-architecture] Call for agenda 2/27/03. . .


Folks:

Looks like the listserver is back up and running.

Please send me your agenda items for our 02/27/03 architecture meeting.

Thanks,
Charles

_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

[Pete Zannucci's note]

Folks,

Here is a rather simplistic grouping of scenarios that I could
think of for the backend processing.  Please send me some
feedback and also updates since this can get to be a very deep
subject.


Backend scenarios - minus error and recovery function



1.  Raw print - preprocessing of print file prior to queueing
     ** job was rendered and formatted prior to spool

     Job Ticket
      - job ticket is evaluated for data type
      - job ticket properties are applied via sending appropriate
        device commands to the printer (driver would need to be
        involved to generate pdl from generic options)
      - job is de-spooled from the spool system
      - job is written to the output device via
        available transports
        * job could be sent through translation service as raw
          (service used for applying job ticket options) or
          written directly by the spool system to the output
          depending on what owns the access to the device

      - job is removed from spool system / queue
      - job ticket could be saved and updated

     Attributes
      - job is despooled from the spool system
      - job is written to the output device via available transport
        * as above, the job could pass through the translation
          service depending on what component owns the transport
          interface

      - job is removed from spool system / queue

2.  Postscript print - postscript printer with no rip
      - same scenarios as raw print job above
      ** issue:
         embedding the appropriate postscript commands to implement
         the job ticket function

3.  Backend rip/late binding

     Job Ticket
      - job ticket is evaluated for data type
      - job ticket properties would be sent to the translation
        service so that they can be:
          1. applied to the job for formatting/layout information
          2. passed to the translation service to have the driver
             send commands for layout/finishing options
      - job data is despooled from the spool system
      * high level language support (vector and fonts)
        - renderer and driver collaborate on what gets drawn on the
          printer and what gets simulated by rasterizing
        - renderer draws bitmap data that resolves function not
          available in the printer driver
        - driver handles the pdl to support higher level functions
          such as fonts and vector drawing
        - data is sent in multiple passes to the printer via the
          printer driver to transport interface
            * multiple passes can be:
                  1. fonts
                  2. vector commands
                  3. raster images and simulations

      * raster only support
        - renderer calls driver with raster information for job
        - driver formats bit stream for the associated output device
        - driver writes output data to the backend (transport) service

      - job is removed from spool system / queue
      - job ticket could be saved and updated

     Attributes
      - job is de-spooled from queue
      - attributes are passed to the render/driver to define layout
        and physical generation of the job
      - render and printer driver generate data for the output device
        based on the commands and attributes that combined make up
        a print job - same as function described above
      - printer driver writes data to output transport that is formatted
        appropriately for the output device

      - job is removed from spool system / queue

This document also doesn't consider things like bidirectional support,
banding, and multipass printing.  These items will take a considerable
amount of architecture work.

Thanks,


Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com



_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

