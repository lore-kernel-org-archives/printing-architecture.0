Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=WzGSdfEX9dEzQ50N+9obwxflpBUVIbgHshLcOLMAdLk=;
	b=RlZ27mE9vldzUhUzjtguX9JbhqP6Enqv4a8i4D1S8Y8QuETwkm9KZ2YjiXsmXZnyMQ
	Os0lJTbpfqspZD9aKjkxRdwTtQt3FmEcOchauznXBUeM2O3E1i19KsksVRQDMD41MNsG
	BpYRMZhWQSs3CxT2UO0qnSMPjTVDrU/PBfzFCFigSSVYktjqSiQqAK4ipSUCDmMT30kd
	lqtZXMfWu1XXEHnpnTo+AX2DpoUF7t1KKNmewZRozXZfOrBAUUR+n5ce7CHSJocg09wq
	rLEwQz4u9kCk6gzwfbQw7bxkvoYD28HUMV1Y5rHpgNOEY0i6B3zofXuY2WYVrrcAtd/S
	nRBQ==
Message-ID: <1513184881.2462.20.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 13 Dec 2017 18:08:01 +0100
In-Reply-To: <1404294158.28244.1.camel@pascal.home.net>
References: <1404294158.28244.1.camel@pascal.home.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS and PPD
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


Hello!

I'm not sure this is the right list, if not please let me know.

I've seen that the CUPS PPD API is being deprecated, so I'm trying to
move away from it.

But for the MediaType list I cannot find a way without PPD API.
Currently the code is something like:


  const char *PPDFile = cupsGetPPD(printer_name);
  ppd_file_t *ppd = ppdOpenFile(PPDFile);

  if (ppd)
  {
      ppd_option_t *opt = ppdFindOption(ppd, "MediaType");

      if (opt)
      {
        ppd_choice_t *choice = opt->choices;

        for (int k=0; k<opt->num_choices; k++)
        {
          ... use choice->text here ...


What would be the equivalent without using the PPD API?

Any pointer appreciated as I've not found a solution at this stage. I'm
sure I'm just missing something obvious...

Thanks,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
