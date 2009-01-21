Message-ID: <49776716.4000004@gmail.com>
Date: Wed, 21 Jan 2009 19:19:02 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Project ideas for OpenPrinting in the
	Google Summer of Code 2009
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, OpenICC Liste <openicc@lists.freedesktop.org>

Hi,

I will again apply for the Linux Foundation to participate in the Google 
Summer of Code. So I want to ask you for your suggestions of coding work 
at OpenPrinting which could be done by GSoC students and also whether 
you would volunteer mentoring.

Important is that the code will really be used in the near future. Last 
year we had for example one student implementing the PAPI in CUPS but it 
seems that in our current printing environments there is no real need 
for the PAPI.

We also need to try to assign projects which students can finish in 
time. If projects are too big we should split them into two.

Note that the students in reality do less than you expect and that if 
the GSoC is over and they are not ready that they usually do not have 
time to finish what is still missing.

Work which needs to be done is for example:

- Patching individual applications to get the DBUS interface for a 
Common Printing Dialog
- Writing a web app to manage printer drivers and PPDsd uploaded by 
manufacturers
- Implementing JTAPI and integrating in foomatic-rip to add job ticket 
support to the PDF work flow
- Coding test suites for printer self certification
- Coding on color management integration (TBD by the color management 
experts and by the OpenPrinting Summit outcomes).

    Till
