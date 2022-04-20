Return-Path: <jsmeix@suse.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1650441528; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wWzmkNI7mkm9qH39hlyJgQZVvnB7BcxLH5SwsOF0EBc=;
 b=X86cXEZdfY0EwItccCQXvo471lBQYOWtwzhsL1MMnddkYlctmLQ/wXuJZuc4h7XslDMzK2
 VC9OJDAm/LSTNAnm8w2IG7qyXwl6DOsq9STs+a/oeWWDaldXmt0GXK17QAMBQ00au8pAjG
 dqUtqIUP2Pi+o+ANqT70sWyL4ECTlaY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1650441528;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wWzmkNI7mkm9qH39hlyJgQZVvnB7BcxLH5SwsOF0EBc=;
 b=XaBaWCpgdwApIwvdTQX1aJcZQDBvLdPJc88vnjMN27MWODk8OifOV7Cgrl+icIgX+WLDxU
 9u/q4BVQ9lZfK0CA==
MIME-Version: 1.0
Date: Wed, 20 Apr 2022 09:58:48 +0200
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <38cd3cb1-5e0a-6735-5857-090cf6172c71@tnonline.net>
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
 <48896244878cd00c9e15e77fbd636696@suse.de>
 <38cd3cb1-5e0a-6735-5857-090cf6172c71@tnonline.net>
Message-ID: <c40a92532e9a57ce6d6bb7cd55b152e3@suse.de>
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] What windows driver to use with a CUPS
 IPP server?
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

On 2022-04-20 09:35, Forza wrote (excerpt):
> What I don't fully understand is the RAW queue here.
> Is the idea to set up a RAW queue from CUPS->printer and then
> use IPP from Windows->CUPS, but with printer specific printer
> driver installed in Windows?

Yes, and the reasons are described in the section
"Why Windows clients have a printer driver installed" in
https://en.opensuse.org/SDB:Printing_from_Windows_to_Linux


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Ivo Totev
