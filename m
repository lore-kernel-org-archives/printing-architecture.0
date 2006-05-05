Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EDFE@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 5 May 2006 09:32:46 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C67061.7FD1B1AC"
Subject: [Printing-architecture] FW: PWG - New PMP Projects approved
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C67061.7FD1B1AC
Content-Type: text/plain;
	charset="ISO-8859-1"

Hi,
 
The PWG Steering Committee has approved two new related
(but independent) projects in the PWG MIBs WG:
 
(1) MFP Alerts (and SNMP Traps) extension to Printer MIB v2
     (a) new enumerations for the PrtAlertGroupTC (for scanner)
     (b) new enumerations for the PrtAlertCodeTC (if needed)
     - Ron Bergman, editor
     - when registered with IANA, these new enumerations will
       allow immediate alerts (including description and severity)
       for subunits of other "devices" in an MFP (scanner, etc.).
 
(2) Imaging System MIB that corresponds to WIMS object model
     (a) Groups - System, Service, Device (optional), and Subunits
     (b) Simple content - state, description, links to HR and Prt MIBs
     - Ira McDonald, editor
 
A draft of the IS MIB is posted at:
 
   HYPERLINK
"ftp://ftp.pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib"ftp://ftp.
pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib
 
When the IS MIB is finished, the group references in prtAlertTable
will resolve to actual state/state-message/description variables.
 
Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com 

-----Original Message-----
From: pmp-owner@pwg.org [mailto:pmp-owner@pwg.org]On Behalf Of Harry Lewis
Sent: Thursday, May 04, 2006 4:32 PM
To: pmp@pwg.org; pwg-announce@pwg.org
Subject: PMP> New PMP Projects approved



The PWG Steering Committee has approved two new projects of the PMP Working
Group. Ron Bergman (PMP Chairman) has posted a schedule with milestones. 
HYPERLINK
"ftp://ftp.pwg.org/pub/pwg/pmp/ProjectSchedules/MFP-PRINTER-MIB-PROJECT.pdf"
ftp://ftp.pwg.org/pub/pwg/pmp/ProjectSchedules/MFP-PRINTER-MIB-PROJECT.pdf 

The two approved projects are   


1. MFP Alerts - a tactical extension of the Printer MIB to include Basic MFP
alerts 


2. Imaging System MIB for MFP Services (devices optional) 


Ira has posted a proposed MFD MIB draft. 
HYPERLINK
"ftp://ftp.pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib"ftp://ftp.
pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib 

A third project has been postponed until further definition of the
requirements. 

3. Extensions to IETF Host Resources MIB to address MFP devices, including
new device types for Scan, Fax etc and extension of
hrPrinterDetectedErrorState. 

Proposals and participation related to these new projects are being
solicited. Please respond to PMP@PWG.ORG. Please DO NOT reply to
"pwg-announce". 

---------------------------------------------- 
Harry Lewis 
IBM STSM
Chairman - IEEE-ISTO Printer Working Group
http://www.pwg.org
IBM Printing Systems 
http://www.ibm.com/printers
303-924-5337
---------------------------------------------- 
--
No virus found in this incoming message.
Checked by AVG Free Edition.
Version: 7.1.392 / Virus Database: 268.5.4/332 - Release Date: 5/4/2006



-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.392 / Virus Database: 268.5.4/332 - Release Date: 5/4/2006
 

------_=_NextPart_001_01C67061.7FD1B1AC
Content-Type: text/html;
	charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3DISO-8859-1">


<META content=3D"MSHTML 6.00.2800.1528" name=3DGENERATOR></HEAD>
<BODY>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>Hi,</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>The=20
PWG Steering Committee has approved two new related</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>(but=20
independent) projects in the PWG MIBs WG:</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>(1)=20
MFP Alerts (and SNMP Traps) extension to Printer MIB =
v2</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(a) new =
enumerations for=20
the PrtAlertGroupTC (for scanner)</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp; (b) new =
enumerations for the=20
PrtAlertCodeTC (if needed)</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp; - Ron Bergman,=20
editor</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp; - when registered =
with IANA,=20
these new enumerations will</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; allow =
immediate=20
alerts (including description and severity)</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for =
subunits of=20
other "devices" in an MFP (scanner, etc.).</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>(2)=20
Imaging System MIB that corresponds to WIMS object =
model</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp; (a) Groups - =
System, Service,=20
Device (optional), and Subunits</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp; (b) Simple content =
- state,=20
description, links to HR and Prt MIBs</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;&nbsp;&nbsp; - Ira McDonald,=20
editor</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>A=20
draft of the IS MIB is posted at:</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>&nbsp;&nbsp;<A=20
href=3D"ftp://ftp.pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib=
">ftp://ftp.pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib</A></=
SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>When=20
the IS MIB is finished, the group references in=20
prtAlertTable</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>will=20
resolve to actual state/state-message/description variables.</SPAN></FON=
T></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN=20
class=3D506231716-05052006>Cheers,</SPAN></FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D4><SPAN =
class=3D506231716-05052006>-=20
Ira</SPAN></FONT></DIV>
<P><FONT size=3D2>Ira McDonald (Musician / Software Architect)<BR>Blue =
Roof Music=20
/ High North Inc<BR>PO Box 221&nbsp; Grand Marais, MI&nbsp; =
49839<BR>phone:=20
+1-906-494-2434<BR>email: imcdonald@sharplabs.com</FONT> </P>
<DIV class=3DOutlookMessageHeader dir=3Dltr align=3Dleft><FONT =
face=3DTahoma=20
size=3D2>-----Original Message-----<BR><B>From:</B> pmp-owner@pwg.org=20
[mailto:pmp-owner@pwg.org]<B>On Behalf Of </B>Harry =
Lewis<BR><B>Sent:</B>=20
Thursday, May 04, 2006 4:32 PM<BR><B>To:</B> pmp@pwg.org;=20
pwg-announce@pwg.org<BR><B>Subject:</B> PMP&gt; New PMP Projects=20
approved<BR><BR></FONT></DIV><BR><FONT face=3Dsans-serif size=3D3>The =
PWG Steering=20
Committee has approved two new projects of the PMP Working Group. Ron =
Bergman=20
(PMP Chairman) has posted a schedule with milestones.</FONT> <BR><A=20
href=3D"ftp://ftp.pwg.org/pub/pwg/pmp/ProjectSchedules/MFP-PRINTER-MIB-P=
ROJECT.pdf"><FONT=20
face=3Dsans-serif color=3Dblue=20
size=3D3>ftp://ftp.pwg.org/pub/pwg/pmp/ProjectSchedules/MFP-PRINTER-MIB-=
PROJECT.pdf</FONT></A>=20

<P><FONT face=3Dsans-serif size=3D3>The two approved projects are =
&nbsp;</FONT>=20
<P><FONT face=3Dsans-serif size=3D3>1. MFP Alerts - a tactical =
extension of the=20
Printer MIB to include Basic MFP alerts</FONT>=20
<P><FONT face=3Dsans-serif size=3D3>2. Imaging System MIB for MFP =
Services (devices=20
optional)</FONT>=20
<P><FONT face=3Dsans-serif size=3D3>Ira has posted a proposed MFD MIB =
draft.=20
</FONT><BR><A=20
href=3D"ftp://ftp.pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mib=
"><FONT=20
face=3Dsans-serif color=3Dblue=20
size=3D3>ftp://ftp.pwg.org/pub/pwg/pmp/wd/wd-pmpimagingmib10-20060418.mi=
b</FONT></A>=20
<BR><BR><FONT face=3Dsans-serif size=3D3>A third project has been =
postponed until=20
further definition of the requirements.</FONT> <BR><BR><FONT =
face=3Dsans-serif=20
size=3D3>3. Extensions to IETF Host Resources MIB to address MFP =
devices,=20
including new device types for Scan, Fax etc and extension of=20
hrPrinterDetectedErrorState.</FONT> <BR><BR><FONT face=3Dsans-serif=20
size=3D3><B>Proposals and participation related to these new projects =
are being=20
solicited. Please respond to PMP@PWG.ORG. Please DO NOT reply to=20
"pwg-announce".</B></FONT> <BR><BR><FONT face=3Dsans-serif=20
size=3D2>---------------------------------------------- <BR>Harry Lewis =
<BR>IBM=20
STSM<BR>Chairman - IEEE-ISTO Printer Working =
Group<BR>http://www.pwg.org<BR>IBM=20
Printing Systems=20
<BR>http://www.ibm.com/printers<BR>303-924-5337<BR>---------------------=
-------------------------=20
</FONT><BR><FONT size=3D2>--<BR>No virus found in this incoming=20
message.<BR>Checked by AVG Free Edition.<BR>Version: 7.1.392 / Virus =
Database:=20
268.5.4/332 - Release Date: 5/4/2006<BR></FONT></P></BODY></HTML>
<BR>

<P><FONT SIZE=3D2>--<BR>
No virus found in this outgoing message.<BR>
Checked by AVG Free Edition.<BR>
Version: 7.1.392 / Virus Database: 268.5.4/332 - Release Date: =
5/4/2006<BR>
</FONT> </P>

------_=_NextPart_001_01C67061.7FD1B1AC--
