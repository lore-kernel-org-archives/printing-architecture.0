Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:from:subject:to
 :content-language:content-transfer-encoding;
 bh=oCLU83+OLGa/JT8NzKoz5hy9LGlduAjfV4xNgX8kIl4=;
 b=LgXRXRSG2od8hhHtQ66EKajFkFEc6fLy7WYgQNU278tk0hTskKlU5hQa4t4PASZ+FN
 Zyeq6fzb78MvG52rIzp0NTLmojB8C/zDFFPfI4SEI3r+UvJO8cNb3XFon8/vlOuOPesr
 BOCt9aYLWwOalyYYgrWC6bGNXcx4xuRcG6hRvWURDnHjrafYLzYf5WDzlscuwwlErOUY
 Rs5OD0p3RE/RZDBuL63ctd3OgXpy+yZ/+bLevyE1c0R5xptPLYhj6St/aN5Cf+Yow4sN
 4BC6Mi5kotdsN23gxyg7NYbgQttDVNeK89el54NwmfbqjCkoE0IFwFm8dcU65vRo0ps+
 s2dA==
Message-ID: <b4b45d40-0b73-c245-f8a3-58ad5942130b@gmail.com>
Date: Sun, 27 Mar 2022 20:36:21 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.13 released!
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

I have done another cups-filters release now!

Bug fix release, for correct printing on printers which take in the 
paper long-edge-first and for Apple LaserWriter printers.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.13

    Till
