Return-Path: <johnlayt@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to; bh=FKTtV9+4vQYfTHesIIWR6FeMywA+obVJAXFD4vzd370=;
	b=oHbzjmdzCNDOXsE4NGePDg3aAxJBpwukW5YhzGd/XICTLndxYn4kiyIT5+QRKaxWug
	qUfF8JCRIEiPwFuYndgpQ0QocMnzMu7Xh3bKvnx36EKZuiLt5pF/BsjPDpwE+43hHNUM
	QAJXJvPWshYtQtSq2N/Ddl5d0mRi6PbTUJ1pkxUJ5Zr/6cYzscuH3H15x6zSySQBJWXK
	3pHNydZzwi6UVZHm8j1038HoR5oBWtGNDThIg22kHtag3+5BtpTN+xzpOOSVZ3qOL1lG
	2R9Er8mYF5DrOxbKEq/ml1N2hdqb17TwV97WqXMHkc9jHKKoVCyWH9K038pKZ4FSUCUj
	zVOw==
MIME-Version: 1.0
Sender: johnlayt@googlemail.com
In-Reply-To: <CAD2FfiHCxH7W3VfcvFt3o=9iO4Bu2PEjqKmhcJt3FNkj4JRfrA@mail.gmail.com>
References: <56F6A4D2.8080801@posteo.de>
	<CAD2FfiHCxH7W3VfcvFt3o=9iO4Bu2PEjqKmhcJt3FNkj4JRfrA@mail.gmail.com>
Date: Sat, 26 Mar 2016 17:01:13 +0000
Message-ID: <CAM1DM6nYKfkH0TvePysc5zu35WVrwZ3xO8EruQOw0RpFGgKe1Q@mail.gmail.com>
From: John Layt <jlayt@kde.org>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] Status and future of the Common
 Printing Dialog (CPD)
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

On 26 March 2016 at 15:42, Richard Hughes <hughsient@gmail.com> wrote:
> On 26 March 2016 at 15:03, Michael Weghorn <m.weghorn@posteo.de> wrote:
>> Could somebody possibly say something about the current status of the
>> Common Printing Dialog?
>
> Last time I spoke to the GTK maintainers and the GNOME Design team
> there was a total lack of support for the project.
>
> Richard

While the usual Qt policy is to use the host platform facilities where
available, Qt has no interest in using CPD either, at least not in the
architecture proposed. There were too many implementation issues and
no funding for the required cross-platform architectural changes that
Qt would have required.

John.
