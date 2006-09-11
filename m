Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <4505F4A8.6090401@Sun.COM>
Date: Mon, 11 Sep 2006 18:43:36 -0500
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] [Fwd: [Printing-sc] OPVP notes]
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-japan@freestandards.org, printing-driver@freestandards.org, printing-architecture <printing-architecture@freestandards.org>



-------- Original Message --------
Return-Path: 	<printing-sc-bounces@lists.freestandards.org>
Received: 	from engmail4sca.SFBay.Sun.COM (engmail4sca.SFBay.Sun.COM 
[129.145.155.74]) by printing.sfbay.sun.com (8.13.8+Sun/8.13.8) with 
ESMTP id k8BNYwrN007470 for <jacobs@printing.Eng.Sun.COM>; Mon, 11 Sep 
2006 16:34:58 -0700 (PDT)
Received: 	from sunmail5.uk.sun.com (sunmail5.UK.Sun.COM 
[129.156.85.165]) by engmail4sca.SFBay.Sun.COM 
(8.13.6+Sun/8.13.6/ENSMAIL,v2.2) with ESMTP id k8BNYNPE018704 for 
<norm.jacobs@eng.sun.com>; Mon, 11 Sep 2006 16:34:24 -0700 (PDT)
Received: 	from nwk-avmta-1.SFBay.Sun.COM (nwk-avmta-1.SFBay.Sun.COM 
[129.149.246.28]) by sunmail5.uk.sun.com 
(8.13.7+Sun/8.13.3/ENSMAIL,v2.2) with ESMTP id k8BNYKmn009769; Tue, 12 
Sep 2006 00:34:23 +0100 (BST)
Received: 	from pmxchannel-daemon.nwk-avmta-1.sfbay.Sun.COM by 
nwk-avmta-1.sfbay.Sun.COM (Sun Java System Messaging Server 6.2 (built 
Dec 2 2004)) id <0J5G00B0RC572D00@nwk-avmta-1.sfbay.Sun.COM>; Mon, 11 
Sep 2006 16:34:19 -0700 (PDT)
Received: 	from brmea-mail-3.sun.com ([192.18.98.34]) by 
nwk-avmta-1.sfbay.Sun.COM (Sun Java System Messaging Server 6.2 (built 
Dec 2 2004)) with ESMTP id <0J5G008MLC560W10@nwk-avmta-1.sfbay.Sun.COM>; 
Mon, 11 Sep 2006 16:34:19 -0700 (PDT)
Received: 	from relay12.sun.com ([217.140.40.34]) by 
brmea-mail-3.sun.com (8.13.6+Sun/8.12.9) with ESMTP id k8BNYIKW000366; 
Mon, 11 Sep 2006 17:34:18 -0600 (MDT)
Received: 	from mms13es.sun.com ([160.41.223.54] [160.41.223.54]) by 
relay12.sun.com with ESMTP; Mon, 11 Sep 2006 23:34:17 +0000 (Z)
Received: 	from relay13.sun.com (relay13.sun.com [217.140.40.54]) by 
mms13es.sun.com with ESMTP; Mon, 11 Sep 2006 23:34:16 +0000 (Z)
Received: 	from lists.freestandards.org ([216.93.165.135] 
[216.93.165.135]) by relay13.sun.com with ESMTP; Mon, 11 Sep 2006 
23:34:16 +0000 (Z)
Received: 	from mailservices.freestandards.org (localhost [127.0.0.1]) 
by lists.freestandards.org (Postfix) with ESMTP id 7AAB22801F; Mon, 11 
Sep 2006 16:34:15 -0700 (PDT)
Received: 	from localhost (localhost [127.0.0.1]) by 
lists.freestandards.org (Postfix) with ESMTP id 9BD292801F for 
<printing-sc@lists.freestandards.org>; Mon, 11 Sep 2006 16:34:13 -0700 
(PDT)
Received: 	from lists.freestandards.org ([127.0.0.1]) by localhost 
(lists.freestandards.org [127.0.0.1]) (amavisd-new, port 10024) with 
ESMTP id 18638-09 for <printing-sc@lists.freestandards.org>; Mon, 11 Sep 
2006 16:34:07 -0700 (PDT)
Received: 	by lists.freestandards.org (Postfix, from userid 72) id 
ABFF028017; Mon, 11 Sep 2006 16:34:07 -0700 (PDT)
Received: 	from mail.freestandards.org (mail.freestandards.org 
[216.93.165.137]) by lists.freestandards.org (Postfix) with ESMTP id 
8510B28017 for <printing-sc@lists.freestandards.org>; Mon, 11 Sep 2006 
16:34:07 -0700 (PDT)
Received: 	by mail.freestandards.org (Postfix) id 5381B8047; Mon, 11 Sep 
2006 16:34:07 -0700 (PDT)
Received: 	from localhost (localhost [127.0.0.1]) by 
mail.freestandards.org (Postfix) with ESMTP id 3C3118046 for 
<printing-sc@freestandards.org>; Mon, 11 Sep 2006 16:34:07 -0700 (PDT)
Received: 	from mail.freestandards.org ([127.0.0.1]) by localhost 
(mail.freestandards.org [127.0.0.1]) (amavisd-new, port 10024) with 
ESMTP id 02418-09 for <printing-sc@freestandards.org>; Mon, 11 Sep 2006 
16:33:59 -0700 (PDT)
Received: 	by mail.freestandards.org (Postfix, from userid 65534) id 
9233B8042; Mon, 11 Sep 2006 16:33:59 -0700 (PDT)
Received: 	from nwkea-mail-5.sun.com (nwkea-mail-5.sun.com 
[192.18.42.27]) by mail.freestandards.org (Postfix) with ESMTP id 
95E358042 for <printing-sc@freestandards.org>; Mon, 11 Sep 2006 16:33:58 
-0700 (PDT)
Received: 	from sfbaymail1sca.SFBay.Sun.COM ([129.145.154.35]) by 
nwkea-mail-5.sun.com (8.13.6+Sun/8.12.9) with ESMTP id k8BNXwtu021251 
for <printing-sc@freestandards.org>; Mon, 11 Sep 2006 16:33:58 -0700 (PDT)
Received: 	from printing.sfbay.sun.com (printing.SFBay.Sun.COM 
[129.146.178.26]) by sfbaymail1sca.SFBay.Sun.COM 
(8.13.6+Sun/8.13.6/ENSMAIL, v2.2) with ESMTP id k8BNXwrD015692 for 
<printing-sc@freestandards.org>; Mon, 11 Sep 2006 16:33:58 -0700 (PDT)
Received: 	from [192.9.61.56] (punchin-jacobs.SFBay.Sun.COM 
[192.9.61.56]) by printing.sfbay.sun.com (8.13.8+Sun/8.13.8) with ESMTP 
id k8BNYVpL007465 for <printing-sc@freestandards.org>; Mon, 11 Sep 2006 
16:34:31 -0700 (PDT)
Date: 	Mon, 11 Sep 2006 18:32:48 -0500
From: 	Norm Jacobs <Norm.Jacobs@sun.com>
Subject: 	[Printing-sc] OPVP notes
Sender: 	printing-sc-bounces@lists.freestandards.org
To: 	Printing-Sc (E-mail) <printing-sc@freestandards.org>
Errors-to: 	printing-sc-bounces@lists.freestandards.org
Message-id: 	<4505F220.3070704@Sun.COM>
MIME-version: 	1.0
Content-type: 	text/plain; charset=us-ascii
Content-transfer-encoding: 	7BIT
Precedence: 	list
X-BeenThere: 	printing-sc@lists.freestandards.org
Delivered-to: 	printing-sc@lists.freestandards.org
Delivered-to: 	printing-sc@freestandards.org
X-PMX-Version: 	5.2.0.264296
X-Original-To: 	printing-sc@lists.freestandards.org
X-Virus-Scanned: 	amavisd-new at freestandards.org
X-Virus-Scanned: 	amavisd-new at freestandards.org
X-Mailman-Version: 	2.1.6
List-Post: 	<mailto:printing-sc@lists.freestandards.org>
List-Subscribe: 
<http://lists.freestandards.org/mailman/listinfo/printing-sc>, 
<mailto:printing-sc-request@lists.freestandards.org?subject=subscribe>
List-Unsubscribe: 
<http://lists.freestandards.org/mailman/listinfo/printing-sc>, 
<mailto:printing-sc-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: 	<http://lists.freestandards.org/pipermail/printing-sc>
List-Help: 
<mailto:printing-sc-request@lists.freestandards.org?subject=help>
List-Id: 	Steering committee discussions between Americas/Europe/Japan 
<printing-sc.lists.freestandards.org>
User-Agent: 	Mail/News 1.5.0.4 (X11/20060731)
Content-Length: 	1103



Here are some comments on the OPVP specification from our meeting today

       -Norm

Page 9
    Add FSGPD_CSPACE_DEVICEKRGB to table

Remove any references to "at this time", which talk about the reference 
implementation.
Ex. Page 9, lines 7-8

Fix "this will be described later", include the descriptions or page 
references.
Ex. jobInfo, page 12

Page 17, specifies Attributes of Job, Document, ...

    By not specifying this in a common representation, the render(s) must
    know all possible "schemes" available by all possible drivers and
    generate
    the appropriate format for each driver.  This requires the renderers to
    maintain proprietary knowledge of all drivers.

    There doesn't appear to be coherence with JTAPI, PAPI, ... pick a
    property set to represent this data and use it between renderer
    and driver.  Let the driver translate to/from any internal
    representation
    that it may need.

_______________________________________________
Printing-sc mailing list
Printing-sc@lists.freestandards.org
http://lists.freestandards.org/mailman/listinfo/printing-sc

