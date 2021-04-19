Return-Path: <pzz@apevzner.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=uWIfSl0kBi/phnm3Bl0q8uzkzvzrioQb2wV81pDXAJ8=;
 b=Hcu5eKPIfnTE8nuFec2kV1YGRQX7awPu6De/cOiojsAUcF7m3IKJ8Mv4gnx9vcJFBc
 ypMAuTs8Iqrchj4vLOphTYAum85Ad1s2YTwzByc062Wvim/TOndC9O5Q/KzTaoj+1pld
 qdliEqzoC2lQoHebem8CoQu/IwbH4Jy3c4NQu3Z0AHNrjdOFemYBUKEucfEOLZnnCzbX
 1mU1CTen5VKkzRSlR255yMLecckXXXjg8smAV0Xx8JNYgaUlf+qwsc8MDlo5BmWYt7jt
 rTKfsYFCwo6L0/HDbNtFDc+acY1iRyjF/rdShrC5d1Fe3+b8KObkZv6xiMLcLaWbx3lM
 QjkA==
From: Alexander Pevzner <pzz@apevzner.com>
Message-ID: <da1e3969-fb49-7fd7-1728-f18759afc3c2@apevzner.com>
Date: Mon, 19 Apr 2021 20:17:08 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Mopria has published the eSCL protocol
	specification
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

Hi,

Mopria has published the eSCL protocol specification:

     https://mopria.org/spec-download

Basically, it's the same as scanning part of Apple AirPrint (Bonjour 
scanning).

Also I think, it's effectively kills any need of IPP-scan.

We just should go ahead with eSCL. This protocol is simple, 
well-defined, widely supported. As a bonus, well-written eSCL server can 
export scanner to any Linux machine, any smartphone and any Apple device.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
