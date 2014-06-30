Return-Path: <pdewacht@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=k5uIHW41zwAEC8RESh0DBAdAbQfzr02hsMscSfykgrQ=;
	b=lPs0Z8yhOGI/dXap3zw+Nox1TCntJW+JJaRARwitca92g/2Q8Kpln3ku8ZUW8WzOYa
	8+PpXyni5VhNjBSAn9IELPK2uasVrGi39Xccbrhz343QeREn2yiLULzKhYJ1QZTBPH4r
	eeKVMzqzCvB3H5dQqxCjDsi7odeROg827zF+6Rb00Jp60e5/tZ94s+ibl++zcW3SKRyU
	jLkUgjqvoqdLrD3h+qSd7/ScwXXe+DWHDKDsS6kbfoQuAwR4WFl1DI4ACGs64TvrV6VQ
	Us+yr+/B+3t0JvNeDQQCf39eezpCa3OFtSVFGdZS7LdKU3V2fMlxtPiHpBbtNIh09K0T
	wisQ==
Message-ID: <53B1D5B1.6020105@gmail.com>
Date: Mon, 30 Jun 2014 23:25:05 +0200
From: Peter De Wachter <pdewacht@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] New driver for Brother laser printers
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

I'd like to announce a new driver, a cups raster filter, for Brother
monochrome laser printers. This driver is designed for the DCP-7030,
which previously wasn't supported by open source drivers, and I've had a
report it works with the DCP-7065DN as well.

It's available here: https://github.com/pdewacht/brlaser

Cheers,
Peter De Wachter
