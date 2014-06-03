Return-Path: <lists@colorremedies.com>
Content-Type: text/plain; charset=iso-8859-1
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <538DB6C0.60507@gmx.de>
Date: Tue, 3 Jun 2014 11:15:51 -0600
Content-Transfer-Encoding: 7bit
Message-Id: <E88E8998-8021-449B-924F-645959F93EC3@colorremedies.com>
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>	<m3oayc85fp.fsf@carbon.jhcloos.org>	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>	<m361kj88z0.fsf@carbon.jhcloos.org>	<3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com>	<m3zjhv6sle.fsf@carbon.jhcloos.org>
	<m38upe4ya7.fsf@carbon.jhcloos.org> <538DB6C0.60507@gmx.de>
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


On Jun 3, 2014, at 5:51 AM, Kai-Uwe Behrmann <ku.b-list@gmx.de> wrote:

> Am 03.06.2014 02:44, schrieb James Cloos:
>> This is an attempt at an sGray icc Based on Argyll's sRGB.
>> 
>> Corrections or verifications welcome.
>> 
>> If valid, or once fixed, rastertopdf should embed it when dealing with
>> sGray pages.
>> 
>> 
>> 
>> 
> 
> Color space is not standard.
> Data Color Space should be GRAY.

Yes definitely good catch. That field also seems to have single quotes in it.

Chris Murphy

