Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazolkn19012065.outbound.protection.outlook.com [52.103.14.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B3D389458
	for <printing-architecture@lists.linux.dev>; Thu, 26 Feb 2026 07:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.14.65
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772089605; cv=fail; b=BO6ZY28JU+moFsrkrjxnX6z+DKj+e/YelgaQ7LNIJOn2Nxl2NbJz9Sjr1oVpbw0nf26P7ItNFY5xfhZbAvraQnDRthuwlPWYUJYJ6SCCCWltK7VvlkPHs7H1bed1ip6B9QPtemoeieXiha4SiKvTSHz4M/zNRPquybn6M+92w60=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772089605; c=relaxed/simple;
	bh=mjNehbCE8LqUgUk8VCkou2frZ2QuAEAXmqSNbnI7oeY=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=tvFh5pmDNT8ihiaXgEbZGzLV74SLpFZnWLxO4GOVOUzg8U/HQETnU8ZfRQJis6iDRQOfK7QuK9vi0R4SE3leRk2xv85V7skBNxTYqWvGdtWVvvfPUbOlP/dO1kGRNRn6uOXGZUBRcHX4DRMcdq1k3/aDDVWzMn4U4twoWiOzbsw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=ZaOeHdg6; arc=fail smtp.client-ip=52.103.14.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="ZaOeHdg6"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0gc871vHkXr8t4J15NHQRW2K3+ePzliR8YcBFn3A+y87hn6x14juqHfwHp/0xxEOfzIj8CJQfMKbW+BAwzS/sIGV8Rq/4wZIKizkY/z4e0wdMiRgB/p1a+inFWcoPsswRKLgSmy1IAtPIqQpPxlrjRim1Ngs7dVXtpvRHitKrH8XKYwJq2+Lp+6Q9ob9tDw67xSbxOjc6G5RnXDKFVzCdqRf2npDukDEjKRTWajkk7dIOAeS/vkg+b/8g7ApUpAZFzfK+qQKtjwWbmBLnNT6J8jW2fep7KeIlajM5C5LlrhjJ++3bjgwztzgXTihh9S/yyU0+dCqzvyTyMn/WE8Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mjNehbCE8LqUgUk8VCkou2frZ2QuAEAXmqSNbnI7oeY=;
 b=yKsr3jRiw97Rlml237vmbqncM9LnVW+DYv1g543NFIIoDjg2w05rjiVhM4oJPh7crpr8tEvDnBH9bfLHheoseIXD6qyw7cYqQax19Q1vv7sEim1BY26ys3Mt5IeyNBmz0iJ/nXrdpuPbTx1n0SVz5kLiL6di6Agr8LGhJPg+9A4XI6HkC4FTd/pEovFzGBFDKhx0K6owGS7DPb/XF7i1O5OGlJ1wAL2md0JNIEle+Wo8rmAtFUfu10mgRxYM0rgq1UMy11WP570kpq0hadyk489Y0VBGSi1K1MCzeH6I/Fb1NwnyEyDWTm0gmfECzy/n/a3ygyCl1HQ3Q9CzWdUycw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjNehbCE8LqUgUk8VCkou2frZ2QuAEAXmqSNbnI7oeY=;
 b=ZaOeHdg6RB2m9ONJUv4px8mWnBpVGzpK2+I8IYc6LGAeTL66k/gR2jcgHNf4ObzzrnzWB3/pJLGKL4nEVXO+xP3NzEBShRhcOjuYH/4BhS4Wr1grnIawB3yvU2Na/g/UnQ7z6mvDlNGPQETbRrA5IG37JNJ2VogjggD2K/H0PWJTPc5Pe+ukiAM6Ua20Rh+9SSSE7EMfd5Iuat+jYZYA7hXAOPhbhMIN9FrkLJNuQRt9ADnyThnr84UeeuH88ltqOsgctCqe7cEDVnmX0DX9aBwnkznwEAfO0NYykyYCs6uVvhpLWZaWTyGFaVeWcnt95ZcCfRLPt5yPL2Hqk6i6aA==
Received: from SN7PR06MB7088.namprd06.prod.outlook.com (2603:10b6:806:108::19)
 by CO6PR06MB7236.namprd06.prod.outlook.com (2603:10b6:5:342::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 07:06:42 +0000
Received: from SN7PR06MB7088.namprd06.prod.outlook.com
 ([fe80::15ba:6a5b:e3e8:697]) by SN7PR06MB7088.namprd06.prod.outlook.com
 ([fe80::15ba:6a5b:e3e8:697%3]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 07:06:42 +0000
From: Ahmed Fatthi <AhmedFatthi1040@hotmail.com>
To: "printing-architecture@lists.linux.dev"
	<printing-architecture@lists.linux.dev>
Subject: GSoC 2026 Inquiry: PDFio Renderer Project - Ahmed Fatthi
Thread-Topic: GSoC 2026 Inquiry: PDFio Renderer Project - Ahmed Fatthi
Thread-Index: AQHcpu5Rxf0UB+SigEG+0b19DzS3eA==
Date: Thu, 26 Feb 2026 07:06:41 +0000
Message-ID:
 <SN7PR06MB7088C44E2C747CFD45F26B2AA972A@SN7PR06MB7088.namprd06.prod.outlook.com>
Accept-Language: en-GB, ar-AE, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR06MB7088:EE_|CO6PR06MB7236:EE_
x-ms-office365-filtering-correlation-id: 7dc1b2b1-bd03-4319-b19e-08de75059814
x-ms-exchange-slblob-mailprops:
 Mga27o8vReFWf9RzH6tnqJClNbiui38JzpJ3/dQydBZeHrdCNhkYvaysS4DyEjFMJeT/4Ztk4EX/Gjn1Y5RXICl8TLmIRQtggPNoETOQat9A1MD+jQGV/iK8CVO5pQIyEXRXtn4w53XdL4jzGsFGNK73Z7bFdwQ8RkgkYKdP/qZPXjfCBcgNeT8q0SolA49sMFmXT1hhHeaGwhumq3S2IuFk6Q0OVNO7LLQiM7C8RcCucUH+kUGM71VfjtVPoImCIz4tDMf+SIYeDEtx6Redtxr55f87vu6kiOJar/EW4vPy8BOMHfaUx8ZBHhEauN3qAoFHOTOH7G13P15r+Z/W62C6TZdxLmE1YoyhW7kxsuOtrrXlV74vMgzJbBTWtDAU5XR0Oi3XAiBvgJQZrJAGrtf2uEH1l1OfiF/esHL+OIpORiE063+FBMBNnqnsEa6gBybuVnSdS9IoW2J4RGhCBudKoyCuBwyfixYEV8vcLnVO/Dz9FFNmYgxgopfHYgHqfFAYpHqV/UoGv9olE59+VSE0QVaSEWTnWWmf6yYeMpQST1EuoFeAT7Gih3SVNFEI3Jl9a7MK2rckYeLO7/pXwrYZSry1MlMs7txnA9ow19acmioj7G8bO1MGYdOQf0Y69UehhggEBtnZ5SCTJ8KwNobJHG6tmgUPfZtfzCtmIhSp0QMH5okRUk/8LpJCIOx9PP2nAfuRy+9vHwXVP1P/dCo4LUwfGcBsn1IO+5NIVSXY7sbLZAyp7FAlp1IGNr0lS7BfMIFvI/wJNaNKRzTvCm1zT4wmocR7CrKgycyPuOZ7f0rsQyG8DA==
x-microsoft-antispam:
 BCL:0;ARA:14566002|8062599012|19110799012|15030799006|15080799012|8060799015|461199028|31061999003|51005399006|12121999013|20110799003|3412199025|440099028|4302099013|102099032|10035399007|1602099012|40105399003;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?edG3lOQ2m0xOSAn2B4yoJ7Fou0olAU4cgHnhM15vYNQQVtIqL3TF3kd9ke?=
 =?iso-8859-1?Q?MD0ZxOE4tAS5g5EiEHs7uUMNCfrf7UwZxNY1jRTo3PKv03NwTCveGmydrC?=
 =?iso-8859-1?Q?OEJyAPp17SNS4czCJC1E4hrvaZtCdW3f9UPYCyhn5zfWbKC1K98OfPy2bc?=
 =?iso-8859-1?Q?2m6Qq+6gaiKgLBfESES6/1k0EJ/yik7nbthwIafAJMye8bqkU181jyNJ8b?=
 =?iso-8859-1?Q?TQxlm6o9xScvimjXdU9FdITG2LPlKMMlgtZaM/5xGqnJw9mUz+7Nxz6Nzs?=
 =?iso-8859-1?Q?J5GER1CRw5keJDIWZ+VY8tUucu95seqNWO9AZyUZmGNtqHUBV6gw8H71zk?=
 =?iso-8859-1?Q?zIesFqP7++4aXXOl1QV4qXWC7ZgXfb4jxDgJ/lCl0FajN3S6ECVSIPORle?=
 =?iso-8859-1?Q?M12Ok8FDt2ZH/cyT0n0kgTi4TD1s0nNPByjKCGQ1VyvxfB4FPgMFuiOb6L?=
 =?iso-8859-1?Q?tvRomP1SaLkNuYDfZVB3NbXnqP8hndCi2NqfvfujIFWfJJRv8Ul3pPm0r9?=
 =?iso-8859-1?Q?XCTMO8gVxYf8LC8DmEGGlS4L6N/0Wl0azx8YGtHoSIWrdqNU/LzwfEnCNU?=
 =?iso-8859-1?Q?61supjcIlNlKx+RCgxgPOixe8kZ0TQrZgMbtDlpeK/hCjxVBcGd0Jo77+K?=
 =?iso-8859-1?Q?Cr/yujgNvXTUxF8r7hlSm9QbeEX1g1DtZAIZa4UH/tfIv2+xpinbjLyNeC?=
 =?iso-8859-1?Q?GAoei/FM9/e/9tkiBLR2LjGHuzgTe9QV71I+F6qaWmCfrvIpC/8Nfu1pY+?=
 =?iso-8859-1?Q?QvohT5z6qr2zYiPDyJut0GV/qi5S7hWnJcssvQKJDNUy1Zf7x/fPhhp3M9?=
 =?iso-8859-1?Q?zsTBpsEdiv+de3GqNb4XrsyWeef+gCRadhOw2xF0zvlHp4Iv6lHHoMfGFc?=
 =?iso-8859-1?Q?hjNwgHm+70PfivuEB82dXpf/bGOFnKLxxVFBrgQl52js5VpNPi6kT/qnjB?=
 =?iso-8859-1?Q?TkJoHUS9STLvYb7Ib6Mhm+91BeHWJaA1jOqzek5trjOxZ4vgmacCFFcM/W?=
 =?iso-8859-1?Q?Q4gKAb6jd90atX+W8fWTrx0Zaf7+b3WIcKMUuX7td7mX5PkAZNtCSroRHz?=
 =?iso-8859-1?Q?FWOHbmkWBs5vufCPof80oeThsu77QklvyxoauYKnk5170ZvXb1U2lo/Tdp?=
 =?iso-8859-1?Q?y041lmUQ=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?v81OpredPXU2Nv6cA+cHTjnsXnO2AvG4undtDXqbCLK1LwDIi6Acs6MvhY?=
 =?iso-8859-1?Q?wLuyIeVxnD3MYI4CA5DIzKYKP7XRyNFd0mlCfQK4qqj6wbbfsF5IlvxLqi?=
 =?iso-8859-1?Q?c8IwJS2xiYo8JyJL42EJlG357fb3t+bD4YZXlBi600pb7OoUvnYOhqRqbJ?=
 =?iso-8859-1?Q?3MqaF5covsvcS5a6VWo6aedq056Sy488KPKinBockED3UApS+6DVh3TVDd?=
 =?iso-8859-1?Q?6w38s9uy6uBixzbcszX1y4l0IUhMEiC/74b1ysj2+pdJjkrhcBPHpomvrz?=
 =?iso-8859-1?Q?IHQN2V/YuB+xZ5C283Yu6PYLBA04Sk5ymAmydz09uK5nLPIMSD0bpW/6qo?=
 =?iso-8859-1?Q?hXayD93F4x6Jo2pd6clZYhGtmMGJBnGkPAdDv/SDJHv7JBgqzJduZiY3UO?=
 =?iso-8859-1?Q?Av4F6Jwsq1fjbzNXZbANsHq+EkPHD6cvmBa8rvWs22LOjeFpIFJS0uOMeZ?=
 =?iso-8859-1?Q?lYddLSEJEP8jxiZhhM+G9IPkVc1J2pq76uY8xkSa2dQOjZPL1BVtpbR6vf?=
 =?iso-8859-1?Q?tzaynK+eTBe4Z2Mfe/KyixlH+V8g150RYKe3aPLMWjiqAVyrGprAoo9cb1?=
 =?iso-8859-1?Q?YWfHDNJZcM4KP1Mq259OvBw4KXuSPWPFA156FwUFyaLLLrfpFdfeQhqQ9H?=
 =?iso-8859-1?Q?JC8bZYqPLCwQTPLCy68CpdvluiCAQk/UNioEAYTvxCyy27XcZeZ+cXsEIv?=
 =?iso-8859-1?Q?vazmxOj+SUeZOI7UX3p/xJyuvu/pQQTzrf3WpyfOG2zQ9DKPjlwf8mUTRO?=
 =?iso-8859-1?Q?hegWNawQgx/ImJk9vbC5tx4vKtKwHkVUQjHQrClz8YFx8g0M2H0N02C1j5?=
 =?iso-8859-1?Q?4sM3wKra1xO7REveW3S+LheJKCZgY+y4ZQ/+KLFbmKbNlKJCiM0YezTh4o?=
 =?iso-8859-1?Q?/g4zM29iCOjppLaf2+Ob92WQrPXwX9sm2tqS+E6CculZ866b5gW7ojjok1?=
 =?iso-8859-1?Q?FDaYv+BbZwgFVQ7AQzWzGxbQdueh3cdawCJxb9dXzJuk8JHfugoIkLsuHT?=
 =?iso-8859-1?Q?fuL18MR3/Hf1iphKGDjXqj0hu9szeg69DsBXbwtyrGkQl9hLNCJPMfZn9h?=
 =?iso-8859-1?Q?WjXCM5kOcDyuLrbBe+1g8jtDa8qYIl9AM5Zj01fj8X5Msv9lTJSjXt/JDj?=
 =?iso-8859-1?Q?EWZz8qomswrHQVzNIYYDLw3TYI+JQNFvJuXejtpKU9F2pE6KpVm0lAvfN+?=
 =?iso-8859-1?Q?zzVreWsjWs59TQaRxe9sQ6BnAr+xtSeY62U32BUYVt8eHxY6aMmoha+NI4?=
 =?iso-8859-1?Q?i42XGYycegr9GCwDBCn9eLcd+vFm/EwPFn4Fm4e0coDEE4gyh0xM2QTYnz?=
 =?iso-8859-1?Q?IYJwdEBmOWN0GhIM16U7ctcSf8btjW8srTRh30ymirs+P4E8v7FbMqmlp+?=
 =?iso-8859-1?Q?RtjjYtThC565fOBiW2/TN8vsXOJaSzrvs4FDdZFYNSeQ2Fxd1qeoHnhB4U?=
 =?iso-8859-1?Q?nTANo6pKiuLLQycP?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-9412-6-msonline-outlook-08e6a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR06MB7088.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc1b2b1-bd03-4319-b19e-08de75059814
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 07:06:41.9569
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7236

Hi everyone, resending this in plain text as my previous message was reject=
ed by the list server for HTML formatting. Looking forward to connecting!=
=0A=
=0A=
Dear Till, Michael, and Ira,=0A=
=0A=
My name is Ahmed Fatthi, and I am a final-year Computer Science student at =
Helwan University. I am reaching out to express my strong interest in the p=
roject idea: "Extend PDFio to be a PDF renderer/displayer."=0A=
=0A=
I was previously a GSoC 2025 intern at the GNOME Foundation, where I worked=
 on prototyping a new architecture for the document viewer Papers. Currentl=
y, I am also working as a Junior Backend Developer at Wisemen.=0A=
=0A=
While I believe my work at GNOME is slightly relevant to this project, I ha=
ve some concerns regarding the difficulty level. I am familiar with C, but =
I wouldn't call myself an expert yet. Is this project suitable for someone =
at my level who is ready to dive deep and learn quickly, or are you looking=
 for a more advanced C specialist?=0A=
=0A=
Additionally, if you have any "good first issues" or starter tasks you coul=
d suggest, I would love to work on them. This would help me get closer to t=
he codebase and gain a deeper understanding of the project before the appli=
cation period begins.=0A=
=0A=
Thank you for your time and guidance!=0A=
=0A=
Best regards,=0A=
=0A=
Ahmed Fatthi=0A=
https://github.com/AhmedFatthy1040=0A=
https://www.linkedin.com/in/ahmedfatthi1040/=0A=
https://ahmedfatthi.pages.dev/=0A=
