Message-ID: <3E1DA592.168DC474@Sun.COM>
Date: Thu, 09 Jan 2003 10:38:42 -0600
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------0A9DBA55E9FA7461320F4AC9"
Subject: [Printing-architecture] [Fwd: PAPI "supported" functions]
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

This is a multi-part message in MIME format.
--------------0A9DBA55E9FA7461320F4AC9
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

 
--------------0A9DBA55E9FA7461320F4AC9
Content-Type: message/rfc822
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Received: from engmail2sun.Eng.Sun.COM (engmail2sun.Eng.Sun.COM [129.144.134.19])
	by printing.eng.sun.com (8.12.5+Sun/8.12.5) with ESMTP id gB50WvMK017270
	for <jacobs@printing.Eng.Sun.COM>; Wed, 4 Dec 2002 16:32:57 -0800 (PST)
Received: from sunmail3.sfbay.sun.com (sunmail3.SFBay.Sun.COM [129.149.247.180])
	by engmail2sun.Eng.Sun.COM (8.12.2+Sun/8.12.2/ENSMAIL,v2.2) with ESMTP id gB50X7bB025526
	for <norm.jacobs@eng.sun.com>; Wed, 4 Dec 2002 16:33:07 -0800 (PST)
Received: from nwkea-mail-2.sun.com ([192.18.42.14])
	by sunmail3.sfbay.sun.com (8.11.6+Sun/8.11.6/ENSMAIL,v2.2) with ESMTP id gB50X6B18529
	for <Norm.Jacobs@sun.com>; Wed, 4 Dec 2002 16:33:06 -0800 (PST)
Received: from ariel.eastgw.xerox.com (ariel.xerox.com [208.140.33.25])
	by nwkea-mail-2.sun.com (8.9.3+Sun/8.9.3) with ESMTP id QAA24589
	for <Norm.Jacobs@sun.com>; Wed, 4 Dec 2002 16:33:02 -0800 (PST)
Received: from norman.cp10.es.xerox.com (norman.cp10.es.xerox.com [13.240.124.12])
	by ariel.eastgw.xerox.com (8.9.3/8.9.3) with ESMTP id TAA10930;
	Wed, 4 Dec 2002 19:32:38 -0500 (EST)
Received: from x-crt-es-ms1.cp10.es.xerox.com (x-crt-es-ms1 [13.240.124.41])
	by norman.cp10.es.xerox.com (8.11.6+Sun/8.9.3) with ESMTP id gB50Xea19632;
	Wed, 4 Dec 2002 16:33:40 -0800 (PST)
Received: by x-crt-es-ms1.cp10.es.xerox.com with Internet Mail Service (5.5.2653.19)
	id <XJN05866>; Wed, 4 Dec 2002 16:32:58 -0800
Message-ID: <E0BE13326C4EBC45BBC635197DEB7E3FCF0D@x-crt-es-ms1.cp10.es.xerox.com>
From: "Hastings, Tom N" <hastings@cp10.es.xerox.com>
To: Norm Jacobs <Norm.Jacobs@sun.com>
Cc: printing-spool@freestandards.org
Subject: RE:  PAPI "supported" functions
Date: Wed, 4 Dec 2002 16:32:55 -0800 
MIME-Version: 1.0
X-Mailer: Internet Mail Service (5.5.2653.19)
Content-Type: text/plain

Norm,

This thread has been moved to [printing-spool] where it should be.

1. We liked your two functions for the Miscellaneous section.

2. Ira and I found a function in your list that isn't in the PAPI v0.9 spec:

papiServiceSetServiceName			Optional API Support

3. We suggest that the papi.h file be included in the same directory as the
spec and the IPP-Object-Attributes.pdf file that is referenced from Section
9.

4. The header file should be referenced from the spec, just like the
IPP-Object-Attributes.pdf file.

5. Having the header file would also make it clear what some of the type
definitions are as well that aren't explained or defined in the spec.

6. Ira and I agree with your optional attributes, even papiJobValidate (even
though it is required in IPP).  I'll update our two profiles accordingly.

7. However, in doing the review, we realized that there are a bunch of
functions in the Services section that are a mistake and should be removed.
They are the Set and Get of the individual fields of the Service object:
UserName, Password, Encryption, AuthCB, AppData, and ServiceName.  Since all
of them (except AppData) are passed in the constructor, why not delete all
of the Set functions?  Then provide a single Get (or Query?) function which
returns all 6 of the fields of the Service object as a structure?  We think
that being able to change such fundamental things in the Service object
instance, such as UserName, Password, Authentication, is not sound.

Also having a lot of optional functions is not very useful.  Application
writers won't use them, if they are optional, since they won't always be
present.

8. What did you mean by the notation "Printer Support":

papiPrinterListJobs				Core	 Printer Support

Its the only attribute listed with "Printer Support".

Thanks,
Tom

-----Original Message-----
From: Norm Jacobs [mailto:Norm.Jacobs@sun.com]
Sent: Tuesday, December 03, 2002 15:42
To: printing-discuss@freestandards.org
Subject: [printing-meetingnotes] PAPI "supported" functions


In our last conference call, we discussed a desire to be able to
enumerate support for the various PAPI functions from a particular
PAPI implementation.  Since we are not breaking down the PAPI further
into constituent components and we are requiring unsupported functions
to return PAPI_OPERATION_NOT_SUPPORTED, It's not sufficient to simply be
able to link with the library to determine support.

Assuming that we add something, the additional calls probably belong in
the
Misc. section of the spec.  Anyway, here a couple of possible calls that
we could use to determine if a function is stubbed out or not.  

		-Norm


papiLibrarySupportedCalls()

Description

  The papiLibrarySupportedCalls() function can be called to request a
list
  of API functions that are supported in the implementation.  Support
for a
  function means that the implementation of that function is not a stub
that
  simply returns PAPI_OPERATION_NOT_SUPPORTED.

Syntax

  extern char **papiLibrarySupportedCalls();

Inputs

  none

Outputs

  none

Returns

  A NULL terminated list of supported function names.  This list should
not
  be free'd by the caller.


papiLibrarySupportedCall()

Description

  The papiLibrarySupportedCall() function can be called to determine if
a
  specific API call is supported in the implementation.	 Support for a
  function means that the implementation of that function is not a stub
  that simply returns PAPI_OPERATION_NOT_SUPPORTED.

Syntax

  extern char papiLibrarySupportedCall(char *name);

Inputs

  name		The name of the function that is being asked about

Outputs

  none

Returns

  A return of PAPI_TRUE indicates that the named function is supported
by
  the API implementation.  A return of PAPI_FALSE indicates that the the
  named function is not supported by the API implementation.


Below is a list of functions in the PAPI

papiAttributeListAdd				Core	 API Support
papiAttributeListAddString			Core	 API Support
papiAttributeListAddInteger			Core	 API Support
papiAttributeListAddBoolean			Core	 API Support
papiAttributeListAddRange			Core	 API Support
papiAttributeListAddResolution			Core	 API Support
papiAttributeListAddDatetime			Core	 API Support
papiAttributeListAddCollection			Core	 API Support
papiAttributeListDelete				Core	 API Support
papiAttributeListGet				Core	 API Support
papiAttributeListGetString			Core	 API Support
papiAttributeListGetInteger			Core	 API Support
papiAttributeListGetBoolean			Core	 API Support
papiAttributeListGetRange			Core	 API Support
papiAttributeListGetResolution			Core	 API Support
papiAttributeListGetDatetime			Core	 API Support
papiAttributeListGetCollection			Core	 API Support
papiAttributeListFree				Core	 API Support
papiAttributeListFind				Core	 API Support
papiAttributeListGetNext			Core	 API Support
papiAttributeListFromString			Optional API Support
papiAttributeListToString			Optional API Support

papiServiceCreate				Core	 API Support
papiServiceDestroy				Core	 API Support
papiServiceSetUserName				Optional API Support
papiServiceSetPassword				Optional API Support
papiServiceSetEncryption			Optional API Support
papiServiceSetAuthCB				Optional API Support
papiServiceSetAppData				Optional API Support
papiServiceSetServiceName			Optional API Support
papiServiceGetUserName				Optional API Support
papiServiceGetPassword				Optional API Support
papiServiceGetEncryption			Optional API Support
papiServiceGetAuthCB				Optional API Support
papiServiceGetAppData				Optional API Support
papiServiceGetServiceName			Optional API Support
papiServiceGetStatusMessage			Core	 API Support

papiPrintersList				Core	 API Support
papiPrinterQuery				Core	 API Support
papiPrinterModify				Optional API Support
papiPrinterPause				Optional API Support
papiPrinterResume				Optional API Support
papiPrinterPurgeJobs				Optional API Support
papiPrinterListJobs				Core	 Printer Support
papiPrinterGetAttributeList			Core	 API Support
papiPrinterFree					Core	 API Support

papiJobSubmit					Core	 Job Support
papiJobSubmitByReference			Core	 Job Support
papiJobValidate					Optional Job Support
papiJobStreamOpen				Core	 Job Support
papiJobStreamWrite				Core	 Job Support
papiJobStreamClose				Core	 Job Support
papiJobQuery					Core	 Job Support
papiJobModify					Optional Job Support
papiJobCancel					Core	 Job Support
papiJobHold					Optional Job Support
papiJobRelease					Optional Job Support
papiJobRestart					Optional Job Support
papiJobGetAttributeList				Core	 Job Support
papiJobGetPrinterName				Core	 Job Support
papiJobGetID					Core	 Job Support
papiJobGetJobTicket				Optional Job Support
papiJobFree					Core	 Job Support
papiJobListFree					Core	 Job Support

papiStatusString				Core	 API Support
papiLibrarySupportedCalls			Core	 API Support
papiLibrarySupportedCall			Core	 API Support

_______________________________________________
printing-discuss mailing list
printing-discuss@freestandards.org
http://base.freestandards.org/mailman/listinfo/printing-discuss

--------------0A9DBA55E9FA7461320F4AC9--


