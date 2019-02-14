Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=8hek1tEuQfaOqopEsBHFMnUS9wM+IQuyRk1Cv2WWVXQ=;
	b=iFRGSk+MxOQ4SBLfA3N51Ts32uwsZhZBwvIPdgQwtV7UmwKJzhY627//3KrYF/aacQ
	WVMzjbXJ1jYptgHoKkFG23ffrx4ZMpoJ4ZQMlIKeCvDfN8h8f1u2vqIrn/1EkZZDEhSf
	vwQGSKbnGq8fJtJYl0/fIY6k75mbtqk7uyj8Rxg4zDZQPxug/Bl4g6DkV26eVv4RX75t
	Fu5bgG2OoKTJIoQceOoSrHE9wegfNg4OpW0QeMl1ZWaRjQ1vYO0IxqnElRTovnlqOVD3
	ud7qvMuwkS3RrF1xk5sx5/D9euJEcG3gk7+585WiCv8frWN49yBwowUkBlnPS6QLlbO1
	RBNw==
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
	<5c3a427b-83bd-2a94-dd8e-e597ecbbe300@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <67508d8a-9164-71fc-7085-df47397a2522@gmail.com>
Date: Thu, 14 Feb 2019 16:31:06 +0100
MIME-Version: 1.0
In-Reply-To: <5c3a427b-83bd-2a94-dd8e-e597ecbbe300@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, printing-architecture@lists.linux-foundation.org

On 14/02/2019 15:39, Zdenek Dohnal wrote:
> I met with Michal today. He studied more CUPS code by itself and found 
> other features which would be needed to implement in systemd and in his 
> opinion it is not doable in systemd-resolved.
> 
> If there will be any other update, I'll inform you.

So this would mean that we should actually fork Avahi as there is no 
complete replacement for it in the foreseeable future?

    Till
