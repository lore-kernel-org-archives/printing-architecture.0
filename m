Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDC21B423C
	for <printing-architecture@lists.linux-foundation.org>; Fri,  3 Oct 2025 01:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=140.211.166.137
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759453857; cv=fail; b=fCWtsArjpRX7zAyE67n/ohWTcSlEIwMPGxKrhuxFwzIRv5qpdeC5lgxDk3XzUBNRARfRrxtKSMs5ktNYQNSXSBQS9lAYy/D2u4IWmyDefeXWXxQ6y+gDc4lDI+ys8ikWE19a3JLmZOlJvnCur7LS8T9E37DjpRFm9DxLUjcCses=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759453857; c=relaxed/simple;
	bh=Nlvx4LO/dkfoGjSL+NLcZAnKqAR04KE8iPgqfi+1KaQ=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=dN/CUaLA7FyEIK3BoFzpz01YQv4Lk87cudCfsSSXpBtSGVbs4v6z5Sa2bjPB2AUMK55QzmD/2T0VWFuTNa9LEovjAReu5hq7wGR0dyH/zC1kqJcEoPC2xUPHBwrjD0zTTrZaFYAM0XBrq54tc5zpRKU2fR875VTpQvGKEBk1fwk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=AMBNkvRb; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=huTTcmnq; arc=fail smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="AMBNkvRb";
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="huTTcmnq"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAF7540B34
	for <printing-architecture@lists.linux-foundation.org>; Fri,  3 Oct 2025 01:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -8.093
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PaYf0fpehaAj for <printing-architecture@lists.linux-foundation.org>;
 Fri,  3 Oct 2025 01:10:47 +0000 (UTC)
X-Greylist: delayed 433 seconds by postgrey-1.37 at util1.osuosl.org; Fri, 03 Oct 2025 01:10:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3750140B45
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=uq.edu.au
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3750140B45
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=uq.edu.au header.i=@uq.edu.au header.a=rsa-sha256 header.s=s1ces header.b=AMBNkvRb;
	dkim=pass (2048-bit key, unprotected) header.d=uq.edu.au header.i=@uq.edu.au header.a=rsa-sha256 header.s=selector2 header.b=huTTcmnq
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.138.31.124; helo=esa.hc86-32.ap.iphmx.com; envelope-from=doug@uq.edu.au; receiver=<UNKNOWN> 
Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.31.124])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3750140B45
	for <printing-architecture@lists.linux-foundation.org>; Fri,  3 Oct 2025 01:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1759453844;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=Nlvx4LO/dkfoGjSL+NLcZAnKqAR04KE8iPgqfi+1KaQ=;
  b=AMBNkvRbducd+72FScVEnlemKEq4PIJ1SPu1woRDal8Ih2O8LIk3syE3
   /0aQNsOjTE18W4ySzqOjLyfAjFnGtG3kuzEVPoWPDL8OeAM46FfsVRdL8
   kJ+eTnrBBx74oh/0rMEbLvaB/SFd2HG+RX1sNE2VyqE+Sc/nMnp7cZ4DY
   Yq4B01YrDYXAugHyLPjnawzdIYuL7azpVRR/+1JTLJz+EMN7W2+C9vQtJ
   h/RAclBM8ByzLIEZve4O5VIt4NSGFD0+lTN0njg3pa8kK+rnm4Xvvbpzy
   Ln0fqFeeYSmaDXutmQx4iyAM5vrKBxqNDE4jj9ulR60MIsMZH4dFVfXD0
   g==;
X-CSE-ConnectionGUID: vGl4TNWFS5G2GQbYWTPudw==
X-CSE-MsgGUID: HfO0BrB0S6azllWfgEu1Dg==
Received: from mail-australiaeastazon11020099.outbound.protection.outlook.com (HELO SY8PR01CU002.outbound.protection.outlook.com) ([52.101.150.99])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Oct 2025 11:03:27 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EU3QzUhNdQfBpId5pZaQ0RZap/ylajtxana7YneE85510LY8Wz/dH76ruqpO2/zG/5Pdd6Unf0IHcL2UdISsFeot/+Niaagj792sZ29W1U1NvSd5JT5LBADe8sbITEWnbNoBrz8tOpKOLsipAbrpxpKGgNnwyRAQR6Wz6//KLoF3YrXDTft93PajrE9T6wWLcqJsTEG7YJn9bBfoOfjP3YhsRcnfpYhaifo0Rc0foyVIIzANCtqCi3rS2KX75Gay93vDZSdsazWsdpoO3S1Qx9C1u+nlWvGBzhAVsIEbJ9GN87ynx+KSD72kZiiLEHORecAWXEbU/AddvOChIRO+cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nlvx4LO/dkfoGjSL+NLcZAnKqAR04KE8iPgqfi+1KaQ=;
 b=mMZfjEXvTm+R3WVirG4/1dshZNe52gsnZYqJ1XVNHwdYA7JbqNfiGmW6fbAP8uEsfljE5nCfgii8n8e7HOgBA5b4Jf8k4WFbY480RP4a4jGrSCx2dvziX/1DNsCRqfjbapxEW55yxDa685vIECzSu5r6lUSyykPfBQIqtBU6H9DmLJCA5ALNXbIIF2g8iIwGh4tqUHXIc5eAMFqE1pJpWFrGStoVCfRigpH6eelPssI+SfZyd3un0LRLt2rUHWLjXioLUgTEn/PFTJUAMJcPqTG9EwRvR+LCP0tFjnb1lMa1HIpJhgwoMXe4usyjx/sXzemur9TqroLrK+GrdSi/Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nlvx4LO/dkfoGjSL+NLcZAnKqAR04KE8iPgqfi+1KaQ=;
 b=huTTcmnqcDg/JA1531V1MGvUTGRq9PH+bTFv2OnTgbheljMYy16O6tyKuFWNKytCcuia86rZKvFPMYZo+cEG5jZkKY+gfihYLPsZAo86l5UDnssgCl5XPl6OywhoAxOqHH2HJJTZvqEqApTMGcmR6yhhtkWLGuZ4FmnwytSaUBIPUs4My7kmHEsO9aPARc8ycU7q0B18FOMb/Vzpf9GHKIwidTDIFG60cHeNFxkiqk9T/9NzYlLMFNhC6JsgTpE3rgPyZb2CsUYBb3BfLFErtEfCzTU8qRMk0nc9kXct9gURKpxC1PdNViBXmvKLIsnLC7VLr/RRZZ7S29/C8ZI+vQ==
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 ME0P282MB4767.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:222::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9182.16; Fri, 3 Oct 2025 01:03:24 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a%6]) with mapi id 15.20.9182.015; Fri, 3 Oct 2025
 01:03:24 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: "printing-architecture@lists.linux-foundation.org"
	<printing-architecture@lists.linux-foundation.org>
Subject:
 =?Windows-1252?Q?Open_Printer_=97_open-source,_repairable_inkjet_printer?=
Thread-Topic:
 =?Windows-1252?Q?Open_Printer_=97_open-source,_repairable_inkjet_printer?=
Thread-Index: Adw0AYBTY9O1BEDSS+KWrJdjdyphmQ==
Date: Fri, 3 Oct 2025 01:03:24 +0000
Message-ID:
 <SYBP282MB2617A78D3E14B4D50F9D90D887E4A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-AU, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ActionId=ab721281-1e32-4924-b338-70e7fbaf67d9;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ContentBits=0;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Enabled=true;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Method=Standard;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Name=OFFICIAL
 -
 INTERNAL;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SetDate=2025-10-03T00:35:34Z;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|ME0P282MB4767:EE_
x-ms-office365-filtering-correlation-id: 4cc67344-197d-4f3b-a0cc-08de0218a78c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|19092799006|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?Windows-1252?Q?lL+qfiZL+jOtbgR7S8lnaUIYwo1K+T4T7fcEpL6z9/TaVc5FIP8PN1Hc?=
 =?Windows-1252?Q?yiSO9KIgpnzPe0FmEddhbih5v+2uRtd8esbJ0c4/Rgf2YcV4GXpnj0W2?=
 =?Windows-1252?Q?BjOeo1RRCg4REaX/yVa5MjakNE1GQqoLKHVdR8LT+FOq07abcPq8HsQr?=
 =?Windows-1252?Q?6AgEEq9+MWHIamdPCHgoT7raztMzeBjWNt865MeQdUMOx9V38FNNmUkg?=
 =?Windows-1252?Q?+DLs+s9e6PRCuIfz86zMzWKdSE//ZMfZ2IKxFsGCh/RKBP11cD9oZNM0?=
 =?Windows-1252?Q?8wyvZpyPEHm674OGfKCP85sAc+sdn24EzhV6Ted5jSEInnIsMpvDj+6Y?=
 =?Windows-1252?Q?3zTOWOvGJg8KPhlJz2nubbtLd91dyPbSRxRcdO5l4PmugH43t2oVtAyz?=
 =?Windows-1252?Q?d8GQ2aWr+cRJB7xKIPZdFxew3OgrfiZ8TBjOzZZ0p3HUQRYWurgLejF+?=
 =?Windows-1252?Q?1NzebLCEZwBYtLK4UwzbHutOudQMNnXBV4pnQJUE5oeuUt13GcWQZ3Ob?=
 =?Windows-1252?Q?9FZmcGoOPgFmeF8j3rLBUmmr8gViEY27oN97YbxXoXy1lMKokGvUE0hU?=
 =?Windows-1252?Q?U9xQ1Aw8mGuxXizPvA45O85FpaHXoIasFjbJaqdl7uulpBnc8uLqsVCA?=
 =?Windows-1252?Q?cBv/skpJ7Y8gsUFqWbJvbVIj2IM515ltPuGPi0ZIwGBogNCr3G2fd9ut?=
 =?Windows-1252?Q?kA3vCjpGH3TixlS93tzUEJUdKT34T84Nhtk8zjwTRx1QmvnIyDM3ucxX?=
 =?Windows-1252?Q?9wdDn+CCYlDJX15vS253K5XhrYAusOLva+kxLLydG8AZFN5eUDundPDB?=
 =?Windows-1252?Q?+aZnbte0I1EcinEmRw2Kl5EsM3n5GFs1XfkLnLLAc6No6QhF7G8OQbon?=
 =?Windows-1252?Q?9bhyA14DU+F6L2jcvzYK7NuwvUuCx1xlUXTiNu2necneC5lalqEIjoLF?=
 =?Windows-1252?Q?khF3uvRZz4ZdXnbO+Wj8wZfDNAgFb7CJt4m7pyQJnHsoizH/Cqy9H9j/?=
 =?Windows-1252?Q?ILx3mwDmpbGNSE7nbNHgo7maN2wH+uUwoZDRcQN0Bk5/uzQR3LQ/rrn/?=
 =?Windows-1252?Q?KxlrDUqBp8V5uoNUpuTWiLQCTLigEuK4ub6y9629BkrlaGgb6iT6qpBw?=
 =?Windows-1252?Q?LaMAIdJRrT0xCk6vcOqjtAYFubaqLNAbRV64OJ/72XrPfOubjAxayqc4?=
 =?Windows-1252?Q?RH+lacDRuz3TpsXdKICd4FGgxGREguhv1oijnL+r4lk2FAmXSx0GiosG?=
 =?Windows-1252?Q?qLRS5Bd2Y7TN6Opt2miol+CD+Kd1sFdfY5DAOiLw8eFY2XDL9rY2O2tY?=
 =?Windows-1252?Q?oPjKhZ0MwIPnsce+UC2Z1CNmZdNHSpjoz0tc9M7nCsYVtqxUFCKDiWfS?=
 =?Windows-1252?Q?ydk6XBVY5MyCEe+BC3nAPy0oN34LYUFI8ctaEtwW3u3WxA+hpMwPQnwh?=
 =?Windows-1252?Q?w2TPtWPuXiCQz809LbYQlf3oy8au1cYKy396WECUNbVRt+FKaj8mCylC?=
 =?Windows-1252?Q?ZysqVq4OYzAShWlMh6PNQ66aK94+oiXxhWDP0nw60DujUokzrIioHybZ?=
 =?Windows-1252?Q?m1GxGPHnc11phPkxbKwZStAuOFeMmMI/uOba1w=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?8LujieTQS7PKvRQ3kvi/67osHOHNAp7CI926hGrcjqbAaxD/dmWcKNgm?=
 =?Windows-1252?Q?OUedsZ3ZffXKpeOvJF4F2iVQqnLMTncfj+g5X4NCXzdbN3gZSkLtL4Eu?=
 =?Windows-1252?Q?VzBdPPtkpuxXTEeXkQqtxhQNi0A7oTgiQ1QdiX1sJZxbKzjaRKFgdmqc?=
 =?Windows-1252?Q?/FuT0OpakNg9vdKknRfZfdRFV5bdcCYU0+nCl2vTkAfrB6J8rA3TrRCb?=
 =?Windows-1252?Q?UftMAQXdH1hpUkEiggLceqKABEZgFbPQ/gVvOkfxVFoVhFY/FsxDnff/?=
 =?Windows-1252?Q?m4fv9YpEjwomCtI5FKMj2fsS/tLjU3gmU6xE4YF0sdO2svLGliYPgcO1?=
 =?Windows-1252?Q?MXDv1/EFbXNQmnr6ivix6YNszmXvd19/HlwMXsea3R85qzi1tAvajpwc?=
 =?Windows-1252?Q?TGt1hyiBMVz6er4Ucep2gKqGmIEEzqtHsh7huMTUb+teWHOAan4fVrxh?=
 =?Windows-1252?Q?Bea5FnpLZgobkFhzU0n5bouKOxmXO1s5vuoK6cj5Tvv54pjkOZupN/Yp?=
 =?Windows-1252?Q?lm54u7EWRjphBDuHA5LMNZ1VWEK/8hzBgTDGdKYRudRGb4iuXMZ0t+p0?=
 =?Windows-1252?Q?ZRIrieJl0PEfdwASBirqPiimIRfdpUR86Vf+Ag7XCwxd7rkEzCrR/6hE?=
 =?Windows-1252?Q?B0/0AGytGPw9IMBEle5zSuOHiVET5xagO6J0TTRfIweAGocC7BEd4OCI?=
 =?Windows-1252?Q?hAdRYT33MJ6TfQ/F8DvGi2qPtL5J94MkfyebK+J0GI44W+NlbZaaOkQF?=
 =?Windows-1252?Q?00R8GI7AXS847YlUUNR2uOEVyeauwjepBaGftuQbEtwxRzKZqjSD3Amp?=
 =?Windows-1252?Q?a+3XJc3j+LoZI9PDww5a6LEKmDXD4OeW+2yfBhe1mEh/CWQEWeTT8eeS?=
 =?Windows-1252?Q?9BHQwx7sRu0brLLaw7/YNSJRfnKWjPy0XNrMEkskJUynYCvE7gPPsuN8?=
 =?Windows-1252?Q?8uC3GsAR00GkAyVO3Tdd3bOxvaPpVJRSslaEW43WpnzB9+UZwNc2ukVh?=
 =?Windows-1252?Q?EAeknXkg65kBGU86zMW4nNjXBGh/vi3/ky5Y/1s6ScN5teWTCO0YCpwa?=
 =?Windows-1252?Q?Y5WIU+inyUOijEiamxq+e733fSG8pJ2XIK4sEaX1UWVDcnSshVBB/VrY?=
 =?Windows-1252?Q?/fhSMgmULZ2Q7pIN64wAKSurINb5w04eeyGDe/h52xdiycCpQbF7Yx6g?=
 =?Windows-1252?Q?Unr2PQTzwZA6qaPSEXxeFsQxyEY43uXxQS/vl/IR451YaZpgQi6fdTqs?=
 =?Windows-1252?Q?5Aqctgbd4631C1T3jvHSHBGOz5zKk17bV49wWPcYQ9P8IDgElb3ADlS6?=
 =?Windows-1252?Q?XY/+NCeJrgmvnaelQCjC+8f/ZRzHQ6jsIuihwZg0zHrSRDJKxf9Q+0Ni?=
 =?Windows-1252?Q?c5CvFhDCHwaQvkGIW2qIcJlT7zPR/ECIkQn44uiF8/8piawhHs6a1HtG?=
 =?Windows-1252?Q?yefmnrAWNnOtFVlyEOkHBXXTG+RCeSY3IY64lvDBpbJu9f7ZmjhFSHLe?=
 =?Windows-1252?Q?U+i3CsYxdbKM1w7VK52TsmHV8JcBmd28CP4fXNLOC2ssfcioD0QJT0WN?=
 =?Windows-1252?Q?O9ULPty3rUnw+VdplluYaN/AgotF1LvYvL52+GjwWY08wHI1qtLLfQPm?=
 =?Windows-1252?Q?T4v2JIcRC5NsD1/E4KDNeoSkgtEM8IvqSsGXI1PxZ9DZV7DoY2YFmrO7?=
 =?Windows-1252?Q?LieqEELUjsE=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	UxPwbEZhUlSMspyARdukUsS07PENeiBT80sugk5Qa+984SCFjXoIvicey0Q14odWXgl2tIaT2hhCNNna3kvs+/BUZzAIqzrFKWoIsAZifG7EYv3Ng9U1B45amyaCiMtTjKJ/r+KiG4C7WDsOGYj9xushvl5AZ8aJhqOU+Dn2RubjAVu81xec1loU/f7nfCHz7pDzgUjkPk/6wBBDAeQWoLiRhvHH4bPp7BkOldoDdiGPgOKghNx3e5uCTSq/EUJORQlJ0eJD5h08V6seYesiuLEtuUeFia+pP5GX5EHHFF61Op9+ZW1UNYDhxdt/ZFPX+Hbe6O35MkCnxumsm1300bY9JjxfBhCdaYtgFMLuI6YwIiL71z27wv3nvx2+EdmYDIpRJMTh04cOWc/5ieGknrn4m3X3XUZ7ezVIGRrgr368c+qSchcrt08B19uPRmZJuFbwT8m3NlsE/3vFVB3tjqYDGAEeUFN1v6x48BLZJdhWbgj3Jiu0ceXU6H6KEvlAeY1FIrLGkvH78/ohR6Uki0iR9KppmOgZyBbHoAMUnCGg/9jqTaoVxdmWUohFnOgzlMP2akDOxdIDo1S7vdyA31MY3prqgBit/3wQD03ZIh6bWjFbn1mMqFai1a48v8kF
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc67344-197d-4f3b-a0cc-08de0218a78c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2025 01:03:24.6126
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DAuZua3xneyoW59vjqzIymn9u/2QMHXN+/rwcrwQGZUkw0fBdgRROGHg/0F/g60btqL/F3T2SpZigIoWn+tqKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P282MB4767

I noticed Open Printer was announced the other day:

https://www.crowdsupply.com/open-tools/open-printer
https://www.xda-developers.com/open-source-printer-raspberry-pi-zero-w/
https://www.hackster.io/news/the-open-printer-is-a-raspberry-pi-zero-w-powe=
red-fully-open-highly-flexible-inkjet-printer-30948a1787cc


It's a newly launched project on Crowd Supply =97 an open-source, repairabl=
e inkjet printer that features no cartridge DRM, yet is compatible with HP =
63 (US) or HP 302 (Europe) cartridges.




Cheers,
Doug
