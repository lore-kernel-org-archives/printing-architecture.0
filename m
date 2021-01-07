Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=lDcXQoSOU0kP0tx4b+t6fRknrlmdZBU4ndFkuQ2CzQs=;
 b=sAXPkyXygqAocvDERtHJt0p5TUuze2HAy50Oo4nVLGFryaNZjasxG0lE1UCQIkzPdW
 7pjxuZ4O8sHOR2KmMprKlqEWIdzuoVkyvcs2cYbPkymERLAzHtheiO5+cGJzzcsuDHPd
 SOBuJvIbmpS2G02DJNe59HlmGtZN15s8yAVdkS7Tg6iEfcrq4tPn4mXrL5StXfgJ1gp4
 fSbz0wi+HjIlYcWP6oZBSnOWUDIze2TcOjXpdeYfeC4uqm9Sm8k35ygLZR00JXSyzq8O
 KsGgJT319VTHf88HzsAuMm9ngXKaoATLp6riyeLp55CkCO///oEffsBHsyYU1scUBs6O
 PgOw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <f017a36e-1bd3-2ec8-e0d3-e3be45a82207@gmail.com>
Date: Thu, 7 Jan 2021 20:03:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.7 released!
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

Bug fix release to remove the support quality check from the 
"driverless" utility to do not break CUPS' PPD listing facility and 
several fixes for generating PPDs for driverless printers

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.7

    Till
