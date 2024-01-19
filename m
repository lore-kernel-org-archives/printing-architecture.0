Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CF754F91
	for <printing-architecture@lists.linux-foundation.org>; Fri, 19 Jan 2024 17:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705684726; cv=none; b=agoJVq+gzlBL/N2sOS/MHjo0FP9YO1E7rEhQwT7kEPSZhcauMceWemH9aJXDBRIouoLxAlTfHulQl4TEiG8qkdowPrgzuCMM1vpyNt+qemcr9iYixQbj+/97cETR5FF9aw0XCP2a7YuqRQvyhitTZrjhd52aDIR2bfwqwf2F7aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705684726; c=relaxed/simple;
	bh=liYTWvi0eoqA5HTUgJZcOi0Hi2TSGMyyqWH4b5ZgaxE=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 MIME-Version:Content-Type; b=ffWiiZQgimyzBdl7CamVhs/2vEAbYTu+2lzFGYwWuC0t+kkruBwtgzcaJGWUUqyIdHETVe4Rym4KCi+yIhNbugdeNM35Lq9Qzgi+TYcYjJjTrlOHWVPXvkKSATtNKrIovT211fwbibHERus+MJcRHxuc+gQo53VlwR+FEXQ/Gj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=hp.com header.i=@hp.com header.b=aXk0k0vx; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hp.com header.i=@hp.com header.b="aXk0k0vx"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D1B84287D
	for <printing-architecture@lists.linux-foundation.org>; Fri, 19 Jan 2024 17:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D1B84287D
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key) header.d=hp.com header.i=@hp.com header.a=rsa-sha256 header.s=mimecast20180716 header.b=aXk0k0vx
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhS_PoR4wuSZ
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 19 Jan 2024 17:18:43 +0000 (UTC)
X-Greylist: delayed 1713 seconds by postgrey-1.37 at util1.osuosl.org; Fri, 19 Jan 2024 17:18:43 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0275D42666
Received: from us-smtp-delivery-162.mimecast.com (us-smtp-delivery-162.mimecast.com [170.10.133.162])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0275D42666
	for <printing-architecture@lists.linux-foundation.org>; Fri, 19 Jan 2024 17:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hp.com; s=mimecast20180716;
	t=1705684721;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=liYTWvi0eoqA5HTUgJZcOi0Hi2TSGMyyqWH4b5ZgaxE=;
	b=aXk0k0vxCJa/ngt/w4vFcS+t2vEezPwFu82YCL0tjXh4AuWxRYLUicNm3vPmaOyYn2ndiJ
	yD8KDO1II0sZx/9zy90AqBPnl/D4ElfdUbCwuZuho6Z36EV8yiy49rCnRjSH5b+0hz0yA+
	Dc1DCUmSG3EEkbKf/2JoeHVhEhBx+6o=
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-690-nZLX-SNHNQysGGxfeq_Mfw-1; Fri, 19 Jan 2024 12:18:38 -0500
X-MC-Unique: nZLX-SNHNQysGGxfeq_Mfw-1
Received: from SJ0PR84MB2088.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:437::8)
 by SA1PR84MB3797.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:806:3ca::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Fri, 19 Jan
 2024 17:18:35 +0000
Received: from SJ0PR84MB2088.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::2084:1d4:2bf7:13b0]) by SJ0PR84MB2088.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::2084:1d4:2bf7:13b0%6]) with mapi id 15.20.7202.020; Fri, 19 Jan 2024
 17:18:35 +0000
From: "Kennedy, Smith (Wireless & IPP Standards)" <smith.kennedy@hp.com>
To: Zdenek Dohnal <zdohnal@redhat.com>
CC: Michael Sweet <msweet@msweet.org>,
	"printing-architecture@lists.linux-foundation.org"
	<printing-architecture@lists.linux-foundation.org>
Subject: Re: Printer's IPP response declares AirPrint, but it's missing
 urf-supported - workaround?
Thread-Topic: Printer's IPP response declares AirPrint, but it's missing
 urf-supported - workaround?
Thread-Index: AQHaSqVunDilGnCg10CMPhLULJKNVrDhYa0A
Date: Fri, 19 Jan 2024 17:18:35 +0000
Message-ID: <011111E7-A938-4FB1-B5BE-EDB06F3F6D49@hp.com>
References: <eeece40c-a883-44d0-820f-5ec9bbaa0510@redhat.com>
 <04A38A5C-A2DF-407B-B3CD-77DB2A3E92B4@msweet.org>
 <7d037271-9646-45bf-a3c8-3e44b0394814@redhat.com>
In-Reply-To: <7d037271-9646-45bf-a3c8-3e44b0394814@redhat.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR84MB2088:EE_|SA1PR84MB3797:EE_
x-ms-office365-filtering-correlation-id: 9539072f-6239-4fa9-7e11-08dc1912ab2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: hCNFtwv2I2hr0R/IFYP5JZCux2adh3gHHVVjf/yER9B+i+FHFkf3B4a/o4dMTNas69ReFZbr49zB9QiXgoO3GwIXNg8RWN174XbNDQ6n0cUGXUELMeEqcYoBa4fpuL33W7GKqQ3MO7wcnBuJ+ltA+ASQmDYs5E+d5/hv4wCBvVXNwvrqqqJRSr/MXPkzNsiC0eH57tJSHz1fCCJuL6kTVLP9YgWh152vbHfbqGckIbgHM+QwUJt8+etA3tSaPOOfKlUgm+XE3u+3Yy1ILtYd5KmXfV0AtDTL/i8sogGPjjz3TVXfngdU0NjBJvLPBhizRt5R2zd53ZoR3IafHLA//e7dI0kvmaiUyL5VpL9o1dRh3enJ1fIVMTkVb1v44tL5gxFt91h9BN9hoV6SWP3Mm+wwWp+IjZmxLLZVDso0ql0ZhMtNVV2xLptviIaYh6T1GnAxHAkF9i2DEOVNmeP8YKr1BYGZFjLYMK/GcYQDgMFN1gjuocfNXu+7W/zScimd2srv5MtAyyAfaDRSh4zJMATMaKHFvY18J/5KkcAHFRLUQ7pT9simxGlKeoiK0CX4KEQtVqDkMi1x+f/bVuRbbgRdS7F0TJMnbtw2kK54jcKLqjtTbz2RSdZOmo8etCW/l4lxYyX2YvFr7PlFq3t++vbTSEkg4rikeHJ2hPqk0XseO7dJYyqYKQsZ8qvRt36w
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR84MB2088.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(346002)(376002)(396003)(366004)(230173577357003)(230273577357003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(122000001)(38100700002)(316002)(66556008)(66476007)(66946007)(66446008)(76116006)(6916009)(64756008)(54906003)(86362001)(6506007)(71200400001)(2906002)(53546011)(6486002)(478600001)(4326008)(36756003)(8676002)(5660300002)(8936002)(26005)(33656002)(6512007)(83380400001)(2616005)(41300700001)(82960400001)(38070700009)(45980500001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWpIbnFUYmlEN2VQTGh5eUJVTXFXSGkrNFllaDNTNTlhYTRsVHVXa2xUMUk1?=
 =?utf-8?B?dk9FT2JoS2FNeWQyYVNjNXYrQVpmeXMrK0dNZ0tLaWhkZGFmOStMU2dLL1ho?=
 =?utf-8?B?S2IyMHNMaHZGVU1ZdmtVS0lJazlSSWx4NStZKzBPMDRFUWVGTVhqRGVlMnlJ?=
 =?utf-8?B?bC9vU1VDQ0lVNzFQd2VyY1VyYzBncEkyNC83YzFnaVozcHlNVWUwck1sQzZr?=
 =?utf-8?B?YXQrckRxRk1mWUUwemt4Tm1ocXZnR1QxT2taTVdpUUduY2R6ekdXSXdHUWIx?=
 =?utf-8?B?K3hhRFlYOHBOL05FSUVPMGhvMUlBOHRoakcwbElML2ZNMHhHRW1IbkorL1VS?=
 =?utf-8?B?d015N3V4bGRvTXp5MTViR1RwT1ZBWFBENWZUSktxTkp2bzJ6dXJPU25oU3FY?=
 =?utf-8?B?OUhIYm1tRDZLL1JLTkgxdVRwWGJMcWlZN2hqVzZnQ05rZ2g3Ny81TlQ3TnQz?=
 =?utf-8?B?ZUlpZ0F0bmlFeURRME1pYWtYazdnZlF4OTlBMGdJcGVwYVFSMStGc0JNeVlk?=
 =?utf-8?B?L2dIQTFKY1k1RFZkaDJFS0tjL2Fkc2wvZ0YvOTByYUg1b25ZclM0MWZHR2J3?=
 =?utf-8?B?Mm8yQ05PeksxaVlqaEp4TXlQZTBncFNFbzFyT1ZYSEpJWVg4QVNvYTBSYTVk?=
 =?utf-8?B?L2hlbVlGVGpiMlhRaDNYZXZwdU1zekFXVU1VeHNzWGYyaXFuU1dJcjl5RHFa?=
 =?utf-8?B?S1A1UmVoWkdhM1NwbGZLYmQ2SjJnNFdJRUQrSmNtazRVZnM1RFU5MlR1K2hq?=
 =?utf-8?B?cGRHVXpjLzIrYUYxSHFmbzVMaDZIOGZKc0o1QmJhSGpwV01YS0F2dWQvc0l4?=
 =?utf-8?B?K2ppekFvNDR3ZUpLdTdqei8zUFBMc0w2Y3oyRE5kb1pna2szNmlYcmtYL3RL?=
 =?utf-8?B?c29WMU03Qlg2YUdKNE5IeXdqSHZyY3ZZMW4vVE5ORktqalJER3pvSEJSNnBY?=
 =?utf-8?B?ODZ1Mm1GSkJZMEtheG55WUpCczdpZHVVaFpMMHc2eTJITG5kdzdEZklqdnJz?=
 =?utf-8?B?S2lnZzRFQ3Q5ZUcxR0FvUGxzeHlNa2hCbG9laFFlRC8wWlZkVDI0VlpzakxW?=
 =?utf-8?B?a1QvUFRzMC9ZTXkxSXFkK2pnbVI3dVNCdXI0ZHFLTDd5NU1EZGNzeVhpVkxr?=
 =?utf-8?B?Y1VxdGFSdDU5amVXSFdselpyVG43L0FVVm1Tb2VCR3p4ZU5FY29ZZ2FIYkRY?=
 =?utf-8?B?eGFHOCs0MzQxVjFWcVVpajlDWDVwaG9mN0VxMW95TGJ5WG9KZkpPRHdqQ1hH?=
 =?utf-8?B?T1oxaG5uSVJSMHRJZVNGR2hpT1EvYTJsb0pDL1o1YlRuQUR0RGI0akdLNzZy?=
 =?utf-8?B?cDJueENHL2s0cy8rc3MzTWtOMUE3WHBIbEZIUVJlOHRNbWo4RExiVlhzN0Zs?=
 =?utf-8?B?WWdaMW43NVkzNjJuVy9PeU1MLzdncnhzWENUUzg4OVRqaldjdVRUMFFZWm1N?=
 =?utf-8?B?UUtXdjRxL3hVc2hLSng0Z0F2aHlKQ0UyTzFpVm1aUTd6OUI4alRRVlY5MVd2?=
 =?utf-8?B?RzdiSkFNTDdmVVZJVjc0N3ViYkNWM1pEWDVqQnpoV1ZpTktKOG1QZ3pvT3Bs?=
 =?utf-8?B?SUk0a1IybE85Ni9EK1BGaDNRSWR2VGxUbjRoYkZqT00yUU5yQUYyRkMxWXE2?=
 =?utf-8?B?YTRHSERLY2FFcVUrZXFUNEtGdzgyRm80R1Vsb0xxQmhvRlRscFcxMmdGS0ND?=
 =?utf-8?B?UUZVTWZpYWtYUXNvWkZIVjJ0TXZzTEhvazA0eEVVOUhkK29oVlVZR2luaU4r?=
 =?utf-8?B?VlNQWUJDN1hydlBrVE5hTHBTRlE5UHJ4NEJIZnZQeGNod2tnNStJNzdaY00w?=
 =?utf-8?B?S0VFcEtySENMbDVDR2NMVUJ2RFBLcHViOW9CTzNVR3VBd0JNZDB0cjBMSjdM?=
 =?utf-8?B?ZXpEazZqakZRUWhscFNHdDF1WHB4c1RWRTNUZUw0amlQMHhMWUFaaENsREdm?=
 =?utf-8?B?b1J5VUNNT2FkWUJwTkkrV2lUc2NzeHkvenJQL2o4UVRZbU1aZkRKR0krb2JI?=
 =?utf-8?B?cEgwcFREVllCV3JnOWppTDJacnFUV240OVl2blRvZk42NUZ3WjB2OXFETGh6?=
 =?utf-8?B?L2F6VDU5LzVKc0pXbHUrMVVPUi90NzUyUFFFeGdIQXNpNDJGMU9zYmZENWQv?=
 =?utf-8?Q?61+Rip3ytEhX31YcQgpKMEEw0?=
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR84MB2088.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9539072f-6239-4fa9-7e11-08dc1912ab2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2024 17:18:35.1186
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctbLk23BiDVlsV7JVJbKw5WipSovBuYCXkFf/rEx0QLtvN220K5FDNeWprFR6dzBGvmNccRnYth77uSssFeBCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR84MB3797
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hp.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <9F28DCF66663DA42B12200D3697FF1B1@NAMPRD84.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

SGkgWmRlbmVrLA0KDQooUmVzZW5kaW5nIGJlY2F1c2UgdGhlIGxpc3QgcmVqZWN0ZWQgYW4gSFRN
TCBlbWFpbCBtZXNzYWdlLikNCg0KPiBPbiBKYW4gMTksIDIwMjQsIGF0IDEyOjAy4oCvQU0sIFpk
ZW5layBEb2huYWwgPHpkb2huYWxAcmVkaGF0LmNvbT4gd3JvdGU6DQo+IA0KPiBDQVVUSU9OOiBF
eHRlcm5hbCBFbWFpbCBNaWtlLA0KPiB0aGUgaXNzdWUgYmVjYW1lIG9ubHkgdGhlb3JldGljYWwg
LSB1c2VyIGZvdW5kIG91dCB0aGUgcHJpbnRlciBoYXMgQWlycHJpbnQgc2V0dGluZ3MgYW5kIGl0
IHdhcyBkaXNhYmxlZC4gRW5hYmxpbmcgZml4ZWQgdGhlIGlzc3VlLg0KPiBOZXZlcnRoZWxlc3Mg
aXQgaXMgc3RpbGwgYW4gaW50ZXJlc3RpbmcgcXVlc3Rpb24gZm9yIG1lICh3ZSBtaWdodCBlbmNv
dW50ZXIgYSBzaW1pbGFyIHByb2JsZW0gaW4gb3RoZXIgZGV2aWNlLCB3aGVyZSBmaXJtd2FyZSB1
cGRhdGVzIGFyZSBub3QgcGxhbm5lZC4uLiksIHNvIHRoYW5rIHlvdSBmb3IgdGhlIGFuc3dlciEN
Cj4gT24gMS8xOC8yNCAyMjo1NiwgTWljaGFlbCBTd2VldCB3cm90ZToNCj4+IE5vdCBnZW5lcmFs
bHksIHNpbmNlIHRoZSBzdXBwb3J0ZWQgcmFzdGVyIHJlc29sdXRpb25zIGFyZSB1c3VhbGx5IGxl
c3MvbG93ZXIgdGhhbiB0aGUgcHJpbnRlcidzIHN1cHBvcnRlZCByZXNvbHV0aW9ucy4NCj4gU28g
aXQgaXMgZGVncmFkYXRpb24gaW4gZnVuY3Rpb25hbGl0eSwgYnV0IG5vdCBjb21wbGV0ZWx5IG91
dCBvZiBlcXVhdGlvbiBmb3IgYnJlYWtpbmcgc3RhbmRhcmRzIC0gdGhhdCdzIHVzZWZ1bC4NCj4+
IEFpclByaW50ICpkb2VzKiByZXF1aXJlIGZpcm13YXJlIHVwZGF0ZXMgZm9yIGJyb2tlbiBpbXBs
ZW1lbnRhdGlvbnMgYW5kIHNlY3VyaXR5IGlzc3Vlcywgc28ganVzdCBiZWNhdXNlIHRoaXMgcHJp
bnRlciBpc24ndCByZXBvcnRpbmcgZXZlcnl0aGluZyBkb2Vzbid0IG1lYW4gaXQgd29uJ3QgZ2V0
IGEgZmlybXdhcmUgdXBkYXRlLg0KPiBBaGEsIEkgdGhvdWdodCB0aGF0IGlmIHRoZSBwcmludGVy
IGlzIG9sZGVyIGFuZCBtYW51ZmFjdHVyZXIgZGVjaWRlcyB0byBubyBsb25nZXIgc3VwcG9ydCBp
dCwgdGhlbiB0aGVyZSB3b24ndCBubyBmaXJtd2FyZSB1cGRhdGVzLg0KPiBTbyBJSVVDIGFzIHBh
cnQgb2YgQWlyUHJpbnQgY2VydGlmaWNhdGlvbiBBaXJQcmludCByZXF1aXJlcyBmaXJtd2FyZSB1
cGRhdGVzIGZvciBicm9rZW4gaW1wbGVtZW50YXRpb25zIGFuZCBzZWN1cml0eSBpc3N1ZXMsIG90
aGVyd2lzZSB0aGUgbW9kZWwgbG9zZXMgQWlyUHJpbnQgY2VydGlmaWNhdGlvbj8gSWYgc28sIHRo
YXQncyBhIGdyZWF0IHRoaW5nIHRvIGtub3cgLSBpdCBpcyBnb29kIGFyZ3VtZW50IHdoaWNoIHVz
ZXJzIGNhbiB1c2Ugd2hlbiB0YWxraW5nIHdpdGggbWFudWZhY3R1cmVyIHN1cHBvcnQuDQo+IEJ1
dCBpdCBvbmx5IGFwcGxpZXMgd2hlbiB0aGUgbW9kZWwgdXNlcyBBaXJQcmludCByaWdodD8gV2Ug
Y2FuJ3QgbWFrZSBhIHBvaW50IGxpa2UgdGhpcyBpZiBwcmludGVyIHN1cHBvcnRzIG90aGVyIGRy
aXZlcmxlc3Mgc3RhbmRhcmRzLCBsaWtlIElQUCBFdmVyeXdoZXJlLCByaWdodD8NCj4gDQo+IEZy
b20gdGhlIGFub3RoZXIgc2lkZSAtIG9uZSBtb3JlIHF1ZXN0aW9uIGFib3V0IEFpclByaW50L2Ry
aXZlcmxlc3Mgc3VwcG9ydCAtIGlzIGl0IHN0YW5kYXJkaXplZCBob3cgcHJpbnRlciBzYXlzIHRo
ZSBmYWN0ICJJIHN1cHBvcnQgQWlyUHJpbnQsIGJ1dCBpdCBpcyBjdXJyZW50bHkgZGlzYWJsZWQg
aW4gc2V0dGluZ3MiIGluIElQUCByZXNwb25zZSB0byBHZXQtUHJpbnRlci1BdHRyaWJ1dGVzIHJl
cXVlc3Q/IFNvIGlmIHRoZSBwcmludGVyIGZvbGxvd3MgdGhlIHN0YW5kYXJkcywgSSBjYW4gdGVs
bCBpdCBpcyBjb25maWd1cmF0aW9uIGVycm9yIGZyb20gSVBQIHJlc3BvbnNlPw0KDQpJIGNhbm5v
dCB0aGluayBvZiBhbnkgY2VydGlmaWNhdGlvbiBwcm9ncmFtIHRoYXQgaGFzIGEgc2V0IG9mIHRl
c3RzIHRoYXQgdmFsaWRhdGUgc3VjaCBhIHN0YXRlLCBJUFAgb3Igb3RoZXJ3aXNlLg0KDQpJIGhh
dmUgZm91bmQgdGhhdCB0aGUgbW9zdCByb2J1c3QgYW5kIGFwcHJvcHJpYXRlIG1ldGhvZG9sb2d5
IGZvciBlbmFibGluZyBhbnkgZmVhdHVyZSBpcyB0byBpZGVudGlmeSB0aGUgc2V0IG9mIHJlcXVp
cmVtZW50cyB0aGF0IG11c3QgYmUgbWV0IGZvciB0aGF0IGZlYXR1cmUgdG8gYmUgZW5hYmxlZC4g
SWYgdGhvc2UgcmVxdWlyZW1lbnRzIGFyZW4ndCBtZXQgdGhlbiB0aGUgZmVhdHVyZSBpcyBqdXN0
IG5vdCBlbmFibGVkLiBJZiB0aGUgbG9naWMga2V5cyBvZmYgb2YgYSBzdWJzZXQgb2YgdGhlIHJl
cXVpcmVkIGF0dHJpYnV0ZXMsIHlvdSB3aWxsIGhhdmUgZmFsc2UgcG9zaXRpdmVzLg0KDQo+IFRo
ZSBtZW50aW9uZWQgbW9kZWwgc2hvd2VkIGltYWdlL3VyZiBpbiBkb2N1bWVudC1mb3JtYXQtc3Vw
cG9ydGVkLCBidXQgbm8gdXJmLXN1cHBvcnRlZCBpbiByZXNwb25zZSB3aGVuIEFpclByaW50IHdh
cyBkaXNhYmxlZCAtIG9uY2Ugd2UgZm91bmQgb3V0IHRoZSBjb25uZWN0aW9uIGJldHdlZW4gdGhv
c2UgdHdvIGZhY3RzIChBaXJQcmludCB3YXMgZGlzYWJsZWQpLCBpdCBhcHBlYXJzIHRvIG1lIGxp
a2UgYSBnb29kIHdheSBob3cgdG8gc2F5IHNvbWV0aGluZyBpcyBkaXNhYmxlZCBpbiB0aGUgcmVz
cG9uc2UuDQoNClRoYXQgZG9lcyBzZWVtIGEgYml0IGJ1Z2d5LCBidXQgYWdhaW4sIGlmIHRoZSBz
ZXQgb2YgcmVxdWlyZW1lbnRzIGZvciBlbmFibGluZyBVUkYgb3V0cHV0IHN1cHBvcnQgaXMgImRv
Y3VtZW50LWZvcm1hdC1zdXBwb3J0ZWQiIGluY2x1ZGVzICdpbWFnZS91cmYnIGFuZCAidXJmLXN1
cHBvcnRlZCIgaXMgcHJlc2VudCB0aGVuIHlvdSB3b3VsZG4ndCBoYXZlIGEgZmFsc2UgcG9zaXRp
dmUuDQoNCg0KDQoNCg==

