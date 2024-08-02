Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.31.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08898290F
	for <printing-architecture@lists.linux.dev>; Fri,  2 Aug 2024 04:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.138.31.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722571990; cv=fail; b=Z0tIG/wtlMEhJ3n1WDpvkddwAtyxAygY1OW+U8+nVI/6GqfS3+DoDCBIpwxUkt+u0xn1i0d1CuTyvy/rAiaUXhguv1AGJRd4Qxf2Bj4Jzt5oVs2bzBiDqtxAGlqUocrAnLkIP0aQqlCeNqtQLyrjhZ8ia0lfKS2oB+tJMLrLj4o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722571990; c=relaxed/simple;
	bh=qX8EjV0TKWLJEL7hzKwRM/uIY6jUtW2Y76TbRR+i2g8=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=IoRLK7Q6X2KZhH42tmasMYxTz69sQE6Njs/1q15vDaIoQU1XINQ+HJ1opX/ITKBrj5k7M/3m15z3F4nuzi5bfnwVPcoKmhF7QXbAKOmtAzUKCIQYi0UZRTxUv5mPF4v6ufXsuES+spwgnZcxCR8QsC/0yDTratbLd4+agpVPOJQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au; spf=pass smtp.mailfrom=uq.edu.au; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=eUkCAK6g; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=PIH+IbEt; arc=fail smtp.client-ip=139.138.31.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="eUkCAK6g";
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="PIH+IbEt"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1722571985;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=qX8EjV0TKWLJEL7hzKwRM/uIY6jUtW2Y76TbRR+i2g8=;
  b=eUkCAK6gtJbyjRMS9/ihdvB8XZ7f9zqCfS+oC0Y2EvqV+3Mlu49N8E/W
   dVlhChcEmO+XwcHNgvykTXiSK2W//ZGtpLvNRR86HOEKa564qj2Affqtz
   dOUvHjTEnEffvprI5pObGQyYIpuk58VsmLolWVd0N/VAxuELPgs7PKhBi
   rrRsT6jTWuFNiOMmHmRHem9dDZT5GWPJ9MaNQ4EQH5AFAgHFU4fnyAOmz
   PZwH0KohttXjh9GNbBN1FNBboA4p7iGp0AaK1/o4QQGEAqaiUD9MSS8aa
   3qrsucEmBAP6G9a8QTtTu9ZcTT9r8Ulc8hfvO5cnQ+M2aaIBumjRwBaBM
   Q==;
X-CSE-ConnectionGUID: cRsOAoL+T/SmTg7eodg9lQ==
X-CSE-MsgGUID: VerF2uC7TSSGz+tf60yQNA==
Received: from mail-me3aus01lp2233.outbound.protection.outlook.com (HELO AUS01-ME3-obe.outbound.protection.outlook.com) ([104.47.71.233])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 Aug 2024 14:11:53 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sLhLe94koU0uAUhI2oXlevBvEMZaHanweR+/a/TLDH4Mr77u7UVagFOa1vVcerXGt5tcfw0XJdV/hX4xR5Ta6fGopfE4+uJLr00ux6n/BC4PaKc8YxhRtidLOM/Lr/9Y4WU/SjURknNVUOqQsO4mH0ZifsYWAi1CX++XvWOzv5vfUAuh9jAkHtFEpBneZnnwNife3J5qUgo2yxVCwHYUtmoku8JqnM3D55LV1Ew/gs3wWGSuPnLTr7rMCr15IRDMq/0+tveN3EmrNfF4clnSJ194fWtnHaknxXwDpiRG699bEa7fbjfqjX7iFqoSCHwv45KuorMKSdNNRu0jD2QxBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qX8EjV0TKWLJEL7hzKwRM/uIY6jUtW2Y76TbRR+i2g8=;
 b=LNx+zL34uKqDSoZKTYXvVwFu5v0HGTnn8jqMWOIrNmwX+25lxTpNmHyRUXDPMRzdN7pMuoT+61Pjl3iI1m36Gpkdqtc08oSB+Ms22IUQ9d2QWjflSbF8WyHa1f97Uaebia1CodpCgw9T7NdGSgAsoQCeBwZ3FmS4nmUw+LVlxDtn+eG9d2gg6G0c0HbPUMRxJSecQXV7NI20ablgKfCFQzFfzqQQG/RRcgDPZruLNRhnVTYvFYEwzTWDo4IETGvHoprn4jpHqxLrq5RgYjxW3tYcTQHNUWx+H3EtFlduxoFmvtGWJ9hX/vMyHJ9o9bmUu4fjcSgF5orY/3wjo6vu8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qX8EjV0TKWLJEL7hzKwRM/uIY6jUtW2Y76TbRR+i2g8=;
 b=PIH+IbEt3BN9IekSFMiniDU5Y6+JNaUs8mRjuety9pOxkWBCd2WINs0qisiqVpDlyrfst1q20DPPz27ohAjtx+H9yg5f29mIDpEEEPW+T/OI8cg4k9IOyRpe6qtFPqGY0CEDd4ty7Lyv3rnHBjTE3t38iQRZSIjgVis9+bL/F+sF84wkf/K8Gwi1qCzxhpDeI7SvJb/wyj1wzeomcL0jPSpg2HW6rKwGsXTO+UNeffnZRx/0bsLeEHYRO8XXDndAnDQkVNIzuETUUDoDJyPZFtyFptrbulnZKelJ22/00HXYCREhqJL58kdZPLd5xpFnlX5jPGwmT1raUa/XcOIESg==
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 SY7P282MB5009.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:2ae::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7828.23; Fri, 2 Aug 2024 04:11:52 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a%7]) with mapi id 15.20.7828.023; Fri, 2 Aug 2024
 04:11:52 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: OpenPrinting <printing-architecture@lists.linux.dev>
Subject: RE: Experience with new model Brother DCP-L2600D - no IPP-over-USB
 support?
Thread-Topic: Experience with new model Brother DCP-L2600D - no IPP-over-USB
 support?
Thread-Index: AQHa5By2y23swWuyMkm5HYXeUOUIdrISfHIAgADfCMA=
Date: Fri, 2 Aug 2024 04:11:51 +0000
Message-ID:
 <SYBP282MB2617A02AAAB3E0756077C15E87B32@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <ae94bdb7-69d6-48dd-9195-91ba6511273a@redhat.com>
 <88461E86-DF80-4738-B813-E50CDF4A82A1@msweet.org>
In-Reply-To: <88461E86-DF80-4738-B813-E50CDF4A82A1@msweet.org>
Accept-Language: en-AU, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ActionId=31c8e8b9-dfa7-4d26-8bd0-1cbfac81d99c;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ContentBits=0;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Enabled=true;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Method=Standard;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Name=OFFICIAL
 -
 INTERNAL;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SetDate=2024-08-02T04:10:03Z;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|SY7P282MB5009:EE_
x-ms-office365-filtering-correlation-id: 0b7c20ba-335d-4f86-eae7-08dcb2a93ce0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?OWxFYko4NUhTS1BtZXcrMGVuVFA1S2RGY0F0d1J5ZWF2YkVCYmZ3ZStvNDk2?=
 =?utf-8?B?WnpISnpRVlZLVUJndGE3Y0loZEVLbWtwTXNtRXdQTGEyK2lCZzlpUjM3cUJR?=
 =?utf-8?B?ZUlwZ2JjcHM4Sk85bnpoRlF5MUhZbjNFOVNvZkRKVHR5N0ZndEFSSEVERzN2?=
 =?utf-8?B?UzJTaHQ1VG02OUFCMHloYXBadndjYldEeGg1bEYvOFpHeDFHbmkya0dMWFQx?=
 =?utf-8?B?ajQ1LzNsQnhHbTJxSlNrb2VPZHBvcHZ1V0Q5bm1ibEg0cFdmOU14T3k0OUpq?=
 =?utf-8?B?Q2wwYWg0dmVHTUErUlVHOUZkS1JTQjhqWHVLR1hsSXJvRlRzZEFNQ1RXVC9U?=
 =?utf-8?B?NVRzNTQ4TmdGQi95eVBRZ0pQUGdyU0ttK3FwdDNlUGFYVmVyZFd1bm9BZmxU?=
 =?utf-8?B?aGxEeHVVWDM3RXhGYnZZelRrenkrdkVSM2x4d1lqQ0srTFBqVEljSUp2ZS9Z?=
 =?utf-8?B?SGFNVS9QZmI5YnFEYzM5dlo2VDZESW1acGt6SVU0NWhuTXAxeHhMRmNNNU1E?=
 =?utf-8?B?SmNsdnFxSmFyS2tpSDFENjh1ZUNOOS90ZDNDSEZob2ZPOHRqSjc2cU01V045?=
 =?utf-8?B?TEEzOWg3Q1Q3ZnhSS0pHa3RMWTBvbkZ5Y1hzU1E4TVdsejZyKzZpT3R3dlZH?=
 =?utf-8?B?VHBxOVdaejY0bWwzejgwQlV4cGR1VjFROFNtci9mV0dhS3F0RXpTNG1oWU1u?=
 =?utf-8?B?TFgzYUFId2oyN21zQm5QOHZRNzJ2MisyeG05VHAyL2RmMVR2Y3F1ZWhGRE0v?=
 =?utf-8?B?TjVXbEpMTDYwcDFpVHZkTUFGNlFSS2ttRGFmQXZQZFh4MWJpVHk1a00vSElq?=
 =?utf-8?B?d1lYZ01RSzBIM2lRL1FLSWRWeENCVGhuK1NuVUdGYThEVkhZSEZrcjlleitI?=
 =?utf-8?B?c3BRa0E5cWdTZUptMnUyQ0lwOS9zSnFGNVBlbEFMOHY1S3pRSTlkdDJvTWEr?=
 =?utf-8?B?ZWY2Y29ZTFJINnBtUXQwajZENEdqVG1EbEUvcTZUSjRhTXlRWG9aOCtkTXZx?=
 =?utf-8?B?ZlBkL1BNWkJySi9sS21oUWFGYmVIMzJBc0k4OWNjbHlVUU5CRzliMFR5YSt0?=
 =?utf-8?B?UzhzaHdZcDVWTlpyOW5hVXJLZWRJSnB2KzhZd2RSOFk2WVZka2dvR3dxeDl2?=
 =?utf-8?B?WUpxNEtJK2xKVnFEd0VxZ0dYamJiakoxMHErakF0dm93MGpBTjU5MHFyempp?=
 =?utf-8?B?QXpnZHFhUTUyUXJrNTV0dEIzTFFLMWduODNWRmFUcW9kYVhXWmJOMWdHNkVu?=
 =?utf-8?B?Q0pRaFNsRlJYYWRvQ1AvajMrNE8ya2JKSWxmS0RIWjZWSTlROWEzUXZJNlZK?=
 =?utf-8?B?YnBkd2htbWwxRzk3M01uTi9qV2h4eUROSndoZ0pWOXY1MXlDYTlXcU1WZnFl?=
 =?utf-8?B?UmJiTks0dnZyTkR2NjZQNFdqYndlc1RjTENQOGtieUZuZUl1eEtGWXAwL0tY?=
 =?utf-8?B?MkNJUUR3MVIvcVVxOHJNaXlyRXdaOEF2WE9IWVJMWG9ORVlZdlRVVnBKTXhP?=
 =?utf-8?B?NkgyZXIzZHpDVVdxYUJpbk1hU1pjSmwrWVdSQW9UNVBsN2RYUUk0SmtOaERZ?=
 =?utf-8?B?VjBDR1owd2tzeWtDTjJoaXp5SE1oSGFYV1lxdWtsUlRLTFNyUFJQTXplK1pC?=
 =?utf-8?B?OWJpcEROMDNuR0FhUmp0ZGlHckNrM2VQS0pwWUdkTXRUSC9jOWl0MXZQRnFD?=
 =?utf-8?B?OG5qUFVjZ1hxMWNPNk83ZFI5Mm1SdXgzbWpoUVM4NFBsNEQ3ZStYS2xZc1dv?=
 =?utf-8?B?dzVrTHRhY2hKWVNjd1VFakFQbXpMM2pSSmZpb2ZHb3ZKamM0eCt1ZnYzS2ZW?=
 =?utf-8?Q?/jGTzH5rkh0KcjoJLnMn8X7bZyW7iLn867A6s=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?N1QzZFNUa2hBZjJhUW9EZjkwN2c2RDdYVVZKSnZLNmhXT3QxakEvNkpxbENm?=
 =?utf-8?B?dWdSOG93aTJWQjlwZFJlVHBNMW13ajh4K1d3c0tURXdXaERJV3RMaEQySTRa?=
 =?utf-8?B?SlFxTVhhOXlTUTA4T1JFWWZXNkVlMTc2NTRSM1RmSVR3MmZtZmhHOGVKajJo?=
 =?utf-8?B?U2hoSENRN0F5WTJYQ2F6WHBLS1FBR2diazV4QVRoeUx6VERteGZMYXA5TU93?=
 =?utf-8?B?czFFeTJvT3d4Smk3bGVNdmtCU1ZJb29NWmVSNTQvWkt3NmJwOEp6VnppcEtO?=
 =?utf-8?B?M01OcTM2bTVRdGNjNkZkKzNRSGhlRHdxVVdQaVJDTUdya1A3azBKL1NvWEh5?=
 =?utf-8?B?SnprVVZZampIcldscFZ0ZmpJTnJXNFpzQktKM2VkZkRiOS9mdm85T1E1L01w?=
 =?utf-8?B?MzRYSUJQYlRLUVlnVVVHQTNXQU9pRHlNeWU2NFVxc2RROHdtRzlnM2Z0T1l1?=
 =?utf-8?B?WUJGdzBPdmUraUcyUHZkNmdkeGpqSFRGb0xsRERtU3U0TUtOYVJ6L1c1Qk5L?=
 =?utf-8?B?R3JWdytOaWVUUlBSM3IyeVZIREtvdzFRZmRCN3dhYlhjcUpSdGN5Q0U4L0pY?=
 =?utf-8?B?bmxXZFFzQjYyV2wvK3UxRDJyQXlabCtqbTlodnQ4OTB3aVNkajJ0NDZoNWRq?=
 =?utf-8?B?UFk0aUJnUXNIZXZSK0Zpc0ZEM3VIdytqaGZrSjhZYnV1dnpMRlp1aWszNnF1?=
 =?utf-8?B?TVdUN2VOT2lRc2hSek13b1JnWm5PR2JPbFNrRWNEOE9FQzdqOS9xdVdUc1ZJ?=
 =?utf-8?B?UmhRU2d6MmRHRG1QZk5pNHh3YU1DakppUTJyM2doM2Q2djd0UDZzWDFId1c4?=
 =?utf-8?B?VHpBUkkyYUl5ZHFKVlF4NVA1SExqNnhjOHRBNk96bER6V2dJOXIycStSbTRX?=
 =?utf-8?B?alhJOGdhMGRGb3dmOVlwUzRRdGtKYmQva2wzakE0RS9iZVJNRUV1azlBT0Zt?=
 =?utf-8?B?bWM3L0I4RmFRVGxJdGRIY20xcTIrcmx0VzRKOWdYeVhXM3dyU2VRaDUvRWti?=
 =?utf-8?B?aGVQSmU5Q1Z3Qjc3cUhsc3FyTXlQQzVRWXlVakhsOWFnQlZFSmNDck0zL2Vi?=
 =?utf-8?B?cG9nQ2RuWDc0UkY3d0pnSlUrSzRGMWo4NWJQV2JKTlhtcXkrSVNWOVlIVk0z?=
 =?utf-8?B?VzZHdnRVQlJHemhHNUV3WjRJTy9LVkM3YWIrT3JZcEdhdFR4TW1RcXpCdzFP?=
 =?utf-8?B?cjRIK29tNzdmdUhGU0I3aHZWMEpGY3JMOWNEaXdlZWsyUGk5TjczL0xLYitO?=
 =?utf-8?B?T2VSYnFFa1I5bnJ4MHlPZTNydktYQWJHaFFCRHFsUWFOYzkvUnduSVBOamdQ?=
 =?utf-8?B?Tm5ic2FOQldwWm54d0lVVmZxOVQ3dUhEdnRBYjNZTnpTTGMwL2NaT3hvVHZB?=
 =?utf-8?B?V3lJSU5INjFCdzVyTURMMk5Bbk5ZRmphQjlrRmNmTEJIOHladUJkMWFLSWp2?=
 =?utf-8?B?VkxtajJwU285dWZOVkhZZG10aE8vRGZ2UWE2a05XS3ArWThESXgzaHZxbk1R?=
 =?utf-8?B?RlZ6azhheDZTQVdpZmZiNnZzV25zNVJJd3NJbFBjT21hMnMwaVpmekpkSXhr?=
 =?utf-8?B?OEdRUFk3c0R5b0wyY0xQVGpqTndXeGNqcm9ESlE0bi93bXNiYWlwTlFPbVEv?=
 =?utf-8?B?ZlFMV1FKY1JBWHJ6Z3JKWERrZkJ4SW5GWGN2WkNWVnZCdGZoQi9iRjJtRTZO?=
 =?utf-8?B?dG45QUdoS3dDWGlmdUVlMm0vWXMva2g5UXZqTHFYUzdKNFVtY2ZrWi80TGxa?=
 =?utf-8?B?UkZLc09CcHJSY1JXUWVRZUZhVnJJYkNSa1BhZUh1bDFXUGVqcVdCNVlobmtx?=
 =?utf-8?B?dWJCcHpKQUpnbzk0dmNFZ3YvYWJXeXhPWjBsaHBhcE0rS0szU3Z3YmZzaEUr?=
 =?utf-8?B?V3J5MXNPUXJ4MUZrWHRMTExvZ29xODloR0tCdWdkcDIxc1oycFZ1c0o3QWsy?=
 =?utf-8?B?TEtaaHFFT0VVRFZGQnoxRzFjOU4wdjFuRmM3UnFaclRvM3BxbDUxYzhHU2tO?=
 =?utf-8?B?R0pHRDMvQmlFNUk5RzdqVWUxOWlGYUJzQ09vdW11NVd2cldxT0xnMDJROTFj?=
 =?utf-8?B?Y2FTZHNyNTdGb3FnVHpjbGtYTUZ5ekRra2wxRXBUVlFkdkJHdldlY3hsVEUy?=
 =?utf-8?Q?r0Zg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	K72ZObKyoCcP7A8HvWH0IuI9PZzpOKcAQZXKM5s3La6wdKZfJmj9y4wilHp2HJ7ObF/EoKku9II5Fn1soMd3l5GwQvgas/4+WhoaftoY4M5j6r0TOKo+Kh8JR+uh+C1N+IomOuFaL5XSL9moi6sUPXF3BHTcb0rZFYLnUuTJSIbKCObZMM7joNLtd++Tzzm279CYa2Gy6SMyfaWvL6OtPw3GQe2HbifZ1AKVfNC+PJWJD40jz+bzYYy2XSufsBoqFpAPd/4wYIDUh4cndxK+5iDYTMBA80y0vkV9xGuVmZBMaYIer29JW55s9K/l38RvUxBLkCwPPQgcCI23NpEDNl463+sRawyZINhZTA5bc5JH0FO2BGr4WzxmauI0dannlcWwGoK31lOnJdr/4JvOKMXVFaYFulqxE6caihgPF8sgsFuLRlBXvt+XAPyuXnWvmQR4+kB/tIknGDSxF0ibCyf9ZS6AJNMY+4EvxZ3oSKhUi55lyNLkGY43xt76aa6wAKw9TqQ9TZ4Sv/Ai9SLV8BlLNpsZdZEvoOgwZcX8BgTzMNguClgFwkOGa8tB+gQfo0L9g+pVCWx5ikU7jjRLHEzkQUqPulr4Fy9xW2Q97D8=
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7c20ba-335d-4f86-eae7-08dcb2a93ce0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 04:11:52.0202
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bHIr2hV7BaCYxwRkhWrbZQoBt0ibHcJUxtV8r1fGNX65TLRiZlxtcJqDgVqf4qMgoo5EaWjq79AQbeUrN6VeaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7P282MB5009

SGkgQWxsLA0KDQo+PiBkbyB5b3UgaGF2ZSBhbnkgZXhwZXJpZW5jZSB1c2luZyB0aGUgbWVudGlv
bmVkIG1vZGVsIGRyaXZlcmxlc3NseSB2aWENCj4+IElQUC1vdmVyLVVTQj8gQSBDb2xsZWFndWUg
Ym91Z2h0IGl0IGJhc2VkIG9uICJCdXkgQnJvdGhlciIgcmVjb21tZW5kYXRpb24NCj4+IGZyb20g
dmFyaW91cyBwZW9wbGUgKHdpbmtpbmcgdG8gVGlsbCwgc2luY2UgaGUgbm93IHJlY29tbWVuZHMg
QnJvdGhlciA7KSApLA0KPj4gYnV0IGhlIGZvdW5kIG91dCBpdCBpcyBub3QgcGx1ZyBhbmQgcGxh
eSBhcyB0aGUgY3VycmVudCBwcmludGVycy4NCj4gDQo+IE9LLCBzbyBsb29raW5nIHRoaXMgbW9k
ZWwgdXAgaXQgYXBwZWFycyB0byBiZSBhIGJ1ZGdldCBVU0Itb25seSBsYXNlciBmb3INCj4gRXVy
b3BlL0FmcmljYS9Bc2lhLiAgVGhlIERDUC1MMjY0MERXIChhIHdpcmVsZXNzIHZlcnNpb24gb2Yg
dGhpcyBwcmludGVyKQ0KPiBpcyBhdmFpbGFibGUgaW4gTm9ydGggQW1lcmljYSwgYnV0IGl0IGFs
c28gZG9lc24ndCBzdXBwb3J0IGRyaXZlcmxlc3MNCj4gcHJpbnRpbmcuLi4gIFRoZXJlIHdhcyBh
IHJlY2VudCBjb21tZW50IG9uIG9uZSBvZiB0aGUgQ1VQUyBidWcgcmVwb3J0cw0KPiB0aGF0IHdl
IGFyZW4ndCBkb2luZyBhIGdvb2QgZW5vdWdoIGpvYiB0ZWxsaW5nIHVzZXJzIHdoYXQgdG8gbG9v
ayBmb3IgaW4NCj4gYSBwcmludGVyLCBhbmQgdGhpcyBpcyBhIGNhc2Ugb2YgYSB2ZW5kb3IgcHJv
ZHVjaW5nIGEgdGhyb3ctYmFjayBwcmludGVyDQo+IHRoYXQgaXMgYmFzaWNhbGx5IGEgcGFwZXJ3
ZWlnaHQgb24gTGludXguLi4gOi8gIFdlICpkbyogbmVlZCB0byBkbyBiZXR0ZXINCj4gYWJvdXQg
YWR2ZXJ0aXNpbmcgd2hhdCBwcmludGVyKHMpIHRvIGJ1eS4uLg0KDQpBdCBsZWFzdCB3aXRoIHRo
ZSBEQ1AtTDI2NDBEVywgSSBkb24ndCB0aGluayBpdCB3b3VsZCBiZSBhIHBhcGVyd2VpZ2h0DQpm
b3IgTGludXggaWYgV2ktRmkgb3IgRXRoZXJuZXQgYXJlIHVzZWQsIGFzIGFjY29yZGluZyB0byB0
aGUgZm9sbG93aW5nDQpwYWdlOg0KICBodHRwczovL3d3dy5icm90aGVyLXVzYS5jb20vcHJvZHVj
dHMvZGNwbDI2NDBkdw0KDQpUaGUgRENQLUwyNjQwRFcgc3VwcG9ydHMgQWlyUHJpbnQsIEJyb3Ro
ZXIgTW9iaWxlIENvbm5lY3QsIE1vcHJpYSBhbmQNCldpLUZpIERpcmVjdC4NCg0KSSBzdXNwZWN0
IGl0IHdhcyBhIGRpZmZlcmVudCBtb2RlbCB0aGF0IGRpZG4ndCBoYXZlIGRyaXZlcmxlc3Mgc3Vw
cG9ydCwNCih1bmxlc3MgdGhleSB3ZXJlIHJlZmVycmluZyB0byBVU0IpLg0KDQo+PiBUaGUgbW9k
ZWwgbG9va3MgdG8gYmUgZnJvbSAyMDIzLCBzbyBJIHdhcyBzdXJwcmlzZWQgdGhlcmUgYXJlIG5l
dyBTT0hPIG1vZGVscyB3aXRob3V0IGFueSBkcml2ZXJsZXNzIHN1cHBvcnQgdGhlc2UgZGF5cywg
ZXZlbiBmb3IgcmVjb21tZW5kZWQgQnJvdGhlci4uLg0KPiANCj4gVGhhdCBzdXJwcmlzZXMgbWUg
YXMgd2VsbCENCj4gDQo+IEZvciB0aGUgcmVjb3JkLCB0aGlzIHByaW50ZXIgKGFuZCBpdHMgd2ly
ZWxlc3MgY291c2luKSByZXF1aXJlIGEgZHJpdmVyLg0KPiBUaGV5IGRvbid0IGltcGxlbWVudCBh
bnkgb2YgdGhlIElQUCBzdGFjay4uLg0KDQoNClJlZ2FyZGluZyB0aGUgb3JpZ2luYWxseSBtZW50
aW9uZWQgRENQLUwyNjAwRCwgbG9va2luZyBhdCB0aGUgc3BlY3MgZm9yIHRoYXQNCm1vZGVsIGFu
ZCBvdGhlcnMgaW4gdGhlIHNlcmllczoNCmh0dHBzOi8vc3VwcG9ydC5icm90aGVyLmNvbS9nL3Mv
aWQvaHRtbGRvYy9tZmMvY3ZfZGNwbDI1MDhkdy91a2UvaHRtbC9HVUlELTdBMzg4MzlGLTVDRDMt
NENBRC1BMTcwLTVFQTE3RTg5QTY0RV8xLmh0bWwNCg0KTG9va3MgbGlrZSB0aGUgRENQLUwyNjAw
RCBpcyB0aGUgb25seSBvbmUgaW4gdGhlIHNlcmllcyB0aGF0IGlzIFVTQiBvbmx5LA0Kd2hpY2gg
aXMgYSBzaGFtZSB3aGVuIHRoZXkgZG9uJ3Qgc3VwcG9ydCBJUFAtb3Zlci1VU0Igd2l0aCB0aGVp
ciBVU0IgMi4wDQpwb3J0IChidXQgZG8gd2l0aCBXaS1GaSBhbmQgRXRoZXJuZXQgZm9yIHRoZSBv
dGhlciBtb2RlbHMgaW4gdGhlIHNlcmllcykuDQoNCg0KDQpDaGVlcnMsDQpEb3VnDQo=
