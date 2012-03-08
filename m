Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=OFkwFcrtAAuaM2gN4vc8JBKjZMBhPU6G5iy4b93N2A0=;
	b=fvTGVhvyY5reJKyMgEGYSjeEV52agsrFxpjkCkTg7IrUvqkPLR/lrHHs0IPRq+n8zg
	iTiE1OxMBTB+CLx1vnzsAybBU1ZDmQE6LfhZznqikbc0iGR5C6DydyFWhboSNSclEmrB
	u6h7JWXHEGVIKqJRyxDbi3VcwVbWUuvFkaTO1aHW/ZT4SQ+u6iVUk2BpEsEgQUaLV1CX
	gRKO4lP1IqSRKX1C+xPQqU6okkzcpOgk/vi0B0FLWANf/2JQh/HJt15yQNQ/AMWQqjqs
	ynCT+zYMV0HKBMn6PyWzXKh7MAvZCBIBnt7qqoNGcJCgeMw471sUWJJXYaP/VrBLRktt
	tTaQ==
Message-ID: <4F592E5F.4080604@gmail.com>
Date: Thu, 08 Mar 2012 23:10:39 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Google-Summer-of-Code project for new
	pdftopdf filter posted
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, "twaugh@redhat.com" <twaugh@redhat.com>, Albert Astals Cid <aacid@kde.org>, Koji Otani <sho@bbr.jp>, Richard Hughes <hughsient@gmail.com>

Hi,

as discussed on the last phone meeting I have now posted a project idea 
for a new pdftopdf filter:

https://www.linuxfoundation.org/collaborate/workgroups/gsoc/2012-gsoc-printing-projects

If the student will not succeed to do this project without any PDF 
interpretation we will perhaps at least succeed to get rid of the copied 
code when still using libpoppler, but the ideal would be to get 
completely rid of Poppler.

Perhaps the student could even "translate" parts of the pdftk code from 
Java to C.

Any additional project ideas for OpenPrinting? Please post. Tomorrow is 
application deadline for mentoring organizations (the application I have 
already submitted) and the more ideas we present, the higher are the 
chances for the Linux Foundation to get accepted again.

    Till
