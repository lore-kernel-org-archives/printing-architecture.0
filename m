Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Feb 2009 07:21:01 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379411@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Notes for Next OP SC Phone Meeting -
	Mon/Tue - 2/3February 2009
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Till Kamppeter
Glen Petrie
Ira McDonald
Norm Jacobs=20


My comments denoted by [gwp]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The next Open Printing Steering Committee meeting will be on:

    - Monday 2 February 2009, Evening
       - US
         3pm in San Francisco - US PST (Pacific Standard Time)
         4pm in Colorado - US MST (Mountain Standard Time)
         5pm in Chicago - US CST (Central Standard Time)
         6pm in New York - US EST (Eastern Standard Time)

     - Tuesday 3 February 2009, Morning
       - Europe
         12am in Berlin - CET (Central European Time)
       - Japan
         8am in Tokyo - JST (Japan Standard Time)

     * Main Number (InstantConference.com)
       International: +1-218-936-7999
       Access Code:   491659#

Main topic will be to the organization of the OpenPrinting Summit 2009
in San Francisco.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[gwp]
Move Phone Meetings:

February 10:  9am San Francisco, 12am New York, 5pm Berlin (5pm UTC)=20
March    10: 10am San Francisco, 1 pm New York, 5pm Berlin (5pm UTC)=20
March    24: 10am San Francisco, 1 pm New York, 5pm Berlin (5pm UTC)
March    31:  9am San Francisco, 12am New York, 5pm Berlin (4pm UTC)

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[gwp] There will have a presentation during overall presentation.=20


Integrating color management as standard part into the printing workflow

     * In Mac OS X and Windows this is already standard.
     * Have a fixed place for the color profile for each print queue on
       the CUPS server
     * Let a filter or the renderer apply the profile, with standardized
       options for rendering intent, ...
     * Let us find out who has to do which part: Application, desktop,
       printing system, filters, renderer, driver, ...
     * The PDF printing workflow is already the first step towards it.

[gwp] This means defining the color space that must, should, may be
supported.  This is now a color management domain concern and they will
consulted at ht summit on what color spaces is now AND in the future.
[gwp] Output/Rendering intent needs to be added.  The JTAPI used quality
and intent to define rendering quality.  This has been a very good
definition.
[gwp] Special channel for black ink means extending any color space to
include this channel.


Printer Testing/Validation

     * Self-validation by driver developer (manufacturer/third party),
       no testing by distros or central organizations
     * Based on manufacturer-supplied driver packages and PPDs provided
       on OpenPrinting
     * Branding
     * Which criteria should be checked? How should the test procedure
       look like?
     * How should results be presented on the OpenPrinting web site?

[gwp] I will request my management to work on this project.


Printing in LSB (Linux Standards Base)

     * What will go into LSB 4.1?
[gwp] Open for discussion at the summit meeting.

     * The complete CUPS API
     * Uplift to CUPS 1.2?
[gwp] This should be changed to CUPS 1.3x.  Will make this a discussion
for the summit.

     * SANE API
[gwp] Since this is being done to support MFD, the group believe that a
MFD activity needs to be started to understand all of the standards,
drivers, GUI, etc. .... associated with MFD's


Printing part of applications

     * A lot of printing problems are caused by not very well
implemented
       printing parts of applications, like non-DSC-conforming
PostScript
       output, or missing functionality in printing dialog
     * The printing functionality of desktop application needs to be
       checked systematically, bugs and problems reported to application
       developers.
     * New standards like PDF workflow and Common Printing Dialog make
       it easier to implement high-quality printing support in
       applications.

[gwp] The scope of this was somewhat unclear and need much more
discussion at the summit meeting

Joint Meetings with workgroups of the Linux Foundation

     * Desktop Architects
     * LSB (Linux Standards Base) working group
     * Driver Backports working group





