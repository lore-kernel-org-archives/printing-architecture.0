Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=n1WIHgjPikwjroUnYEMGxJ7ufVdwoL7DJMyyh0Gg+t0=;
	b=NAk/hjihUzwHXN/xnzoxKTQHeqju7TzOOgyQHy6IZN3LlOClfJ1oVxSNGE4T8drEnN
	yUK6TWzrnDfQKG2LUpNjAiKmlhuUW3kKfmDuXQockClx9hRJtn0y/XHaFVrPG/jS8p9U
	BgezHzsqSdqSh51lq6YviU4GXETqmgMoJsAYDSk/90RRpNWYPmpQtC4oseZsnYxVKkjs
	xuHvWrTGopzUwIvkeUK84OJ5uWNGkNH6Zb+OhvCllF3X0EHDy6BqlNz/Qgn9dfAM/y5k
	Ag1utZPbZPl1+dr3hcdUCuRD1CN39+N7WIA2wN559lcWK8hs5yTJs0oM0vt/RyEddL0T
	VzOQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5641FA60.5000902@gmail.com>
Date: Tue, 10 Nov 2015 12:08:32 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CMD: field of device ID,
	which entry for PWG Raster?
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

the IEEE-1284 device ID has a CMD: field to list the page description 
languages (PDLs) which a printer supports. What does it have to contain 
according to the standards when the printer supports PWG Raster as input 
data format?

    Till
