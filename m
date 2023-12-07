Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE35783A43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB35982F31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701957503; x=1702562303;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DfuNId4YBBYA2ca9NYfLkqGSjUdiwoMe0HlFud8EC5E=;
 b=A3P/mvE4w079aANUnctwabmSEP4IIQJddCO0/KLz9Cq14NuBeYwF5yjkV8Ym0hh18U
 BWSPR2nWfcCICbQB4d80d/eVIWrPLM+rKWQHgphHB0s5X//iP2BX6CnzmI0aPSPjEzuJ
 DORThfSfS69Epp/Nm98K3SfIO/eMkxT231oxUf0o8ftEhhoTEO32WXeJgCyvtfDB+l+B
 Zo+uvAYwkOlQzP4ppDgRmicZyyh97A5/yLiNC3GmxMrfXXfIg+o5F1WkwdlIx+LInHlP
 76cgLGOhIOG+Qaoj5tewfnKq1Z+8qwdUSIjHZhQ2q29AkMafQ3f/CX7J7vip+jSA288/
 Ikpw==
Message-ID: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
Date: Thu, 7 Dec 2023 14:58:21 +0100
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
	libcupsfilters as GSoC project?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

Michael Sweet has closed the PDFio issue in which I ask for support of 
PDF forms and annotations, telling that inside PDFio nothing further 
needs to be done, that everything can be solved outside PDFio, by the 
calling application.

As we want to get rid of C++ in libcupsfilters I plan to let it use 
PDFio where it is currently using QPDF.

Mike, as you tell that PDFio is OK for handling PDF files with filled 
forms/annotations, I want to post a GSoC project idea to switch over 
libcupsfilters from using QPDF to PDFio. WDYT? Is this possible already? 
Or are there still any features missing in PDFio?

    Till
