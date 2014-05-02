Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=O5zU0qSqH3M3U+RF0nlOLPIfPrf435jxpMw94V6rhKU=;
	b=Mm6nVHEPwqOBW9WsnmrgiA9XPfKZ0ghKcpk/9YYLD1oCDi52MFVIj+Mafh1s5dVBAb
	U8KxkFX1iyTq08SbGXOBCQFwjKVBgxzz//5AUO9NJAO8ksMsXwRxvko2gMZ7onPAETRv
	WgpZjLRLtv0UOvcTMEpLa9f5r1h8N1y/lMYPzt6T48+eTDIew7tF/dNDWcz3rRCYoZ9d
	vnPohzVOmPIFnR5lcxgkYkFk/3wYhOsQ9E0GtPa+tlAyNMdZtMg7qi74CTc+vmKq7/5S
	VqZ0R3yDF+wzZQasKkTmPNAfkfx2Sl1lK9mJiEIS9GVswYmt8fEMjO2qN0BjpQkIWFhR
	e0YA==
MIME-Version: 1.0
Date: Fri, 2 May 2014 14:57:12 -0600
Message-ID: <CAGC3nLAwOn5Ni+xa6BpmiT2TkYwyVxW2A3Avc04Yfic8Ko-bGw@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: [Printing-architecture] [GSoC 2014] Work on ipp over usb driver
	started
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

Hello Everyone

I just wanted to give a general heads-up that I've started work on the
ipp over usb userland driver. If you're interested I've written a more
detailed summery:
http://danieru.com/2014/05/01/all-ready-let-gsoc-2014-begin/

Every friday I plan to write a progress report. This week's report is
sparse but gives a fair impression of the past two day's progress:
http://danieru.com/2014/05/02/gsoc-2014-friday-report-1/

If you are interested in the code itself I'm using github during
development: https://github.com/daniel-dressler/ippusbd

I want to avoid mass mailing the list so if you would like weeky
updates emailed to you just email me and I'll cc you when I email my
mentor for the week.

Daniel
