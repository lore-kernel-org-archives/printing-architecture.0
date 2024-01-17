Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FFB747C
	for <printing-architecture@lists.linux-foundation.org>; Wed, 17 Jan 2024 02:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=140.211.166.133
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705460064; cv=fail; b=UUpgAxoXnm4lGior5vxNzerquCiMtmXIN5a10f1hO3WHAPXvg0nDQ1eg92Q1prQg+V5TZPc2bDsa2q+442qAW6nHOmXUAPdEDPrGAsSjT1PAINKYyjSey6l1gcTyCMiwa9DgYIfYSIMQTOT3misQKIZGGVioO1ivsEa9DonBbK8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705460064; c=relaxed/simple;
	bh=B3Mf3SY+WE+A3HJM3ksBxGjgjxHIYCkyw2cnf+9/+vI=;
	h=Received:DKIM-Filter:X-Virus-Scanned:X-Spam-Flag:X-Spam-Score:
	 X-Spam-Level:X-Spam-Status:Received:Received:DKIM-Filter:
	 DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:Received:
	 ARC-Message-Signature:ARC-Authentication-Results:DKIM-Signature:
	 Received:Received:From:To:Subject:Thread-Topic:Thread-Index:Date:
	 Message-ID:References:In-Reply-To:Accept-Language:Content-Language:
	 X-MS-Has-Attach:X-MS-TNEF-Correlator:msip_labels:
	 x-ms-publictraffictype:x-ms-traffictypediagnostic:
	 x-ms-office365-filtering-correlation-id:
	 x-ms-exchange-senderadcheck:x-ms-exchange-antispam-relay:
	 x-microsoft-antispam:x-microsoft-antispam-message-info:
	 x-forefront-antispam-report:
	 x-ms-exchange-antispam-messagedata-chunkcount:
	 x-ms-exchange-antispam-messagedata-0:Content-Type:
	 Content-Transfer-Encoding:MIME-Version:
	 X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount:
	 X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:X-OriginatorOrg:
	 X-MS-Exchange-CrossTenant-AuthAs:
	 X-MS-Exchange-CrossTenant-AuthSource:
	 X-MS-Exchange-CrossTenant-Network-Message-Id:
	 X-MS-Exchange-CrossTenant-originalarrivaltime:
	 X-MS-Exchange-CrossTenant-fromentityheader:
	 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
	 X-MS-Exchange-CrossTenant-userprincipalname:
	 X-MS-Exchange-Transport-CrossTenantHeadersStamped; b=Z6ZiiIpTHFs/8A2fXk3S4caVSQ693oI7F0B3QaJUDhM06WQeeBW7jks1qLqtCM35pPVz5JrE8Ckvqqqz8AhKPj4jmfwCyRGs9D02CgS9R2O04HsWke1+r7vPHv3wvBa3sj27oKyqq7kjHNjOj1vbkLyJjHlMt40ERHXsayfzxcU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=JC0hQH81; dkim=pass (1024-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=fVABXqiZ; arc=fail smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="JC0hQH81";
	dkim=pass (1024-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="fVABXqiZ"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F16541A27
	for <printing-architecture@lists.linux-foundation.org>; Wed, 17 Jan 2024 02:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F16541A27
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=uq.edu.au header.i=@uq.edu.au header.a=rsa-sha256 header.s=s1ces header.b=JC0hQH81;
	dkim=pass (1024-bit key, unprotected) header.d=uq.edu.au header.i=@uq.edu.au header.a=rsa-sha256 header.s=selector1 header.b=fVABXqiZ
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -4.402
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5HFa0tWJyJ0K
	for <printing-architecture@lists.linux-foundation.org>;
	Wed, 17 Jan 2024 02:54:18 +0000 (UTC)
Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.29.120])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A2E5640614
	for <printing-architecture@lists.linux-foundation.org>; Wed, 17 Jan 2024 02:54:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2E5640614
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1705460058;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=B3Mf3SY+WE+A3HJM3ksBxGjgjxHIYCkyw2cnf+9/+vI=;
  b=JC0hQH81/M2tK7c08eXx0Cq1UQfOP9IJue4PcjVrzhlyIt1VEAW3EAky
   2FzTZPdG0/vcdc4wTm4tLdlw1SZY9h4HQxQz6xXzPGIfEGskajZeaMjVq
   l7RmYM7uAKO6ThUCV8ezmIjCWQm5Q94Kzd8gAcwz/Q1IlFfxo8VlluQbE
   /we98V0Zb02vQBupf7r87B6Wb2mQGPxkSna26oWaywjQwPcTLOl8EoiKR
   6nbRd1uZK3Q4VatC8Wiy4WLptHFznxBW8L68A7TkN5IUV5zYHZZa85lRq
   JTQhdt1xIcaKJZANpnqUtflUWGrr6q+irSJzr7HoSDW+LBJtSOwCjvcko
   w==;
X-CSE-ConnectionGUID: NRBo280ETKG2ox/M/q+gOw==
X-CSE-MsgGUID: MhXFYwMBQxq3pvdkTqea8g==
Received: from mail-me3aus01lp2233.outbound.protection.outlook.com (HELO AUS01-ME3-obe.outbound.protection.outlook.com) ([104.47.71.233])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Jan 2024 12:54:15 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NSu6wUc0TIHXpnwO9BVTnFfeLJYnBVNDw06lwatngiFHbHtx2aQhn0GlLeaEhpVLiTBu1Y+PmHdiiI28VPu770pbLlKk85XS/akKrAbvVqKq9YrlSMK6xOdxLbEs2tZ/P+bA2ShDg5srDjSY4Cxk/KV/fWe3xZAAxeai53SKpGR49eE5rnhP7nT0Z4Pl6wew/gaSpTZXPPFaGhgxSroN2nFzcBiu3xwsItTduzlNHFUcOx/SI68Hs+EQ62aAvw1w7O+MJ8bwrF9TGviSIFQ//tsi4E6U/jK7WLDLNBv1WjepNLr8B5booa1OFPiW1s5Nw0BwodQi5QP2kvCx3mbdZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngiABQGFeQHZ8FoBmQuyxMxLv/kQiHaCCc1F2hEL+zE=;
 b=crIXyQSM6t/sXn3O42aRIam9rQCFsCO6BJ3V7l6wEUuzjlTajfpFNiV0nfKv9pmzPKO3tiuOZa+97C7FhDAXygHN+AsaH2DkhUpBYpnRfXQmh/bgN583X3xfJ5Mp71WI+DaLV1USGUJOKJcPs3lhh3YdiG9sW4hPqfKErXllJ317i2f4BA/yaR0qtTPidU6s/Q29FTxph+LLE70EoDtkvr5kml+4hCoH3ddb5dBL18lhQbP8/t8pTYTObNuQeUpsB9e3xO8bwXMzzs8UTG5DDhg4OZ474kW7kiVpP+HyxhUfVmbw2IWLg566eIIhYif231/UQucFpdNleCUJinzMpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ngiABQGFeQHZ8FoBmQuyxMxLv/kQiHaCCc1F2hEL+zE=;
 b=fVABXqiZkHQ4lW4S5CFvRlbL3BSUnb5j/Uxf5gEMfIqtkM3vHAHpOG0pmUqFZ8/kVHV9EFGn4smkAOX6dYW9ve/F9ZnYjbrJVki3FEqgq7Q7j+CfmWiu0d6v+tfNqzvc10+oCSmm5PGjWx2pRwlmA5gG3CO9VZb5ele2QWEWqAk=
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 ME3P282MB1681.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:a6::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.23; Wed, 17 Jan 2024 02:54:08 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::8cc0:c8a7:49dd:aeec]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::8cc0:c8a7:49dd:aeec%6]) with mapi id 15.20.7181.027; Wed, 17 Jan 2024
 02:54:08 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Subject: RE: [Printing-architecture] Congrats,	Mike! IPP Everywhere is now
 really Everywhere!
Thread-Topic: [Printing-architecture] Congrats,	Mike! IPP Everywhere is now
 really Everywhere!
Thread-Index: AQHaMRtQTkcM7UQhUk6muLfUv0itSrDcoR5w
Date: Wed, 17 Jan 2024 02:54:08 +0000
Message-ID:
 <SYBP282MB2617D9F70787C7B9D74E3FD987722@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <00f9e2e1-b496-4004-91b3-5ef13afdf3ff@gmail.com>
In-Reply-To: <00f9e2e1-b496-4004-91b3-5ef13afdf3ff@gmail.com>
Accept-Language: en-US, en-AU
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_ActionId=44c224ad-0b64-4627-83b4-bb0664c35db2;MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_ContentBits=0;MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_Enabled=true;MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_Method=Privileged;MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_Name=UNOFFICIAL;MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_SetDate=2024-01-16T14:14:11Z;MSIP_Label_adb064b5-5911-4077-b076-dd8db707b7e6_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|ME3P282MB1681:EE_
x-ms-office365-filtering-correlation-id: 62f3e9bf-67eb-4511-028e-08dc17079378
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 CkhQtwSBvwXWxrNR3UdaX/B7X6EWybLthSiIBun+ohPm4RgA+iRqdMXip9iGMqYh5dWwKFOKEfOOPDA4dyS6XteBfkwRzgafXmx0eC74iPzHABML3XQfFK9zrj2t/FJYxyWgByR7scWtaigIu2LMvxY7JEr1mM+KMBtLki9/Wb4R7E1XQiD64onmU1FVFxijdwWUAGCf7D0+UgLF8+pcyETA5OofScRcj40kO+s0YSelEBeSW1LCimgunsHum0qqft3F3+YoL62CGgQ7rErcTip9UZxMHeJK7WGL4Ymkgv61ToFaI0t2kSursWNrdd7c67kxe/uC1w0LftgCwL70Dmfh6UK7npvDw9Sja8RXHT9GFED432AyD9KPIWAQAJU9CLh6sSqwBQDEu50JKbMM9/T2VKqIviDLPdIP0bX4xa8E6eNVFKWWYQDOEJ6Yk1zIjkG1+kTUccGt0uertznAHHySf1+w1HF7LixT/zkdMUD3A0NtHZoUMfJneg0AHLeZzp0KyKI1Yp5N/loyXJKsHnhQ5vGfzwrf8Y+D5ZRP1kpDtVm8LREnpebpzmiM6UWrN1jxD7H/i333xKlYh9aUJnKRr5XS0xos3SzvcmJ4ILA=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(39860400002)(136003)(366004)(376002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38070700009)(55016003)(66556008)(9686003)(7696005)(6506007)(52536014)(83380400001)(64756008)(6916009)(66446008)(786003)(966005)(316002)(66476007)(478600001)(66946007)(76116006)(45080400002)(26005)(71200400001)(8936002)(122000001)(33656002)(2906002)(5660300002)(41300700001)(86362001)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?hqDRChScjmUIkF4uE6BKtAvYAhRYc+yFr6YFxtO2KnthWcj8KL2nuqYmP1kG?=
 =?us-ascii?Q?ui+uxCmzD1nYm/k7r02Y1HX+4CAC0vVHSwSJc4uBBmPziXBSwbaQhyPgLrZe?=
 =?us-ascii?Q?/NVX+bMk9+ZTBymrJ6/kjbVFwn3TOxajmikeeog6uJ7qOQB2T9F6czexRK6l?=
 =?us-ascii?Q?2ivZ9fv4kkCeVHU1UdDggKjPok904o+Uct7I6z8OOaXqZXaPlH18QZIdcbn1?=
 =?us-ascii?Q?FMWTCw+ndPSrBM4bKWP33P7QhpIarJFxNrrWLkeZsMk8WzTglOZievD4ZIZH?=
 =?us-ascii?Q?nbyX/NJ3Sg8DV0SEzZ3kZsf67m79jPBJAb08lKDQHb2LgZtIX9VKI1G4KQ6e?=
 =?us-ascii?Q?YwRkDPYUYjS4FfQ/AtSNe11PnueHfQOwjgOes3fi09YQA89bL30Tr+2Ib6T5?=
 =?us-ascii?Q?8Pt5Ny1QlcIjpZccTAsPYfI7COnClmXW0pxhMz1ikjyAWJQ7TBtmYdOEeX3F?=
 =?us-ascii?Q?aHyDdO+pyg735xZ7CIOkcoLHR3GeivmQfADuXMSnZ6fiwbKte1sapA9qgo8p?=
 =?us-ascii?Q?L2v/y6T6WiPHs8WhxH8Eidl8Inoo1mu/79eg8DtRmsDf1NjrevRk6ApGfmpo?=
 =?us-ascii?Q?AzObVNuGzeLLXtNquuB2eeh7mKin3cKUIj7w1W/V9Sbu4t/zO9cumh0xB/gD?=
 =?us-ascii?Q?gI8RmWvOGNzqT7yVsnsv25lPctq4b3LBBag0PdjsGptciknnE57nUQJ/B2iw?=
 =?us-ascii?Q?4lMOLnuGYSUXyVe/JmWM+5o07F1yaV0yxZCuQoP9BTa+ifDX+sRBUOCEGQgc?=
 =?us-ascii?Q?YtbiwCLVxftByUOLF49OqwCm+BYBmGYBIvNZBejoybB7pPmAmF9VXKgpr0PR?=
 =?us-ascii?Q?+wNt32L5u9PxDU+x8kqJHYOy7cLJ19qaxqWxFui2ZEujA9jVyDSBtX6uUNhq?=
 =?us-ascii?Q?eEmfLox5nqhvnNno3P++BGJzHEHDzsOtlkxVyIID8j8tHJsLDsLKmzphyezU?=
 =?us-ascii?Q?VPpyAAM1V4NBGnvq2LtBRZRuNcCoGKpOSiV26i6v+QNyN9zT1noYjqADGOvr?=
 =?us-ascii?Q?kAYxcZSu4wPL2Vgznb/3GV3frNZRAhyY1ef3mfQ2in0q9Esfk/Com2214ggM?=
 =?us-ascii?Q?rSY1vHhvckuro1EV5pIcoZWLkbdbJ2l9uRyXbrKIC7NeawYxJQVY9DEV3sIh?=
 =?us-ascii?Q?2tOtLkfyz+QySi7E8u5RkVzd2g5bhH3u9doNF+uDSrekykwsCQ+5l/K0/bit?=
 =?us-ascii?Q?CuxGIPNHJr1u+SuWQrrxLpVHKTX2Yrcp8QZP8ZSHnCM2U73tOnftVCiqfBCX?=
 =?us-ascii?Q?ZBf8j4RDy+4ofvlBEyuWmNgYc1Mr9o2L6+z9zpFmzwLowZzxp35ddczMLt5C?=
 =?us-ascii?Q?EH74egwoWcDQ1mQVnY2j+aRMn2Nq/Krksx9TrxhUPErldl0sovBUYSskyHaB?=
 =?us-ascii?Q?2gvLfEQ/pPSE4U5pdedhU/S2AcSvy+znYTFd6OflLUrpWCyBXuHQsnXk3Yxb?=
 =?us-ascii?Q?myOr4h/xoblWIbN0XFdws3mcFwrzkQrnNU5xUhvePoWreMGhEz7xnLe18YO9?=
 =?us-ascii?Q?iyNuY+GckVrP2r7sKk0s5KnawpJuRWRu7vSUztKOuesgtCUFdB7895Ap8prw?=
 =?us-ascii?Q?7I8eua+6xyicEFjECzs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Cuq14VWCivyqb+ECMBkNqJop7fQz5u/NbiupbKPHlW4FTNQygsblbvR93jD5lnQSLC40K55fotlj2BhAxj600mKx3ec17Beh6AwOlO7nEJaDei9Ynq65pglWXZ0SLh4rRWOkfkaV8OzvXcTjBIZL3hsuuHJadQLay71bQxNEMjPcJ7eF0+zgvf9dDktTCyO6s+8oNxowmGq7DdwO6vq2Y6QEhmnAXoXERlp0dsMlSt/VAjdvM9Ejv1xyj1qVTP3bbKhrNpmuGlqSznVviMpAcXPGEAkBvd9ZpyexLgLdXOoAK3fwMwG89MI6fN856tjI5qunFpqlqIPIluw79G96wNK0hgcItDr4wsudJMZxdd7m+EeiHFe/rtsHZrPD49Gb2jCLp4OCLCvXPS61UpYx3hbVZK6dV7hmtY3ykOtxnGafrdb6iLAaK5L6XFy9MQzCdUfnXsODl9P7UavlkntkIiziVmljieglMRQfcDqRG0Cpa10HwR9arFuZYZoR+XcPPigerl+mIc/Q6JxJChtQj5t9yHMfPaA09OuyWrF3FQgxZhxSqPa76M7X1nOI1jGYFVJhP3ScDReNGnxv8p2SycgY0ZkBW7dbNYCRMv6+U2KlFwSnWIqg2lr46RyG8uah
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f3e9bf-67eb-4511-028e-08dc17079378
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 02:54:08.5714
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ikiYn4bq07lFr3DfDuPvA4eAfEFpOj57q6jdhtVMboG5JJ3DC7syhRL0CAHX0mVZeoNA4wWjP1PhepN9VgomBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3P282MB1681

Hi All,

> Unfortunately, Microsoft did not adopt CUPS, but as you with CUPS 3.x=20
> Microsoft is going all-IPP now and does away with classic printer=20
> drivers, by their new Windows Protected Print architecture:
>
> https://techcommunity.microsoft.com/t5/security-compliance-and-identity/a=
-new-modern-and-secure-print-experience-from-windows/ba-p/4002645
>
>
> So all printer communication is via driverless IPP printing, in=20
> Windows they are actually following Mopria but IPP Everywhere is very=20
> similar, so we have IPP Everywhere everywhere now ...

It's all great news, but envisage complications in enterprise  environments=
.

With Windows Protected Print Mode (WPP), the above Tech Community page seem=
s to indicate Microsoft is using RPC between the Windows client and Windows=
 Print Server, not IPP (although it is most likely IPP encapsulated in RPC)=
. The Microsoft IPP class driver is basically an inbox V4 (aka type 4) driv=
er, albeit a bit special compared to other V4 drivers. As Samba's V4 driver=
 support is a not-active work in progress, I suspect at this stage it won't=
 be possible to connect a CUPS client to a WPP Windows Server and have Samb=
a handle the RPC. Similarly won't be possible to use Samba (in combination =
with CUPS) to provide and alternative WPP server.

In an enterprise environment you generally need authenticated printing for =
Windows clients, unfortunately the inbox Microsoft IPP class driver with IP=
P connections doesn't support IPP authentication, as it never requests the =
IPP 'uri-authentication-supported' attribute, nor does it respond according=
ly to the HTTP 401 unauthorized response. If you want to use the Microsoft =
IPP class driver for driverless printing and need authentication for Window=
s clients, I believe the only options are one of the following:
- Windows Protected Print Mode (WPP).
- Microsoft Universal Print (Azure cloud based).
- CUPS and 3rd party solution that provides authentication through a Print =
Support App (PSA) or similar. e.g. PaperCut?

In my case, I wanted to use the Microsoft IPP class driver with BYOD Window=
s laptops on a VPN. I ended up doing a custom solution with a modified CUPS=
 to authorize users based on their VPN login.=20



Cheers,
Doug

