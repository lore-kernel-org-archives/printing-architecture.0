Return-Path: <honoh@sci.u-toyama.ac.jp>
Date: Thu, 03 Jun 2021 16:50:58 +0900
From: Honoh Suzuki <honoh@sci.u-toyama.ac.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-Id: <20210603075805.3D0A083E2D@smtp1.osuosl.org>
Subject: [Printing-architecture] Q: Dot-by-dot (dot perfect) raster printing?
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

Hi,

Sorry for the multi-posting (I first tried Gutenprint in vain).  I have a newbie question.  

Is it possible to do raster printing dot by dot (dot perfect)?  

My understanding is that, nowadays, it is generally not possible because the printer driver (backend) always tweaks the original image during printing for re-scaling and dithering.  But I badly need it to print my computer-generated holograms, probably with [debian or chromebook] + [lasers and/or inkjets, e.g., EPSON, HP, Brother, etc.].  

The dot size doesn't have to be the finest possible.  For example, a 300dpi image on the 600dpi printer would do.  

The physical degradation (toner or ink splash etc) is unavoidable, but at least I want to avoid degradation at the software level.  

I imagine there might be a simple option (like --as_is or --dot_by_dot) to lpr.  

I'd appreciate any clue or pointer to the archive, source code, snippet, etc. Thanks.  


