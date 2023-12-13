Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E934F401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1448C40148
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 8543F807B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702507189;
 bh=stnVSjgUUZcgn2LIO5++WH9GWIivNGZwozroZbYL+Fw=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=FKF6R5FEmno/QZJ+ucrtRDTn9tKO6qPnwmj75b7FWCPw/FOTQyutnL+OOrq2K3cox
 UYjNicUm1O2QMh8qhXn0uAUlmVaefjMDtkMNr2swqc4zCpLCQEqLs23VVZhycw/UcV
 Ns6iU2DXkYqCRVVMYJoSbMc3bYsMbTakFgUTomMQ=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <d3f8250b-8d31-4806-a214-e0fca527844f@apevzner.com>
Date: Wed, 13 Dec 2023 17:39:36 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <8F0FFB8F-E1E8-44DB-8A53-3E3386A049DE@msweet.org>
References: <4ea25bd1-6a61-4987-ad2a-41e3e8d4437c@apevzner.com>
 <3d5242f7-2871-4d97-857e-1cb697782765@apevzner.com>
 <8056ba21-29f8-4a46-8763-7579db1b5b6c@gmail.com>
 <d3f8250b-8d31-4806-a214-e0fca527844f@apevzner.com>
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Pevzner <pzz@apevzner.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Alex,

Windows 10 is the first version of Windows with the (Mopria-based) IPP =
class driver.  Earlier versions of Windows only supported the =
experimental IPP/1.0 (!) and relied on drivers to send data to IPP =
printers...


> On Dec 13, 2023, at 4:22=E2=80=AFPM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
>=20
> Till, I will try.
>=20
> I already tried with Windows 7 that I have running in VM and didn't =
succeed (it wants to install Pantum drivers).
>=20
> I'll try to install Windows 10 or 11 into VM and will see how it will =
work. However, it will take some time.
>=20
> I'll return with results when results will be available.
>=20
> On 12/13/23 20:31, Till Kamppeter wrote:
>> Alex, I will perhaps reply in more detail later, but I would like you =
to test something:
>> You say that Windows always wants you to install a driver.
>> Windows principally supports driverless printing. Have a look at
>> https://openprinting.github.io/wsl-printer-app/
>> This is a HOWTO to eun a Printer Application (=3D emulation of =
driverless printer) under WSL and Windows sees this as a driverless =
printer.
>> So now click "Cancel" in any pop-up of Windows telling you to install =
a printer driver.
>> Now go to the HOWTO and only see the steps to set up a driverless =
printer (you will not need WSL nor a Printer Application).
>> So you start in the section which starts with "Add the printer to =
Windows".
>> Look in the "Bluetooth & devices > Printers & scanners" whether there =
is an entry which could represent your printer. Select it, finish the =
setup and test.
>> Is your printer working at all?
>> Is it completely working?
>> Does it show the same problems as under Linux?
>> If it works under Windows we will need to reverse-engineer what =
Windows is doing and compare it to what CUPS is doing.
>>    Till
>> On 13/12/2023 16:08, Alexander Pevzner wrote:
>>> Michael,
>>>=20
>>> thank you very much for your response!
>>>=20
>>> On 12/10/23 18:11, Michael Sweet wrote:
>>>> This code has been the focus of *six* CVEs since the move to Git in =
2015 - not quite one CVE a year, but enough to be concerning.  More =
specifically, commit 5754bccee =
(https://github.com/apple/cups/issues/5630) addressed the code that =
allowed "alternate" encodings of member attributes that was causing =
interoperability issues.
>>>=20
>>> CVE is about security, not about interoperability. You told several =
times that you are concerned about security risks associated with my =
patch, so it sounds like some kind if security review could be useful =
here.
>>>=20
>>> BTW, where do you see security risk, in the changed (relaxed) IPP =
"syntactical" rules by itself or in my implementation (code =
modifications) made to implement this change?
>>>=20
>>> Regarding interoperatibily, issue #5630, as I understand it, means =
that some clients that were able to speak with CUPS were not able to =
speak with real printers, because CUPS was too forgiving while printers =
were not.
>>>=20
>>> First of all, I don't agree that this is about interoperatibility. =
This is about applicability of CUPS as strong testing/diagnostics tool. =
Being too forgiving, CUPS by itself still remains compatible with =
invalid implementations, but becomes not very useful to test these =
implementations for correctness (which is not primary purpose of CUPS, =
BTW).
>>>=20
>>> Second, if I relax parsing of IPP responses, but not of incoming IPP =
requests, looks like we can achieve two goals: to be strict enough for =
testing of clients and to be compatible with broken hardware as well, =
isn't it?
>>>=20
>>> And I know that the same IPP parser is used as a part of IPP =
self-certifications tools. If I will implement "relaxed IPP parsing" as =
an option, disabled by default, and will only enable it where CUPS =
interprets responses from printers, it will not change CUPS behavior as =
server and will not change IPP tools behavior, at this case will it look =
good enough for you?
>>>=20
>>>>> 1. I agree, that following specification is very important, and, =
where possible, trying to do so.
>>>>=20
>>>> IPP started in the IETF and the PWG has continued the IETF's goals =
for conformance terminology: any requirements are there to ensure =
interoperability and proper functionality.  Postel's Law doesn't apply =
when it breaks interoperability and potentially has bad side effects. =
See the following for some applicable reading/links:
>>>=20
>>> I agree that interoperability should not be broken, but I don't see =
how my (updated) proposal, explained above, can break interoperability =
with anything.
>>>=20
>>> Please, correct me, if I wrong.
>>>=20
>>>> They already won't be able to print from iOS or macOS, and probably =
not from Windows (IPP class driver) or Android (Mopria print provider) =
because the Get-Printer-Attributes response cannot be parsed.  And if =
they actually ask someone about the problem they can be pointed to =
Pantum to get a firmware update.
>>>=20
>>> Interesting that this device included into the Apple's list of =
supported AirPrint devices: https://support.apple.com/en-us/HT201311
>>>=20
>>> Unfortunately, I don't have any iOS/macOS device to test by myself. =
Regarding Windows, Windows wants to install vendor driver (which is =
known to work) and I don't know is it any way to force Windows to print =
"driverlessly".
>>>=20
>>>> Firmware update capability is required for both AirPrint and =
Mopria, and at least the AirPrint folks require the ability to upgrade =
without special software and highly recommend automatic firmware updates =
over the Internet whenever possible...  Pantum is an AirPrint =
licensee...
>>>=20
>>> Device has offline/online upgrade options. For offline upgdade, I =
was not able to find firmware image for this model (and other member of =
this discussion writes the same). Online upgrade claims that the newest =
version of firmware already installed.
>>>=20
>>>> You need to notify PANTUM that they have an issue.  Regardless of =
whether you believe that a user will update the firmware, they don't =
even have an opportunity unless you report the issue to the =
manufacturer.  And in fact, you don't even know whether PANTUM has =
already fixed the issue!?!
>>>=20
>>> I'm doing my best to reach them, but didn't succeed so far. If and =
when I'll get any feedback, I'll notify you (I mean all readers of this =
discussion).
>>>=20
>>>> Let's say we accept invalid collection attribute values.  We get =
the media-col-database and media-col-ready values from the printer, and =
then send it a media-col collection to specify printing from tray 2 on =
cardstock: will the printer be able to understand a correctly encoded =
collection value for media-col if it doesn't return valid collection =
values for media-col-database/ready?  (probably not)
>>>=20
>>> I wrote the test. Printer correctly mirrors media-col parameters in =
the Print-Job response (and my test encodes requests correctly) but I =
don't see any change of the printed image when I play with these =
parameters.
>>>=20
>>>> Did you fix the problem for the user?  Is this better?
>>>=20
>>> In general yes, because actually all printer functionality is =
available for user.
>>>=20
>>> Regarding tray selection, printer chooses paper from the manual tray =
if it is not empty or from the automatic tray otherwise, and I'm not =
sure if it can be changed programmatically. In any case, it is =
reasonable behavior.
>>>=20
>>>>> I'd prefer to make it even more precious, affection only =
communication with Pantum devices. But in that places of the CUPS code =
where responses are parsed there is no information what kind devices we =
are speaking with.
>>>>=20
>>>> And I would be even more opposed to such a change.  At that point =
you have created a printer driver...
>>>=20
>>> Printer driver may be a way to ho, though at this case it is 1000x =
bigger effort.
>>>=20
>>> But at this case we need to provide a mechanism to disable =
auto-discovered printer in a favor of device instance, found and handled =
by the driver.
>>>=20
>>> And another thing, we loose IPP over USB functionality (or ipp-usb =
must mimic their printer in enough details to fool the driver that it =
speaks with actual hardware printer).
>>>=20
>=20
> --=20
>=20
> Wishes, Alexander Pevzner (pzz@apevzner.com)
>=20

________________________
Michael Sweet

