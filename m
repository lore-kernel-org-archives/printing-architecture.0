Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C77E2@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Thu, 29 Jul 2004 17:29:08 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: [Printing-architecture] RE: [printing-spool] PAPI v1.0 final
	functionality
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: 'Discussion for Spool/Job/Queue API subgroup' <printing-spool@base3.freestandards.org>, printing-spool@freestandards.org, printing-architecture@freestandards.org

Hi Norm,

Note that (even as I write) the IESG is moving to approve
the final edits to the IPP Admin spec.  Given that the
IEEE/ISTO PWG has already approved IPP Document Object
(PWG 5100.5) last fall, we have solid 'standard-track'
references for these bits of functionality (finally).

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: printing-spool-bounces@base3.freestandards.org
[mailto:printing-spool-bounces@base3.freestandards.org]On Behalf Of Norm
Jacobs
Sent: Thursday, July 29, 2004 6:39 PM
To: printing-spool@freestandards.org;
printing-architecture@freestandards.org
Subject: [printing-spool] PAPI v1.0 final functionality



I am proposing that we add content to cover the following areas prior to
finalizing v1.0 of the spec.

	Creation of a Document object

	Administrative operations
		Add/Remove destination (printer/queue)
			(modify is already in the spec. but may need a
			 more complete description.)
		Enable/Disable destination (printer/queue)
			Enable/Disable job creation on a
			particular destination.
		Promote Job
			make a job the next one to process.

If there is anything else that others would like to add, please bring
it up now.  I would like to finalize the content of PAPI v1.0 in the
next few weeks so that there is some small chance that it can be
completed this fall.

	-Norm

More detail on document object interfaces will follow next week (I
hope), but I propose that the additions for new administrative
operations be as follows.

papi_status_t papiPrinterAdd(papi_service_t handle, char *printer_name,
		papi_attribute_t **attributes, papi_printer_t *printer);
INPUTS
	handle	- Handle to the print service on which to create the
		  printer object.
	name	- Name or URI of the printer to be created
	attrs	- Attributes to associate with the printer object
		  being created.
OUTPUTS
	printer	- The printer object created on the print service.
RETURNS
	If successful, a value of PAPI_OK is returned.  Otherwise an
	appropriate failure value is returned.
EXAMPLE
	papi_status_t status;
	papi_service_t svc = NULL;
	papi_attribute_t **attrs = NULL;
	papi_printer_t printer = NULL;
	...
	papiAttributeListAddString(&attrs, PAPI_EXCL,
			"device-uri", "socket://printer:9100");
	papiAttributeListAddString(&attrs, PAPI_ATTR_APPEND,
			"document-format-supported", "application/ps");
	papiAttributeListAddString(&attrs, PAPI_ATTR_APPEND,
			"document-format-supported", "text/plain");
	papiAttributeListAddInteger(&attrs, PAPI_EXCL,
			"copies-default", 3);
	...
	status = papiPrinterAdd(svc, "ipp://server/printers/triplicate",
			attrs, &result);
	papiAttributeListFree(attrs);

	if (status != PAPI_OK) {
		/* report a failure */
	}

	if (result != NULL) {
		/* dump the printer info */

		papiPrinterFree(result);
	}
	...
	papiServiceDestroy(svc);

papi_status_t papiPrinterRemove(papi_service_t handle, char
*printer_name);
INPUTS
	handle	- Handle to the print service from which to remove the
		  printer object.
	name	- Name or URI of the printer to be removed.
RETURNS
	If successful, a value of PAPI_OK is returned.  Otherwise an
	appropriate failure value is returned.
EXAMPLE
	papi_status_t status;
	papi_service_t svc = NULL;
	...
	status = papiPrinterRemove(svc, "ipp://server/printers/triplicate");
	if (status != PAPI_OK) {
		/* report a failure */
	}
	...
	papiServiceDestroy(svc);

papi_status_t papiPrinterEnable(papi_service_t handle, char
*printer_name);
INPUTS
	handle	- Handle to the print service on which to enable job
		  creation for the printer object.
	name	- Name or URI of the printer to be enabled
RETURNS
	If successful, a value of PAPI_OK is returned.  Otherwise an
	appropriate failure value is returned.
EXAMPLE
	papi_status_t status;
	papi_service_t svc = NULL;
	...
	status = papiPrinterEnable(svc, "ipp://server/printers/triplicate");
	if (status != PAPI_OK) {
		/* report a failure */
	}
	Dis.
	papiServiceDestroy(svc);

papi_status_t papiPrinterDisable(papi_service_t handle, char
*printer_name,
		char *message);
INPUTS
	handle	- Handle to the print service on which to disable job
		  creation for the printer object.
	name	- Name or URI of the printer to be disabled
	message	- an optional reason for disabling the print queue. 
RETURNS
	If successful, a value of PAPI_OK is returned.  Otherwise an
	appropriate failure value is returned.
EXAMPLE
	papi_status_t status;
	papi_service_t svc = NULL;
	...
	status = papiPrinterDisable(svc, "ipp://server/printers/triplicate",
			"because it's Tuesday");
	if (status != PAPI_OK) {
		/* report a failure */
	}
	...
	papiServiceDestroy(svc);

papi_status_t papiJobPromote(papi_service_t handle, char *printer_name,
		int32_t job_id);
INPUTS
	handle	- Handle to the print service on which the job resides.
	name	- Name or URI of the printer associated with the job.
	job_id	- Id number of the job to promote.
RETURNS
	If successful, a value of PAPI_OK is returned.  Otherwise an
	appropriate failure value is returned.
EXAMPLE
	papi_status_t status;
	papi_service_t svc = NULL;
	...
	status = papiJobPromote(svc, "ipp://server/printers/triplicate",
12);
	if (status != PAPI_OK) {
		/* report a failure */
	}
	...
	papiServiceDestroy(svc);



_______________________________________________
printing-spool mailing list
printing-spool@mail.freestandards.org
http://mail.freestandards.org/mailman/listinfo/printing-spool

