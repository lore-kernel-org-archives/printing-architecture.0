Message-ID: <e395be80806091616s6d4d19deg56a82e259003efe2@mail.gmail.com>
Date: Mon, 9 Jun 2008 19:16:43 -0400
From: "Ira McDonald" <blueroofmusic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Subject: [Printing-architecture] Proposal for Open Printing CIM Provider
	[OPCIMP]
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, PWG Steering Committee <sc@pwg.org>, NancyChen <nchen@okidata.com>, Ira McDonald <blueroofmusic@gmail.com>

Hi,

Per our discussion during the Open Printing Steering Committee meeting
last week, here's a brief description of a proposed joint PWG/OP project
that would develop an open source reference implementation of an Open
Printing CIM Provider [OPCIMP] (i.e., a proxy from the SNMP Printer MIB
to CIM MOF and XML Schema classes for web services management).

Comments?

Cheers,
- Ira

-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
 579 Park Place Saline, MI 48176
 734-944-0094
summer:
 PO Box 221 Grand Marais, MI 49839
 906-494-2434
------------------------------------------------------------------------

                            Background

(1) In the last three years, Rick Landau (Dell), Craig Whittle (Sharp),
    and Ira McDonald (High North) have translated all of the Printer MIB
    tables into a set of CIM (Core Information Model) classes in MOF
    (Managed Object Format):

    (a) Printer MIB v2 Print Device classes are now complete.

    (b) Counter MIB v2 Imaging Counter classes are in progress.

    (c) Print Service classes (per IPP/1.1) will be done later.

    (d) Scan Service classes (per PWG MFD WG) will be done later.

(2) DMTF now machine translates the CIM MOF into XML Schema for:

    (a) DMTF WS-MAN WG (Web Services Management protocol)
        - http://www.dmtf.org/standards/wsman/

    (b) DMTF CIM-XML (pre-WS-MAN)
        - http://www.dmtf.org/standards/wbem/CIM-XML

    (c) OASIS WSDM (other major public WS mgmt protocol)
        - http://www.oasis-open.org/committees/wsdm/
        - http://docs.oasis-open.org/wsdm/wsdm-muws1-1.1-spec-os-01.htm
        - http://docs.oasis-open.org/wsdm/wsdm-muws2-1.1-spec-os-01.htm
        - http://docs.oasis-open.org/wsdm/wsdm-mows-1.1-spec-os-01.htm

(3) Rick Landau (Dell) is building a prototype of the CIM Print Classes:

    (a) DMTF Process requires two independent implementations to move
        classes and properties from CIM Experimental to CIM Final.

    (b) Rick hopes to release algorithms (but not the "Dell secret
        sauce" XML provider internals) to map SNMP objects from the
        Printer MIB into CIM MOF Print Classes (and thence into XML
        Schema instances).

(4) Nancy Chen (Okidata) recently asked in the PWG Steering Committee
    about an open source WS-MAN CIM Provider (i.e., proxy) that speaks:

    (a) SNMP to the Printer MIB in existing printers

    (b) WS-MAN to upstream management stations

(5) Some PWG Steering Committee members have reservations about a PWG
    open source project:

    (a) PWG has no experience with open source projects.

    (b) Possible alternatives will be discussed during the PWG Plenary
        at the next PWG face-to-face in Colorado in late June.

    (c) There may be further discussion in the WIMS-CIM WG session.

(6) Ira McDonald (OP Chair) has suggested a joint PWG/OP project.

    (a) Ira would mentor implementors (printer manufacturers, students,
        consultants, etc.).

    (b) Ira would provide liason to PWG from OP.

------------------------------------------------------------------------

            Open Printing CIM Provider (OPCIMP) Project

(1) Use an existing open source CIM project, so that the OPCIMP would
    run on Windows, Apple Mac, UNIX, Linux, etc.  Possibilities include:

    (a) Open CIM (Java based)
        http://opencim.org/

    (b) Open Group's OpenPegasus (C++ based)
        http://www.openpegasus.org/

    (c) Open WBEM (C++ based)
        http://openwbem.sourceforge.net/

    (d) SBLIM (C++ and Java based) - GNU/Linux systems
        http://sblim.wiki.sourceforge.net/

    (e) SFCB [Small Footprint CIM Broker] (C based for embedded systems)
        http://sblim.wiki.sourceforge.net/Sfcb

(2) Implement 100% coverage of CIM Print Device classes (Printer MIB v2
    and Finisher MIB v1 objects) - see attached 'Visio-Printer_15.pdf'

    CIM Class - SNMP MIB Table

    CIM_Printer
    - prtGeneralTable
    - prtConsoleDisplayBufferTable
    - prtLocalizationTable
    CIM_PrintAlertRecord
    - prtAlertTable
    CIM_PrintChannel
    - prtChannelTable
    CIM_PrintFinisher
    - finDeviceTable
    CIM_PrintInputTray
    - prtInputTable
    CIM_PrintInterlock
    - prtCoverTable
    CIM_PrintInterpreter
    - prtInterpreterTable
    CIM_PrintMarker
    - prtMarkerTable
    CIM_PrintMediaPath
    - prtMediaPathTable
    CIM_PrintOutputTray
    - prtOutputTable
    CIM_PrintSupply
    - prtMarkerSuppliesTable
    - prtMarkerColorantTable

(3) Implement incremental SNMP support (with existing libraries):

    (a) SNMPv1-Community first (universally supported by printers)

    (b) SNMPv2-Community second (for performance)

    (c) SNMPv3-User third (tricky due to security configuration)

(4) Build source packages and possibly binary packages for several
    desktop/workstation platforms (Windows, OpenSolaris, Linux, etc.)

------------------------------------------------------------------------
