Return-Path: <impatt@tiny-vps.com>
Message-ID: <5469C8E8.5010903@tiny-vps.com>
Date: Mon, 17 Nov 2014 15:07:36 +0500
From: Alexei Babich <impatt@tiny-vps.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] rastertopclx filter
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

Hello all.
In my current job place, I write an *.ppd files for our laserbeam B/W 
printers, which can emulate PCL5e or HPGL/2 languages. In my case, I 
want to use rastertopclx filter.
I'm trying to understand the model describing via .ppd-file, and many 
other things, but I understand it's not easy. Now, however, some results 
there, but would like to ask knowledgeable people about one thing: is it 
possible to make the description of the printer in the .ppd-file so that 
rastertopclx sending job in grayscale? This is necessary because if I do 
a grayscale depth supported by the printer equal to 1 bit, then 
ghostscript when creating a raster file uses too coarse dithering. If I 
make a grayscale depth of 8 bits, then rastertopclx uses, it seems to 
me, error-diffusion dithering, it looks messy. Meanwhile, if I send the 
job to the printer using the PostScript, then the printer itself uses 
more elegant dithering. So, I think, if I can send the job through 
rastertopclx in grayscale, the printer will use a more elegant 
dithering. Am I right?
If it possible, please give me examples of parameters.
Thank you.
