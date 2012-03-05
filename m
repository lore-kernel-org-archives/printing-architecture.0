Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=iTd89PX1RO4o58Zz8FWd1eZ4g7Waoy+3IYPjPQnI+As=;
	b=hJVscVXyPB2/g/6OLLAANGerVJKdsNOfPxT0P5q5LK05fzomg2bZId8W4KEOzmpASR
	VK/zNSa0ATweivqoMTvcZIepUk7fm1VZD8rvetmOZNSKSpsl/D1Tg8eV5cs1D0rjrQkc
	5s+RdjKIFoKzvQm4sg0jfJ1CPueUMAcCYxKIgNUsGVQS7SFLEsfqZnoYdzJnDKLDu4Kp
	GNdgdvIvLbjmAUwVAdXehiJ490y8zIxCCR0me47z+4baUy5pBwm3FSqQ2LSI+fI/0D1L
	GxatLQI6E8mYuCGwCUVTo/Sp+UvD/AnOXBtY4/G+WnBwT2cf7N5R27op8RQKCSxSmM6D
	pkWw==
Message-ID: <4F54D87E.6060801@gmail.com>
Date: Mon, 05 Mar 2012 16:15:10 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp>
	<1330690418.32498.29.camel@rubik>
	<20120303.113354.329374074.sho@bbr.jp>
	<1330949656.9812.8.camel@rubik>
In-Reply-To: <1330949656.9812.8.camel@rubik>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>, Albert Astals Cid <aacid@kde.org>
Cc: printing-architecture@lists.linux-foundation.org

On 03/05/2012 01:14 PM, Tim Waugh wrote:
> On Sat, 2012-03-03 at 11:33 +0900, Koji Otani wrote:
>> Sorry, I'm not good at English.
>
> Your English is fine. :-)
>
>> It seemes that poppler provides parsing and rendering PDF.
>> pdftopdf needs modifying PDF such as number-up, duplicating pages ,
>> inserting empty pages, scaling pages, embedding fonts and producing PDF.
>> When I began to develop poppler, I considered about various things
>> such as limited time, cost, etc. And I decided that I developed pdftopdf
>> outside of poppler. (Developing pdftopdf was funded by a Japanese governmental
>> organization)
>> It may be ok for poppler to include these features as you say.
>> I would appreciate it if you put these features into poppler.
>
> Thanks for explaining.  If poppler doesn't currently expose enough to
> allow pdftopdf to do what it needs to then some work is needed to change
> that, in order to avoid duplication of bugs.
>
> Who knows the pdftopdf/poppler code well enough to do this?
>
> Do we know anyone on the poppler development team who could guide us as
> to what sort of changes they will accept?
>

Otani-san, can you provide a list of features which need to get exposed 
in Poppler so that you can implement the pdftopdf and pdftoopvp filters 
without code duplication? Please CC Albert Astals Cid (CCed in this 
mail) when answering.

Albert, could you help us in making more secure and 
distribution-friendly PDF print filters by adding some APIs to Poppler?

    Till

