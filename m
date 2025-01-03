Received: from BEUP281CU002.outbound.protection.outlook.com (mail-germanynorthazon11020113.outbound.protection.outlook.com [52.101.169.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0C638DC0
	for <printing-architecture@lists.linux.dev>; Fri,  3 Jan 2025 10:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.169.113
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735901062; cv=fail; b=Rptc/9cBJ2hUobqdqr4cX9AYQa4q//Bn1NrlV0WYsDDOR99EPV65imKK5KAyb++OJ8vRfkU8c44jecCxVAusedDkS1sCGwqkpRveCF8zACXfNcvltMP/8ws6H8GhU/wTx2qFWXllZdX5NaqvFetiobDpOpjtb79E9pIX3x+gxas=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735901062; c=relaxed/simple;
	bh=ivlyMLNMEnj8VIuqiDjHPHNKFUH7Z7BNilmifOzPFzE=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=UNwv6xGd6+dij3pvW2RGTWSYsqdm0lpYqtYdlkRz1DRfbbDlzN8bopmaczSMzI24MA8BD8omycOKIVuNKVZ7gxabv4q6VXDgUI/I7cqTXVgnyMAsudod5aT/ReYg91191Q5UbQtsFaL9pB1jvRgmcwLvCg+jjU+kmzv4oUhJfcs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alemo.de; spf=pass smtp.mailfrom=alemo.de; dkim=pass (1024-bit key) header.d=ALEMO.onmicrosoft.com header.i=@ALEMO.onmicrosoft.com header.b=cQxHq+HY; arc=fail smtp.client-ip=52.101.169.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alemo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alemo.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ALEMO.onmicrosoft.com header.i=@ALEMO.onmicrosoft.com header.b="cQxHq+HY"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vxNSoPDHxueBxCEpJdZxgookK1pSwYWF3LmDZz2S+1x9IrIMT6Ja0PXyTvYSkZDSon8E5Z0MCuierEq5bkGu79vt4yjxtuwrFD0AgngNgHLHs0tfOx/7o2kdzw9GEZv/8L8TkwGS0atmMAaeUBZzyvrRc2UAdTe7gqoRlhywC2iMPjNia8ylRp+EWNks05C45m6sqinEQM6ssE0dTfgR8AZaoU2TimW32stIgxoZFB4YCCNDo/7Z2nStfkMcKDKl0sfdtBvAgyNDqdU2f12QMlXFfp8uLzLn5l9Td4WwdFTcASDcmT0GvtMAbY2G2UoqZZFCuTfERmli6D/OBIWG/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ivlyMLNMEnj8VIuqiDjHPHNKFUH7Z7BNilmifOzPFzE=;
 b=bKIw1zk+dPb1kXe0vEO7otu3Jvxxbx5xj0nmBP1ikCGT2/bCVopWXJ3j5OS3cop4nlAv+2rAR8Wa3srr64A/Cun1MROdxDAQynJKgtqqhi0kSryXetHmOS+ryRCYl+b/qsDHj8ElOBHbdo0sDviDZlKDYhfjQFlkwXKqqb5mYBtDFtN7Lmvc706DnWbv8+SIrtDOiJROwPrHhqpuUwrBjRU5ramcYiHvxmCpCKAmhhQOnnYl7IdX/isi8lcTCNJhjv75BRRieIKIU9ASRhwYtDTqKc8ZhQhiCMdQ/9Oixg+9511m0SoBKL4KZdiXU7j7P+YLhrvRGaLkOnzbOc7Tbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alemo.de; dmarc=pass action=none header.from=alemo.de;
 dkim=pass header.d=alemo.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ALEMO.onmicrosoft.com;
 s=selector2-ALEMO-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivlyMLNMEnj8VIuqiDjHPHNKFUH7Z7BNilmifOzPFzE=;
 b=cQxHq+HYJA26ql0/xjvJF5qfHeWFSSE7z8MwPimwOhBfBOEcZxjdtQBmIArv1/PYCXJhLv6PMKcur9q1GdEgpWo8Pm17039qNX43rdHdOHBk/62ZY8mr61JI2xlcF/LvW6UxAYb4w2m7GyGFsUq4HCsx2sgv22BA2I57pYi7Tng=
Received: from FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18:2::28)
 by BE1P281MB1476.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:1e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 10:44:16 +0000
Received: from FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM
 ([fe80::fbba:c006:d36f:3057]) by FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM
 ([fe80::fbba:c006:d36f:3057%6]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 10:44:16 +0000
From: Dennis Haseloff <dennis.haseloff@alemo.de>
To: "printing-architecture@lists.linux.dev"
	<printing-architecture@lists.linux.dev>
Subject: IPP - OAuth2 supporting operating systems
Thread-Topic: IPP - OAuth2 supporting operating systems
Thread-Index: AQHbXcxGc8VUEpVxfU+EcMVhiP1zBQ==
Date: Fri, 3 Jan 2025 10:44:16 +0000
Message-ID:
 <FR2PPF4263B3A8E713B870199DCDC2EC9B496152@FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US, ru-RU
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alemo.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2PPF4263B3A8E:EE_|BE1P281MB1476:EE_
x-ms-office365-filtering-correlation-id: 7319b191-d6ce-4aa1-729f-08dd2be39254
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?uu7xywlwCK+aQaXIbP7ElYi34lpskyfrSWKWti/XjH7m1dJCFEviqOsfp7?=
 =?iso-8859-1?Q?nyIbO5u9+QImIwuuXvcJY/lPZfZuJ4pEWdZiO07Vwgom9i02fALGuCL4ge?=
 =?iso-8859-1?Q?jRGyTaRErVryNX3dHooiLds1W6eJCx0CO5oqHC9wC6DnA/HR6TTfkc6gbR?=
 =?iso-8859-1?Q?x913Au35Ch9sruSQ73icqW1M7Glic8Y2cZkR/dcXTNUfO0ee0JnO2yH4QI?=
 =?iso-8859-1?Q?LTah4SUB6VJVU6BHqlk5zn0HDEYv5Vu5Ip1f/IwI4rrsGfVSxAfTP3SOJ5?=
 =?iso-8859-1?Q?VES+FUIgqMicoNf2F0sALVHMYpM1c4qv0SmkhPd1gI16wMpb7ykngZTzRj?=
 =?iso-8859-1?Q?CvY21B7VXNb1sv5AqXeZDLYvB72CHMiQJF24HACQaH9r+GG9wdOHECYaQt?=
 =?iso-8859-1?Q?kqXNQ7OOe1oysKiOlQ+j1MI/FyMQRCKDP5YuFkn4Q80fNA3fSfnkywHV4d?=
 =?iso-8859-1?Q?gQ0mj4gCwXBrA1nlK67zLx8mWouajLbD0R7CTjIZz8U8iYuI9W05wRFaiI?=
 =?iso-8859-1?Q?mJUZ6ip5ZeB96y+14OSdNx0vHKiBnD8+3bFIk+/4tK8xl0Mt1R0JnUE+xL?=
 =?iso-8859-1?Q?F9LGO/xM6K2MsYCq/sh81GD6TnRjcz+DA6lfz53/IeYKSuuJk7J88DyTuu?=
 =?iso-8859-1?Q?M7K8iaGtAPPDiAqRUde9WzND2pMO7cWXnIR1NydMu97jfWz+Wdfd0TkFux?=
 =?iso-8859-1?Q?s32BHZcVQew9p42xJILVK7Hf6f7csDUYFtAnnsZG43mi4KLHWaqOgOgfA7?=
 =?iso-8859-1?Q?siYPaE8DK5kLF9Vo7/sh+/t3bQGL5zYaqM4NA40Y5C4U8jqYiIwYS9lrpA?=
 =?iso-8859-1?Q?ochoIKAJW8lTaqvPhSGBNQlOR7T8joQiVtvimlUPua1Utst0NCardg54GL?=
 =?iso-8859-1?Q?NKLLiHOsBHHit++CpwyeunpOFccMD37XQSALKi5ulR7bhz42jpbQ7bnT/8?=
 =?iso-8859-1?Q?Q2Z885q5fD2ZBlzWZ4qT65kwtxqyolXz4+qI5MF5q0tXrfVk+f1fhVdsdc?=
 =?iso-8859-1?Q?Mk8Ch1Kn+Qd5L9JI6rjnekG/m6sjtPz8C5pp1I1kKLzrd1nh/0rd9cGIbk?=
 =?iso-8859-1?Q?XbcTs63O9yDNVdUDyjRXJ0hIxd5upwr4Q3Q3xfpVwXqcCEPMk6W19vHrbn?=
 =?iso-8859-1?Q?5Y6qfGBrKkYKfjzW3nHlNnnufWtfkrAZ7gG2wHQhbGWbwEcf2aM1MVycfw?=
 =?iso-8859-1?Q?UlYpWKkGulqxGlKnMFYZDxE35qBKXBBVI6/dC/eys9cbXT0wSZg9r8sp4X?=
 =?iso-8859-1?Q?ri4zatGT2kMR7C8BDAnbp//PbZb9duCkHeQISGQv3yDN4Yn2bexkAVXjBB?=
 =?iso-8859-1?Q?VN1VKsbYpf59njOAD1AgvZCyWq5qotuAgHrX7fXDamfZVIZeQsB9UbF/Yh?=
 =?iso-8859-1?Q?qV7thanexriKATCAVz3Wo2gfRHKsECGo17EY9BS3+b5ImSywA+cNoSc8Fp?=
 =?iso-8859-1?Q?frlDCJfc+DIaASh1?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?eRTjUoiVthgiC6FWRSIbSR8UV+yFiujMnnFjSljqzYH0lbpcmNwIxDj6lt?=
 =?iso-8859-1?Q?6swkqKtN20Ntd76dYaYGrt5g/xgHkf3u3KmZYa+gmYp5ZbCu+LyDnrLBPI?=
 =?iso-8859-1?Q?Pag8k1LnyC/tLmDzou0lwwqM2QwJoUFLcgNGZgKLMSUhdnTKAHNTMzpQJi?=
 =?iso-8859-1?Q?cZNriu/5avR4EjNvcQGVHJDJOFg1qpbrJZBhrbialnqYfICX6Zga3RCim1?=
 =?iso-8859-1?Q?Zx74VaFcW+iLRGSVTNYMzvCJHKbBF7iKuoMoXiV2SUD+gDM2bpANQ+AxLm?=
 =?iso-8859-1?Q?QvcAH6UIHmU/oObhZAL3IJy/U84sTgSSbUINi9CRnySV862REi7qnkmTpW?=
 =?iso-8859-1?Q?MfEyLDIgN0ZgnkIR7n19fXHMLdWJ6La/mq0lY9uVJg3VKT7Z+vlPur+kHJ?=
 =?iso-8859-1?Q?bHGJ9Un34OV+qv98wYNH0RZ2RT1WJ71D/gWf7LZIUgmRto61B9tirMjNOW?=
 =?iso-8859-1?Q?tpFcKPGrE405x1sM+x6MlOMJlxm2i4vDxbyrZGaDEHRjt/Y3zig42xaBke?=
 =?iso-8859-1?Q?dpofQMayV0o34RmFt810BxcAESkvaFbwL5LF1hFB+T1pezkhYAjfViGz0D?=
 =?iso-8859-1?Q?Dk9YuQ4BjjNLgQSHhe9kutZ/1/PRcf7i7az7znBwXKNBu2Xp89BLlI7lGb?=
 =?iso-8859-1?Q?glZ1uz/fA1zKnyu0KA0pcT4coZJ2ogQo8GjGv+xbOH/9/B4Air4BIZahcy?=
 =?iso-8859-1?Q?Dn2aT2V9JwhAJjTujq3T+ouxpFVcDqGXiXGiuFwrSB1UEpGM7F+BHNho1h?=
 =?iso-8859-1?Q?4t86B4h1YFSyRnIeREFSeMSv11CB2Vrjfa88vYguVm0irZ5sMUa/wQ/xhr?=
 =?iso-8859-1?Q?zRRq3RFUVvURHEJyFhPW09v7GKYT9K7gPye7mnoJaQXTRau3HV4xDWrNMh?=
 =?iso-8859-1?Q?IEEb4S2vuin0GLERMHJTi9unQiM5NX44McdUDcDPHGGrzRfps3N5ouJmY6?=
 =?iso-8859-1?Q?bltH9MgHS2WFsQR1nNqoPgBZRIUkf8/V6cwK5p/Xssuk2Dj+ju8uZBxclu?=
 =?iso-8859-1?Q?axNRaSfNP+7g0Z6XN6wpxVLOqD7QUr3RK5fH/HUXxKlV4Dtxj0mmch70tL?=
 =?iso-8859-1?Q?JEGwDCNJ7HFQSzWV5HoN2tkVbDK2pJ97xyY4wU2cZCrvo+R1asJguj8xPj?=
 =?iso-8859-1?Q?pWpYkmdCwA0HhYkIApGXQmPWFsusv00sQjiun5cJyNBWHhY1p4/5+fefo5?=
 =?iso-8859-1?Q?qksA5NS6AdRlgASqH08gpq+d91X+Dop7eOlkpuhxIGARdsG8F/mk/wJmWs?=
 =?iso-8859-1?Q?rUqqo+YQMDKUWcwiwGcEIqxSz0iJIjJolVayakO0cbKvLayDcfrnDcHWOk?=
 =?iso-8859-1?Q?E7Mwk/jTfO2BcJYKERE5Zxh/u8A02WZCPn6zv4yf4ya0v3/06/cYyaMxGX?=
 =?iso-8859-1?Q?dev6vqEVAv7nre5VkIp33Dao6legybbxXTIvC5hTP/qZqbDwyM6KyGtNZ8?=
 =?iso-8859-1?Q?f48Sv7Lk4pkgf+edcKgILnEieI43blYgr5JgbAN1AJFKsZQ68PADVBVTl1?=
 =?iso-8859-1?Q?Ne4omx2sE/VXYKsDqNItBm3iWxqKDVwnqloCx06BN1uDmIlk18vyTTKCJi?=
 =?iso-8859-1?Q?x6Hf0CqsxgnEuf1GxgO0xj98KG0HkuPKfmHVy2ECMv0I1sqMX+pEKaRQS7?=
 =?iso-8859-1?Q?7i7gyri0XppH9GLk/YHoo2AOF3wZWHJbUV?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: alemo.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7319b191-d6ce-4aa1-729f-08dd2be39254
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 10:44:16.8950
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e833d919-2ddd-45e0-bced-e9061f38443f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kSxmEiAeTZM8CDD0VGYBOTqNrSF2qQ+4YbWVgzK+4KTfob6yoAg+FMcEWnI+KznexYzF2qvlJ9R9/dRNfWOsDLLbFEzbpR+kACqCBiWsNAA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB1476

Hello all,=0A=
=0A=
Since this is my first post, cut me some slack if I make any formal mistake=
s.=0A=
=0A=
We are developing a cloud-based IPP endpoint for our customers. Since the a=
dvent of SAML/OIDC, customers have become reluctant to use the good old bas=
ic authentication. Instead, they insisted on using their IAM/IdP solution o=
f choice such as EntraID, etc. Naive as I am, I tried to enable OAuth2 usin=
g the IPP extension described here: ftp.pwg.org/pub/pwg/informational/bp-ip=
pauth10-20190816-5199.10.pdf. I tried it with Ubuntu and CentOS, but neithe=
r of them responded properly (starting the OAuth2 process) to the different=
 authentication method.=0A=
=0A=
Does anyone have experience implementing OAuth in combination with Linux op=
erating systems? Or does anyone know which operating systems (Linux, Window=
s, Mac) support OAuth2 as an authentication method and which do not?=0A=
=0A=
Thanks in advance=0A=
=0A=
Dennis=
