Return-Path: <postmaster@tnonline.net>
Message-ID: <c7a9a948-14fc-b9d3-375f-183f27db3a85@tnonline.net>
Date: Thu, 21 Apr 2022 07:14:21 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
 <48896244878cd00c9e15e77fbd636696@suse.de>
 <38cd3cb1-5e0a-6735-5857-090cf6172c71@tnonline.net>
 <c40a92532e9a57ce6d6bb7cd55b152e3@suse.de>
From: Forza <forza@tnonline.net>
In-Reply-To: <c40a92532e9a57ce6d6bb7cd55b152e3@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] What windows driver to use with a CUPS
 IPP server?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org



On 4/20/22 09:58, Johannes Meixner wrote:
> 
> Hello,
> 
> On 2022-04-20 09:35, Forza wrote (excerpt):
>> What I don't fully understand is the RAW queue here.
>> Is the idea to set up a RAW queue from CUPS->printer and then
>> use IPP from Windows->CUPS, but with printer specific printer
>> driver installed in Windows?
> 
> Yes, and the reasons are described in the section
> "Why Windows clients have a printer driver installed" in
> https://en.opensuse.org/SDB:Printing_from_Windows_to_Linux
> 
> I understand that Windows needs rendering on the client side. So in my 
case this case, I think the best solution is to continue to use the "MS 
Publisher Imagesetter" printer driver. It generates PS output which CUPS 
is supporting. The driver is "plain" with no options to set duplex etc 
which is what I wanted to achieve.

I wonder how Windows is handling IPP Everywhere (driverless) printers in 
general though? Does Windows have some method to detect options and 
toner/ink levels from IPP Everywhere printers without a native driver?

Thanks
Forza
