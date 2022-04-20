Return-Path: <jsmeix@suse.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1650438430; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9IolDa3frbyqNl+io7Z81/Q8+06E7xQy6aiz7xPJMwI=;
 b=SHNWN99WLy1PeAmVVYxAecT3LjdQGkw7EE+HVyHs12GhRDcwf7DDmzC16+KepQK5Gx6a2m
 4EeZiiSjquMiCAP0JxFpd4Q3UxYEdTQBQqzIVaJeCnSiLie2ao/pyqe2Zf1TaGZZXAlTQc
 6sYee47rH68omgBpzANLt53iKDsurkc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1650438430;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9IolDa3frbyqNl+io7Z81/Q8+06E7xQy6aiz7xPJMwI=;
 b=/Jd9R5+XGNqW7gbVaqdYnrxxbTZukgs5WbY2TE7qu2VhQCv/w+OBT5RjOtwoYaOUPJK0tS
 OPY3K9pw3BE0RlBA==
MIME-Version: 1.0
Date: Wed, 20 Apr 2022 09:07:10 +0200
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
Message-ID: <48896244878cd00c9e15e77fbd636696@suse.de>
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

only a general note FYI:

On 2022-04-13 22:24, Forza wrote (excerpt):
> Someone on IRC said I should use the native HP drivers,
> but this seems wrong to me;
> * First there are no updated drivers for older clients
> * Isn't the idea of CUPS as a printer spooler to separate
>   the client from the printer so that we can use classes etc
>   to direct output without the clients knowing?

You may have a look at my generic but rather old article
https://en.opensuse.org/SDB:Printing_from_Windows_to_Linux

In general it should be still valid in particular for
older Windows versions but some things have changed
meanwhile, e.g. in CUPS 2.3 the cupsaddsmb program
has been removed, cf.
https://github.com/apple/cups/issues/5449

By the way FYI:
Current CUPS upstream is no longer
https://github.com/apple/cups
and
https://www.cups.org
but nowadays it is
https://github.com/OpenPrinting/cups
and
https://openprinting.github.io/cups


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Ivo Totev
