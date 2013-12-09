Return-Path: <a.makhalkin@samsung.com>
Message-id: <52A5C869.8000800@samsung.com>
Date: Mon, 09 Dec 2013 17:40:57 +0400
From: Andrey Makhalkin <a.makhalkin@samsung.com>
MIME-version: 1.0
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 7bit
Subject: [Printing-architecture] Different Collate option handling in
	pdftopdf and pstops
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

Our testing group has found an issue with printing of multiple copies
with collate option turned on.
cups-filters version is 1.0.40-0ubuntu1

When PDF workflow is used, pdftopdf filter doesn't put collated copies
of document pages in output pdf file.
With the same PPD file and print options pstops filter produces N *
(numpages) pages in output PS file, which seems to be a correct behavior.

There is an attribute  *cupsManualCopies in PPD file, which is set to False.
There is no Collate option inside the PPD file.
This  printer doesn't seem to support hardware collate, but it supports
hardware page copies.

The expected filter behavior is to produce collated copies of the document.

When we change its value to "True", pdftopdf filter produces the
expected number of pages (does copies manually).

Could you please explain, which filter behaves correctly?
Is it a bug in pdftopdf filter?

