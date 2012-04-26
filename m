Return-Path: <ku.b@gmx.de>
Date: Thu, 26 Apr 2012 08:06:59 +0200 (CEST)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <1335363815.2535.0.camel@rubik>
Message-ID: <alpine.LNX.2.00.1204260704580.8774@siras.rasena>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Subject: [Printing-architecture] colord profile per-user in CUPS server
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <cyberelk11@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Tim,

the slides from last years colord presentation answere the question,
which profile will be selected inside CUPS server this way:

"Mapping the device to the profile: Preferences are per-user" [1]

Your stated during my presentation, that colord is a per system 
configuration, suggesting that only system profiles will be used inside 
CUPS server.

How does these both contrary statements go together? Will CUPS see a 
per user printer profile from colord or not?

kind regards
Kai-Uwe Behrmann
-- 
www.oyranos.org

[1] http://www.linuxfoundation.org/collaborate/workgroups/openprinting/openprinting-summit-san-francisco-2011
     https://www.linuxfoundation.org/sites/main/files/colord.pdf
