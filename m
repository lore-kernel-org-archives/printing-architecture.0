Received: from FR4P281CU032.outbound.protection.outlook.com (mail-germanywestcentralazon11022106.outbound.protection.outlook.com [40.107.149.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E32922098
	for <printing-architecture@lists.linux.dev>; Tue,  7 Jan 2025 08:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.149.106
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736237990; cv=fail; b=oGYeMUAEcsO/IxN5hkXwNo2Oy3/4VT6My3iG573b05HNjjMSwWkfbCxugDPV8mCFrGO+YBIYdzaPp0CfLEvO2ReZxmjb4COc/ZMKydYThiQRoRgVmpMBzdOQ4Fw2qR5Bf4sc6GcNr4TJLFjj2d1vSJriA4xhXdwks/Zo1LENVMc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736237990; c=relaxed/simple;
	bh=OQ3mQlg/Vouhp5UQYeSZs+kWrNttAwC7q9btRtrkx/k=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=AGlDV1bVyeJNG6HXy1w/I6ETysuKlSJ9h37rveO9EhBaKYeYkG26gsoHmJ2tkRq6NzIt7Wmv/uhF/DEl93TLvjuJ05kAyyZI4S1Jewe8tsBojTnnIfwe6ejjWsH5qR7q1oLKHIZXwp3V22WO85+grW3uCvtkjZ+Y0m71GHQ0Pro=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alemo.de; spf=pass smtp.mailfrom=alemo.de; dkim=pass (1024-bit key) header.d=ALEMO.onmicrosoft.com header.i=@ALEMO.onmicrosoft.com header.b=YRCTgpQT; arc=fail smtp.client-ip=40.107.149.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alemo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alemo.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ALEMO.onmicrosoft.com header.i=@ALEMO.onmicrosoft.com header.b="YRCTgpQT"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gWmTbCst/+mqwxO3fJdrieUSDno/A62k/YbfUdEPhIIjb6Q6fN8ckxkWZYDZexPWphXru/qA5lhVtKHpqxjMr3R6DfMN2+VSay4C0BGFMRq6iJbsx8jqH2l9Y+0WlMH9qi+BioMLgn4xrojpFHKKdccb7iis9ZiddPfEgFCKHFclQpHh4oY+KyO+ktKf9arZPy7B50x5twhPEwK6ce0N+JfQiSh9jZebsU7eaIJf4b05tQYBujktHe+vBJbJENKLCuRcApwftkzdKPJBDoGQkJ+I/+Kk+EkxWOcLN3o5vQQpk39lmH9GgsOURVGY4RqFTZkVKmbapzwBPYKYcSYu1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OQ3mQlg/Vouhp5UQYeSZs+kWrNttAwC7q9btRtrkx/k=;
 b=YdO583KV81P4g7DK0pjDp/9fUOFIEn3XfBHXkOziO7765ZV2kqruSWkVfyM7hfu4mlYUygp36q4wf2mjqhajvTiuUCRcDjxIO9/057A/OZMZ4bOiYB/3vub0Hfi5mNmBjbWUWjOcK9v8f6upM/8FdHNff0MPtAFk+azqiR4gfg/V919vEGKpt9IwGJDKljfpc8y3TNAZoLcKwVXDFbvRlRIO8aJl3O/x2tHOnU1VNWUWIabMSRN5B68VjQh4XfGmhorEy8D3wHLfaV/1bpHHvjMbnqf2BmOd8cTg5nXnhEbNUJ6+Lg52Cf2QPKwleY5cSABGj7aGvNB7/svelJnmzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alemo.de; dmarc=pass action=none header.from=alemo.de;
 dkim=pass header.d=alemo.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ALEMO.onmicrosoft.com;
 s=selector2-ALEMO-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQ3mQlg/Vouhp5UQYeSZs+kWrNttAwC7q9btRtrkx/k=;
 b=YRCTgpQTXQAKcImCIfpVEqcnW+dsqJbAYcpOI8rqXI+pc9hrMjb7mPYZr82kMmB1qYI88yVNwNoW46+2CKpFDx0kLvOwAKj6b8fMbwZgV5e7SrLjsKXEm6ToTGWopl0r98dy4x6y1RD71yyCmCocxD6Slh+bFwjAa92NeIA4i/4=
Received: from FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18:2::28)
 by FR4P281MB4382.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:127::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Tue, 7 Jan
 2025 08:19:44 +0000
Received: from FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM
 ([fe80::fbba:c006:d36f:3057]) by FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM
 ([fe80::fbba:c006:d36f:3057%6]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 08:19:44 +0000
From: Dennis Haseloff <dennis.haseloff@alemo.de>
To: Michael Sweet <msweet@msweet.org>
CC: "printing-architecture@lists.linux.dev"
	<printing-architecture@lists.linux.dev>
Subject: AW: IPP - OAuth2 supporting operating systems
Thread-Topic: IPP - OAuth2 supporting operating systems
Thread-Index: AQHbXcxGc8VUEpVxfU+EcMVhiP1zBbMFMS0AgAXMZQo=
Date: Tue, 7 Jan 2025 08:19:44 +0000
Message-ID:
 <FR2PPF4263B3A8E3EE0C91D94B5A22B28D496112@FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM>
References:
 <FR2PPF4263B3A8E713B870199DCDC2EC9B496152@FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM>
 <5B9B706D-B282-4226-9BBB-DA1A5F7278B0@msweet.org>
In-Reply-To: <5B9B706D-B282-4226-9BBB-DA1A5F7278B0@msweet.org>
Accept-Language: de-DE, en-US, ru-RU
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alemo.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2PPF4263B3A8E:EE_|FR4P281MB4382:EE_
x-ms-office365-filtering-correlation-id: 21f4533d-bb22-4b3f-2958-08dd2ef40ad8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?bDh1Y2oyZVZMRW1RZTRvRHpjd0tzNzdQNndRcHVpeWNXcU9FTTc5OVoxNXhO?=
 =?utf-8?B?eUdXZlFTSitUQVQ1MnV2WEVUM2tMQk42SU52Q1pmaU1pM1dDcWNNTURxNU01?=
 =?utf-8?B?a0lJZ1FzV3U0L3NKK2JrK1JUOEJuWmhrN3A3UFJoTGF4amw1S0xyTWFGaTNH?=
 =?utf-8?B?Tk5iNjRIWjRXMnZaQ29INVd0ejQzZ05iYzgyVlF2WFpDcDhTSjMrYnVhUHFN?=
 =?utf-8?B?ZmlJRWQyc0MzdExRRmFwVXVkR2tsa3RGMGE1R25PM3FmQjQ0RlVUQU9kUnZC?=
 =?utf-8?B?NWR5ekEzYjF4Y3U2dmd3cnZDNy9XS0ZraDE4b1NvTFQ4UnFlY0grdUxtaS9F?=
 =?utf-8?B?L2luTlVXdGF1ZE02Rk5pVUQyZDFYS1RGcjhLVDB1SXVqMUY5V3dpTjBXZkYz?=
 =?utf-8?B?dUdkbVNjMS8wWGg4aGxrQzdGaFBVeUcxeVpBZENETkw0VkUwSzFCZ1dzUW5C?=
 =?utf-8?B?UzNMelBKR3EyMXNKaXJEYjE0N0xpbUVBRDN4azMvaDd5WjF1czFmclhsbHNC?=
 =?utf-8?B?MkZxclJaRVNQdVpRSERoNnZyWFBOV2h4OUdudkE5ZlJ5VWxZcC82SXJUQmM0?=
 =?utf-8?B?d0dYV2FicjJHY3NCVVluY3R5Um52NDdVUVB6VnZIODhKUWN0Zjh1RUdnQW84?=
 =?utf-8?B?TzB0dkxiNG5MaVgwZTJIdEZleWZtTjJLYnVWVXlwUWtBSERwQjloc0RQMnBq?=
 =?utf-8?B?Y0tHUjJNSmRmMFcrMGN3Y1M1elZ5RGhvK2M1QVhxa05Fd0h1dkFCWFlCSXB0?=
 =?utf-8?B?ci91S3hlNnlMUTB3eTlWWGpGd0FvYWZCbHBwTFQ5b0dhd1lDYVM0NHNLK0hq?=
 =?utf-8?B?S1p3aXZBRWo5RVZGcmV6Y3VudWRsYnBEZUFGR3h5eENkYnRLeWk4WU84aUpy?=
 =?utf-8?B?NTJOdkUyZWhhV1EvWlZZeVpLa3pSRHhrL1oveEJ1cE5SNzZSRTNzWDA0Z3V6?=
 =?utf-8?B?YTdhbkhzbmc2aWZDdUZzcG1ldTFzQ1VjaVFpbHlUZUlkVHRVR1R4dkk2bmxI?=
 =?utf-8?B?cyt5S2ZvZ0s3emhsZUZyYWo5N3BmaGVyZk55UHVJUVV4STJMa09GdWo3UFJ2?=
 =?utf-8?B?QjdPdWgxb2h2MnUwaFNERnBEdGc3RXBwM0R4Q2t1Rk9wVFZkSmJ3aFFYcXRG?=
 =?utf-8?B?YkJ2ZFptbWFTZXRObjNWb2NUalJxSnhDU3NydkFKWk83anpYMnhUTmxMc1Y2?=
 =?utf-8?B?SGxTcGtoZUJhRGpwU040L2xJNzhLWlU0ak54SEUrVDc1dWRxM09COVMzeGoz?=
 =?utf-8?B?eExBK21HQ0w2Skg5WjUwQ3NmSnhrTHB6ZXZoZlFVaXgwTkQxOTBTRU53SXdX?=
 =?utf-8?B?RHhPM3lXVnRNbWk2citBNHRUSWlJa2VieHdCblFIYlRia1pacVBtSUNuditT?=
 =?utf-8?B?QXYxc2M0UlpwakVPRGM4Q0txZVJRczFzaURzbEJoeXZxSXdRNzJ2Nlk1eURU?=
 =?utf-8?B?TFR4VDFESWsrWlR6UWo1VHJCS0F6SysxcktZNUxNMC95SmJpTWg0enNQY0N2?=
 =?utf-8?B?NlZVY1FNaWNqV0JIMDRIUCtlTDZsMjVQNTM5YVl4WmN2aFV2M2ZkazdGeW1K?=
 =?utf-8?B?TWNBSWdJb0sreDk0dFdlQlZlQmZWb0kzbWdIb24vUlV2bmF0S3B4VndTRjB6?=
 =?utf-8?B?eGhISHl5cXl4UFArMUYvMnV5RC92SGQrZmo4WGxpY3ZrNTU3M016N2V6MW1F?=
 =?utf-8?B?SXZCVXE5TnN1UGVnVzRtaVJrU3NmaXgxZGovSVFqRHp6Y2VCR2grYW5rYWV5?=
 =?utf-8?B?TWNrYVRyV2IxMWZKM0w2ZDFwR0NCck1FUysxclM1cWk5cVVZWEtzSDdtc1pi?=
 =?utf-8?B?NllYVTdnRUd2a1gvYks2S2ppam9sRHB2QkFjMmVXQnJxNVdtQ1lEODFuaG5R?=
 =?utf-8?B?RnBIMmdWbWsvcktobWJBWTMyNE1GWno5ZmxJdmtZeVl6Q1E9PQ==?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Wm80T2p2WDZ3SERmbUJ0L0RNakFmbk1hS2h4Q01rRmJvZ1lWK1FnTWw5eGN2?=
 =?utf-8?B?dU5SRHUvTll4K0hjY3k0OGNnR09yek1ldUhaVnNDdUtIMmFObVdwTTZWeS9Z?=
 =?utf-8?B?dXpZenVZQVkyRVZLdVZBUEY4elM1UnFBc212ejBubDlhMUVlM1BJNXdFamNm?=
 =?utf-8?B?emMrRXhKb1BjTXR0d0h3RUdoM3RNdFBhU3FNdWh3Y3cwN0ZTczVsdjhmVzNj?=
 =?utf-8?B?WmRkT2l2RTVIOXE0Wi83Y1l3OGtxT1R4UjR3UWFJcnU2VmpRNVBJOUkzZnA5?=
 =?utf-8?B?SDJTTjRtdXBxRUU2RmdHMUJyakZwODZDR011OENJYWVBT2wwUHV2VVBjdGxX?=
 =?utf-8?B?bTJWb2NJT0I3eVJiK2JEMER5TlZWTUJFdHhqcVNiUzE2UGNweUkyeTlURitC?=
 =?utf-8?B?OWRackxUN0cvZzE4M0xsWC8xc2loS3BWeFhuNGVhNTFyc1lWWW12U0ZKaHN1?=
 =?utf-8?B?UFNodDZxaFJjSWRyUlZZZ2Q0MmZBWGpNdjhEVWs3RzZHTTgwdklBWDFBOG5V?=
 =?utf-8?B?OGlhdlJLbWhPajVCMHB1enkwZ2MyUWtNUzdiekFTbVFqaWppRzg0RnBtMnFu?=
 =?utf-8?B?cDRCYngxYnJ4VjA2ZzdlcUFUYldhb29pVFpWL2hhWkF1a2J6NGJ3TnBDSGJD?=
 =?utf-8?B?MEZObkNKcWNoaksvYkMrQVRXUjhkVE10UXhSRmh4YjFGQm5xSEhFUmhJdll5?=
 =?utf-8?B?bCtsbE15ZmpVd05zTGxzTXVJQnBFNHRFRHBDRUdHd3ROemJmKzJ0RzZRMXBZ?=
 =?utf-8?B?NnJIbVY4WEFuMHNHWHRUTlcyTnNFQnNuOXVnamV0NjVkaUhBWUROVHF4TzRJ?=
 =?utf-8?B?WVdjWHNWUEJDTkJDNFIrWUMyQ205N21lSjBQUUh1WDY5MFJoZkZDOWxEOXhD?=
 =?utf-8?B?UlVFcWRyb2R4RlNGRzZ6QXRPRDNmRDhTMFVSYU02bHZDcFVCTmJkVnl6QUVQ?=
 =?utf-8?B?c2RnNm1JSlY0NzZzZnZkVHlXNkdHeE9jZHFuZ1YzMWZQeFZDS0NXVjMrWWgw?=
 =?utf-8?B?ajhWRit0WXZFay9JTmYzbXQySTZaVWl0R1VtYlhJT1FDNi9VeGtpazNzWFBV?=
 =?utf-8?B?QnJ2UVRtL0gwOUh0WFIyeFFtaUFVWE5BZEZsWmVzWEw3cFE2MDZBbVRmb3RD?=
 =?utf-8?B?ODhaRFQwWVhPRGtLR3RlM2E4TVFFcnZORmZjRmdGWkNzaGFTR2hib05DZExQ?=
 =?utf-8?B?dGVuMmp3L2dPYXpadGxydUJiQlM5ZHRkc0ZMbmloU2h5Z2djVDBkK05FcmRP?=
 =?utf-8?B?dkhHMmNObnJEOEVJZWgzc2RwajNCT3pIczRDL0NhajdOUjhnV2NnUzZ3RnJl?=
 =?utf-8?B?NXRUdjZ6TGpuMXgzQzRrQnc4aGVKQlAvamtUL0hlVmJaaVppZjNGSVFONjQ2?=
 =?utf-8?B?bGV4dHRDN053VmZZR29tc0VjVmRDaDczaG1rMVZESFRzTzJGTWdYNHhFUUpu?=
 =?utf-8?B?V0VZSWVsUytKYUhza21PRGM1bFVvQm9EOVZaK0trbWVYNGRWcUtmMDRsZURp?=
 =?utf-8?B?WHJkWmthQlpnNktlaTl0NzI3dHQ0bnFYQUkvemJiWHNBbmJFZHBzeXljd1B5?=
 =?utf-8?B?QnNnNGRmRTZjeG5oYUxhY2thUGZhNDI2TFFTdzk5T0srMFRsblBsYnBlVmQw?=
 =?utf-8?B?ODNkVU4rSGk1Uy9BNW1FeXVrTE5Ldk9CeFVRdmcvTlEwNHJkUTZkbW5HUG5Z?=
 =?utf-8?B?ck5qNlV2dldCSjNkL3czemRjU3paQm9aVHZRKzZVUUkyV0hsYXRRenZ3SnhO?=
 =?utf-8?B?dzJJcWIxdElhczZqWEtSM041RkhLbUZLYUxWc3g1L0gzY3FlK2VNNjNvUzJa?=
 =?utf-8?B?QjRMcndTR2dkcTNrTW1YRSs2Znh6VzhCNHpFT1QwRFRRSXZZeGRjWk1HdHlC?=
 =?utf-8?B?QUlQTEhOTDhSWFV0czNqYXp1bmlUSm5sOWN2WTZkcTRJSGlhZ0I0ZUdEWG11?=
 =?utf-8?B?bFQvTW5JNWhYNnlSK1AvTWtVTVZEM0RHd1dNa0lNaUc0NjNJdHA2RFBwRVFi?=
 =?utf-8?B?d1pzWkFmc0pXbFRwWENiWG5qUnBCcEo3NklTZzRKZlJuNjJuaGNwU1NPRm1E?=
 =?utf-8?B?L2RNdXA5VENkR010V3VyTHlQUVp6a0w4WG1DeVJWV3NZSGRMOVhLY1pjd1l0?=
 =?utf-8?Q?F1AiEyd7Qskom/SMNwGfyD+rt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: alemo.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f4533d-bb22-4b3f-2958-08dd2ef40ad8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 08:19:44.4725
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e833d919-2ddd-45e0-bced-e9061f38443f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lp8kZI6m52A1OAaOyK3UHXijOsXb3kEOvpEqRoamaJN5RuzXkFFYmFF8n9QAaE9KRS+WWPfboXrgj46MosQi2SRPlSyzKMexnkD5AqHe7cM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR4P281MB4382

SGkgTWljaGFlbCwKCnRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIFRoZW4gd2UgaGF2ZSB0
byB3YWl0IHVudGlsIHRoZSB3b3JrIGlzIGRvbmUhCgpEZW5uaXMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVm9uOiBNaWNoYWVsIFN3ZWV0IDxtc3dlZXRAbXN3ZWV0
Lm9yZz4KR2VzZW5kZXQ6IEZyZWl0YWcsIDMuIEphbnVhciAyMDI1IDE2OjQ0CkFuOiBEZW5uaXMg
SGFzZWxvZmYKQ2M6IHByaW50aW5nLWFyY2hpdGVjdHVyZUBsaXN0cy5saW51eC5kZXYKQmV0cmVm
ZjogUmU6IElQUCAtIE9BdXRoMiBzdXBwb3J0aW5nIG9wZXJhdGluZyBzeXN0ZW1zCgpEZW5uaXMs
Cgo+IE9uIEphbiAzLCAyMDI1LCBhdCA1OjQ04oCvQU0sIERlbm5pcyBIYXNlbG9mZiA8ZGVubmlz
Lmhhc2Vsb2ZmQGFsZW1vLmRlPiB3cm90ZToKPgo+IEhlbGxvIGFsbCwKPgo+IFNpbmNlIHRoaXMg
aXMgbXkgZmlyc3QgcG9zdCwgY3V0IG1lIHNvbWUgc2xhY2sgaWYgSSBtYWtlIGFueSBmb3JtYWwg
bWlzdGFrZXMuCj4KPiBXZSBhcmUgZGV2ZWxvcGluZyBhIGNsb3VkLWJhc2VkIElQUCBlbmRwb2lu
dCBmb3Igb3VyIGN1c3RvbWVycy4gU2luY2UgdGhlIGFkdmVudCBvZiBTQU1ML09JREMsIGN1c3Rv
bWVycyBoYXZlIGJlY29tZSByZWx1Y3RhbnQgdG8gdXNlIHRoZSBnb29kIG9sZCBiYXNpYyBhdXRo
ZW50aWNhdGlvbi4gSW5zdGVhZCwgdGhleSBpbnNpc3RlZCBvbiB1c2luZyB0aGVpciBJQU0vSWRQ
IHNvbHV0aW9uIG9mIGNob2ljZSBzdWNoIGFzIEVudHJhSUQsIGV0Yy4gTmFpdmUgYXMgSSBhbSwg
SSB0cmllZCB0byBlbmFibGUgT0F1dGgyIHVzaW5nIHRoZSBJUFAgZXh0ZW5zaW9uIGRlc2NyaWJl
ZCBoZXJlOiBmdHAucHdnLm9yZy9wdWIvcHdnL2luZm9ybWF0aW9uYWwvYnAtaXBwYXV0aDEwLTIw
MTkwODE2LTUxOTkuMTAucGRmLiBJIHRyaWVkIGl0IHdpdGggVWJ1bnR1IGFuZCBDZW50T1MsIGJ1
dCBuZWl0aGVyIG9mIHRoZW0gcmVzcG9uZGVkIHByb3Blcmx5IChzdGFydGluZyB0aGUgT0F1dGgy
IHByb2Nlc3MpIHRvIHRoZSBkaWZmZXJlbnQgYXV0aGVudGljYXRpb24gbWV0aG9kLgoKQ29ycmVj
dCwgYW5kIHdlIGFyZSBqdXN0IHdvcmtpbmcgb24gaW1wbGVtZW50aW5nIHRoZSBmb2xsb3ctb24g
c3RhbmRhcmQgaW4gdGhlIFBXRyAoSSBhbSB0aGUgbWFpbiBhdXRob3IpICBhdDoKCiAgICBodHRw
czovL2Z0cC5wd2cub3JnL3B1Yi9wd2cvaXBwL3dkL3dkLWlwcG9hdXRoMTAtMjAyNDA2MjQucGRm
CgpDVVBTIDIuNSB3aWxsIGJlIHRoZSBmaXJzdCByZWxlYXNlIG9mIENVUFMgd2l0aCBPQXV0aCBz
dXBwb3J0LiAgSSBjYW4ndCBkZWZpbml0aXZlbHkgc2F5IHdoZW4gQ1VQUyAyLjUgd2lsbCBlbnRl
ciBiZXRhIHRlc3RpbmcsIGJ1dCBJJ20gaG9waW5nIHNvbWV0aW1lIGluIHRoZSBuZXh0IGZldyBt
b250aHMuLi4KCj4gRG9lcyBhbnlvbmUgaGF2ZSBleHBlcmllbmNlIGltcGxlbWVudGluZyBPQXV0
aCBpbiBjb21iaW5hdGlvbiB3aXRoIExpbnV4IG9wZXJhdGluZyBzeXN0ZW1zPyBPciBkb2VzIGFu
eW9uZSBrbm93IHdoaWNoIG9wZXJhdGluZyBzeXN0ZW1zIChMaW51eCwgV2luZG93cywgTWFjKSBz
dXBwb3J0IE9BdXRoMiBhcyBhbiBhdXRoZW50aWNhdGlvbiBtZXRob2QgYW5kIHdoaWNoIGRvIG5v
dD8KCkN1cnJlbnRseSBXaW5kb3dzIGlzIHRoZSBvbmx5IE9TIHN1cHBvcnRpbmcgT0F1dGggZm9y
IElQUCBwcmludGluZywgYW5kIHRoZW4gb25seSBmb3IgQXp1cmUgVW5pdmVyc2FsIFByaW50IHF1
ZXVlcyAod2hlcmUgdGhlIHVzYWdlIG9mIE9BdXRoIGFuZCBJUFAgaXMgc29tZXdoYXQgIm11ZGRp
ZWQiLi4uKQoKX19fX19fX19fX19fX19fX19fX19fX19fCk1pY2hhZWwgU3dlZXQKCg==
