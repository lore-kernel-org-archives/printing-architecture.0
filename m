Return-Path: <aikishugyo@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UuPw5DQSBEeBDIHaszOkpnfU9ul519hu3oQjW1IN1iA=;
	b=p6Qh8y2ALZIjaaHTWI0Lbqy7qkm+RwgPmmBAIGeHaaFDj8VouEAhQKc2GZbxzoDcmz
	2SUR103QxBMe99wMak563sBtdNDXtH5AEEqwea0I7QtToSeDV4/c+M3SkvEkOHbVyavz
	77sOPgWq5TgX70aNDOtFtS8Y8BTXYNvItalOdj6fRnWwGOqq6aFQGLMc6xW5j3OJ8r4i
	pjYw9lbcOaF2UdepT9GvX4+7cUcLy4m0XKG25aXSDEkyXxdRlVzqZcM4XSB56SORYkX5
	9bKxTsleYVFWx9A0Y1uy2fBQrFgV59x99jUTo7rcWfnyhLZd54nJEBUFI9uXEKMm18Yj
	Ui0Q==
MIME-Version: 1.0
Date: Wed, 28 Mar 2012 02:12:50 +0900
Message-ID: <CAN0dEZwpGd-sgtxOc=NuGxg3HDVLLSqt9oFqiaSu2u-_rn=gNA@mail.gmail.com>
From: Gernot Hassenpflug <aikishugyo@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: [Printing-architecture] Common printing dialog status? ALPS printer
	option support
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

Hello,

I'm working on supporting printing with Canon inkjets on the
gutenprint project, where option processing is rather important since
the PPDs currently expose all options. I also have a keen interest in
the ALPS series of MicroDry and DyeSublimation printers, which are
quite different in their options to inkjets and lasers, and where the
options for the two entirely different printing modes would be
extremely difficult for users to understand (hence 2 PPDs, one for the
MicroDry, one for the DyeSublimation mode, is a preferred solution).

I wonder if this list is appropriate to discuss whether the Common
Printing Dialog planned capabilities are sufficient to support ALPS
printers, and if not (I still need to read the API documents
carefully), if there is a possibility to provide input (and take part
in development).

Currently, the OpenPrinting.org/Linux Foundation forums seem to be
down, hence my post to this ML.

Best regards,
Gernot Hassenpflug
