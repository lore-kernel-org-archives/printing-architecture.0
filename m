Return-Path: <Ide.Kentaro@exc.epson.co.jp>
Message-ID: <8A33346A3922BD4EB48A18128BAB16AB474F81@SWA6204.apo.epson.net>
From: Ide Kentaro <Ide.Kentaro@exc.epson.co.jp>
Subject: RE: [Printing-architecture] Request for comment to PCM draft
Date: Tue, 14 Feb 2006 02:36:29 +0900
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Michael Sweet' <mike@easysw.com>, "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@freestandards.org

Hi,

As Ira says, PCM don't have device discovery mechanism within itself.
PCM rely the function of device discovery on the other module of Open Printing System.
In my recogunition, Architecture-team discuss about these architecture
that iclude device discovery and device information management, so on.
After architecture fixed, PCM will be modifing specification or adjusting
in implementation for ensure consistency.

In the other hand, we, printing-japan team, design PCM specification with
existence printing system in mind but solo-PCM can't implemet to existence printing system like as CUPS.
What I'm trying to say is, combined some Open Printing module and glue code
will be coexistence with CUPS or other system.

Implementation study of Open Printing project will be serve as good example.
<http://lx1.avasys.jp/OpenPrintingProject/index_e.html>


Michael Sweet wrote
| As far as licensing goes, BSD or LGPL is suitable for the 
| code, but simple copyright (with FSG as the copyright holder) 
| should be used for the spec since you don't want to have 
| others modify the spec once it has been accepted.
| 
| That is, specifications/standards documents are normally 
| controlled by the organization that produced them...

That's right.
And we need uniform license for documents of Open Printing, doesn't?
The point of my question is it.

Anyway, I'll try to discuss a license and your comment in meeting of Printing-Japan, ongoingly.

Best regards,
Kentaro Ide
