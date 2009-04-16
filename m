Message-ID: <49E76EA6.10306@gmail.com>
Date: Thu, 16 Apr 2009 19:45:10 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CAF@EEAEX03.us.epson.net>	<49E768BF.6030404@apple.com>
	<e395be80904161029u6e2a1058n3a6e1283d5d21fca@mail.gmail.com>
In-Reply-To: <e395be80904161029u6e2a1058n3a6e1283d5d21fca@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-summit] Preview for CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Michael R Sweet <msweet@apple.com>

I also agree with the use of a default image, once, while waiting for a 
live preview and second, on systems not capable of generating previews 
due to restricted resources, and also for the case that the client 
application does not support live preview (for example it did not get 
changed towards the printing dialog but Lars' stage-1-CPDAPI-patched GTK 
or Qt is used).

    Till

Ira McDonald wrote:
> Hi,
> 
> I agree with Glen's suggestion - default images for preview
> should ALWAYS be the fallback - for the limited-resource
> embedded environment REAL preview images are NOT a
> good idea.
> 
> I also agree with Mike (and Glen) that displaying the default
> image WHILE generating the real preview image is a friendly
> design approach.

