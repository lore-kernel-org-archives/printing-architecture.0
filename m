Message-ID: <OF2BBC6C3B.1DEEB77F-ON87256D12.0054DDEC@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Thu, 24 Apr 2003 10:16:44 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] Architecture meeting notes 20030424
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




Attendees:
   Ira MacDonald
   Norm Jacobs
   Mark Hamzy
   Till Kamppeter
   Pete Zannucci
   Claudia Alimpich

Notes:
1)  Ira gave an overview and status of a discussion that us going on in the
PWG regarding the Document object spec. The Document object is currently
being scrutinized. Print by reference is a concern because of security
issues (need credentials). There may be two specs, one containing the
required function and one containing optional function. It is likely that
the design will change which could affect PAPI and the JTAPI. The plan was
for PAPI to be enhanced to include Document support and the plan for JTAPI
1.0 was to include some Document level support. There are a number of PWG
notes that describes the issues. Ira will read them and summarize the
issues for us (FSG) as well as posting the detailed notes to the FSG
mailing list.

2) Mark gave an overview of the Driver schedule that the Driver working
group created on 4/21.  Code will be put on the SourceForge CVS site.
Header files will be put there for review. See the note dated "Mon, 21 Apr
2003 15:54:51 -0500" for the schedule dates. The Driver working group would
like to announce the Driver API on or before the next FSG meeting which is
scheduled for mid June 2003. Omni driver will most likely be a reference
implementation and possibly the Epson driver as well.

3) May want to target an alpha implementation for the JTAPI since the path
to getting a full function version may be too far off given the resources
that can be applied. The JTAPI working group will discuss this option and
work on a schedule during next Tuesday's wokring group meeting. We talked
about creating the header files for the JTAPI in parallel with the JTAPI
Spec where the JTAPI Spec would be a high level description of the JTAPI,
including the UML diagrams, and then point to the header files (and
describe the structure/relationships of the header files). The code and
descriptive details of the JTAPI would be in the header files. This may
enable us to produce the code interface sooner. It was also viewed to be
positive to have the detailed documentation in the header files instead of
in a separate spec.


