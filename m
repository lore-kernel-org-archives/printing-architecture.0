Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=vBxQq8KKXmF65GosnnkhEY7J7gVGuEvklJzlj0U4oRI=;
 b=d6/5IKXrOxBv5uOp8GhGj30a7nYQ/3wvgpop6sohijvdfnsZs4w0455jy22jKa8tfX
 hXXPMWAHMN6qtumB5EcZPzhWnrdovQZSAP64anZAigtWwv1KQOdC/i5Nym0YuGF+ZE/4
 jhJdKSLLr088sE2CjUT/A8RbeFVGFr5jSB0Iv3L2VWY/ZvkwOEs5KIurvnjhkWasPe3B
 lGjsJwmlZ1ysi0iuqrlCCWPWdYe97Fakoh8wOpJtSWk34FQkrs+UKk1ITelZ3dN/rmGI
 nG1aS5Bgv7ikYpRfa9KqZGfcNqnb/kCuLMDRzlRkbGpKmxKp9huvbbMmyUIeu5WV+9Cj
 Rc5Q==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <1a1f8955-f2ab-b741-a6af-8950bbbe8b15@gmail.com>
Date: Mon, 27 Jul 2020 22:09:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PostScript printers without PPD files?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I am currently working on making cups-filters easily usable in Printer 
Applications, meaning that I want to move the core functionality of the 
filters as functions into libcupsfilters and add also functions which 
call a user-defined chain of filters and can be dropped as a filter into 
a PAPPL-based Printer Application. This way I want to make use of this 
code base which came together in many years also in Printer Applications 
and to avoid any re-invention of the wheel.

This also eases the retro-fit of classic drivers as cups-filters 
provides a lot of useful functionality here.

Now, working on a way to retro-fit PostScript PPDs to make all classic 
PostScript printers working, and with the deprecation of PPD files in 
CUPS came up a question:

Will PostScript printers always come with PPD files? Or will there be in 
the future non-IPP-driverless PostScript printers without PPD files? 
Will there be PostScript printers in the future at all?

Would it make sense for Printer Applications to have a 
Something-to-PostScript filter which can be optionally built without PPD 
support at all? This filter being used by PostScript Printer 
manufacturers for their printers in the future?

    Till
