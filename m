Return-Path: <m.hatzold@web.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1613471574;
 bh=Be5IZ65R3sMQnlJtZDa5ofa88am0TcNM4CJ16W9HEho=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=P8+Z6rc9cZQUGBXTgqTa2l1V03SubBTKjnrr9+ZW5DNxaqeeX39nPs8s4k5GVqDok
 4rceZz3Hy/WlStIDhLN4C7ru9iu2BJWx3BWwa4kjnlBdc5Gzdr1GOSx8owWIvjlRwm
 ALcGegowQsZ+4T08HqCjtCP7vcKHm+XltB03M10U=
Date: Tue, 16 Feb 2021 11:27:47 +0100
From: mh <m.hatzold@web.de>
Message-ID: <20210216112747.36cad1b3@neutower.picasso>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] new OKI PPD files for B432, B512, M492, M562
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

Dear Maintainer,

I am using a vendor PPD file for my OKI B432 printer, which is working
well.

(The PPD file for the preceding model  ( OKI B430 ) is
already included, but not really appropriate for the B432 model
(borders not ok, no double side printing).)

The appropriate PPD file (including PPD files for three other Oki
printers: B512, M492, M562) can be found here:
https://www.oki.com/de/printing/support/drivers-and-
utilities/?id=3D46398401FZ01&tab=3Ddrivers-and-
utilities&productCategory=3Dmono&sku=3D45762012&os=3Dab33&lang=3Dac5

The license of all the files is GPL 1.0, so there should be no problem
to include those files to your database.

Thanks

M. H.
