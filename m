Return-Path: <glen.petrie@eitc.epson.com>
Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559C6BE@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: RE: [Printing-architecture] Notes of today's telecon
Date: Fri, 26 May 2006 07:10:16 -0700
MIME-Version: 1.0
Content-Type: text/plain
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

After looking at the last several emails I am worried that the "extra" may
get out of control with some "guidelines".

I concur with Till's recommendation about the language tag at the end of the
name.  It is easy for both humans and machine to quickly identify the
language (after using the first part to get the model).

/usr/share/ppd/{supplier}/{manufacturer}/{manufacturer}-{model}-{extra}-{lan
guage-tag}.ppd

So I think we should focus on the "extra".   Idea's

I understand that my suggestions below will increase the length and
complexity of the filename.  But I feel that the User (via a directory
listing) may want to understand/identify specific PPD files without the need
to look into each one.  Therefore, just like font files, we
may-have-to/should add extra/more information in the filename.  Also, the
extra information has to be easy to identify not just by an application.  I
feel that if we don't define the "extra" fields early in the game, then it
will be come impossible later to fix. 

1. If the extra tag information is a qualifier on the model, then the
information becomes part of the model tag.  For example,

/usr/share/ppd/foomatic/HP/HP-LaserJet_4050_ljet4-en.ppd
/usr/share/ppd/foomatic/HP/HP-LaserJet_4050_pxlmono-en.ppd

If you want to change it slightly, one could put the information in the
extra tag denoted as a model option.

2. If there are model options, it is denoted as "o_<model-options>.  For
example,

/usr/share/ppd/foomatic/HP/HP-LaserJet_4050-o_pxlmono-en.ppd
 
Since ijs is driver type (not a print supplier).  Beyond ijs, what is there?
(Note, CUPS, Guten, etc are supplier and will have a high level directory
level.)  (Are there really separate PPD's for IJS?  If so, why?)

3. If there is a driver-type extra tag, it is denoted as "d_<driver-type>";
for example 

/usr/share/ppd/foomatic/HP/HP-LaserJet_4050-d_hpijs-en.ppd

Some of the extra-tags Till illustrated are really supplier specific.  For
example, qutenprint's standard and simplified.

4. If there is supplier specific qualifier tag, it is denoted by
"s_<supplier-specific-qualifier>".  For example,

/usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-s_standard-en.ppd
/usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-s_simplified-en.ppd

---------


-----Original Message-----
From: printing-architecture-bounces@lists.freestandards.org
[mailto:printing-architecture-bounces@lists.freestandards.org] On Behalf Of
Till Kamppeter
Sent: Thursday, May 25, 2006 5:19 PM
To: Wendy Phillips
Cc: Norm Jacobs; printing-architecture
Subject: Re: [Printing-architecture] Notes of today's telecon

Norm Jacobs wrote:
> 
>    Till also suggested the "extra" tag. I'm not clear why. Till?
> 

For one and the same printer there can be more than one driver but the
PPDs come from the same supplier. There are PPDs from Foomatic for the
HP LaserJet 4050 for the "ljet4", the "pxlmono", and the "hpijs" driver
for example. Gutenprint has standard (full option set) and simplified
(reduced option set) PPDs.

Then we can do

/usr/share/ppd/foomatic/HP/HP-LaserJet_4050-ljet4-en.ppd
/usr/share/ppd/foomatic/HP/HP-LaserJet_4050-pxlmono-en.ppd
/usr/share/ppd/foomatic/HP/HP-LaserJet_4050-hpijs-en.ppd
/usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-standard-en.ppd
/usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-simplified-en.ppd

   Till

_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.freestandards.org
http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architectur
e

