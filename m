Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=40KDuwfMd08SUaJYC8L5TzKhSVx6bNOwixzkQ/Ro3lw=;
	b=Rpyl+/1bYcxhtCY2BdKkiiWsKZt+JC5QaiJ79mX0wxs1gNQH9fnPVJQZSoNK2dDP3o
	RVC4RAadcu+S8RUVWD19tgEAzNghwAZQUzeQ50idd7MYt2EA1milNAEjvQzE0R5n1EP8
	YS8x9+hFSleX27Fe43ksNv8JpJMYGAp+hCGADUVNAatyuzVkpT8uJ6RP7Jn9i8tJx1Ng
	NhyVplRBEzD2uiTtbrVevghsnrK0cK2DzhDu0d9uPs7/k++8U27Lj56dGdr2Isi6hWI9
	nOhl59vi/Wzy3olaQ9lDZtqyOJwx+PV0D1P+mSFQki+DDf/tbHo1auuiJ4xiCajT++yQ
	3JSQ==
Message-ID: <53A9C50D.4000306@gmail.com>
Date: Tue, 24 Jun 2014 20:35:57 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <m38up3ymxw.fsf@carbon.jhcloos.org>
In-Reply-To: <m38up3ymxw.fsf@carbon.jhcloos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 06/12/2014 02:45 AM, James Cloos wrote:
> I though I sent a note about this earlier, but it looks like i did not.
> 
> When Daniel and I spoke before coding started, he said he wants to
> release the code under GPL3.
> 
> Given cups' and cups-filters' licensing, is that acceptable to LF?
> 

I am free in licensing the code of the OpenPrinting projects. LF is not
requiring anything special.

> Even though I am a GNU maintainer, and thus support gpl3, I was
> concerned about the compatibility issues, but could not dissuade him.
> 

GPL3 or GPL3+ is OK for me if it does not conflict with the use of any
of the libraries used by ippusbxd.

I suggest to get some more opinions on the printing-architecture list.
Therefore I am CCing the list now.

   Till

