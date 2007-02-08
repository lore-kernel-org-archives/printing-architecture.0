Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D100105A5DF@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Thu, 8 Feb 2007 09:01:54 -0800 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] Activity Plan for OP Architecture WG
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

Hi,

Yesterday's Open Printing Architecture telecon was attended
by Claudia Alimpich, Glen Petrie, Till Kamppeter, and me.

We discussed useful activities for the Architecture team.
Glen suggested that we focus on architectural _validation_ 
of the various OP modules.  We all agreed with this idea.


Open Pringing Architecture WG Activity Plan:

(1) Thin-thread (rapid prototype) implementation of entire
    Open Printing Subsystem, with all existing or planned
    modules (API, plus at least stub code for logging)
    - must assume embedded environment (e.g., memory and
      I/O operations must be in wrapper macros)

(2) Establishing naming and documentation conventions for
    new OP printing APIs
    - possibly a small new OP specification

(3) Standardizing licenses (e.g., MIT like JTAPI) for use
    in OP design, documentation, APIs, and modules
    - Glen - what is effect of Linux Foundation merger?

Comments?

Norm and Wendy - what do you think?

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.5.432 / Virus Database: 268.17.31/676 - Release Date: 2/8/2007
3:04 PM
 

