Return-Path: <bandali@canonical.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E391834D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1942D833B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1693498357;
 bh=lvAfRnAlffWZAn+xRIXTeJvwLbhEu2QV18th3V+nz50=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
 MIME-Version:Content-Type;
 b=K/CT9WiK1zAFgWeKSSG3O2K67CnBCtKWX+VhVC/R9u1SmtS2Ng5Rk2eW3WUhMQ78D
 Z1qxwXCvvQ5aadgL94zMJSVbuzEkCGX4zNdio/KA0XILwalHxSpJc4ax6gJtW0FUNJ
 BDhDuvEmGS9Nv6cMNuQlIbwWYYWEpTql4m6Hpme4KO4kjXxvoFKZXHy2WV5MmSbkeJ
 x/SeEBQwQMRwaYMS2qTAPDEs5oj6mgNptZGwtF5ArVw4dx6wxHi44FLWxbTbk6icbY
 di1JasAa7aDTOPdAijAtdIK/hvperPFW3m8jTpqFyQQ0jfIHOneYUWuDaCXd6ARnbA
 5JBnDOy+RYL9Q==
From: Amin Bandali <bandali@canonical.com>
In-Reply-To: <928cbe8b-1c02-2593-f446-6141631490a9@gmail.com>
References: <928cbe8b-1c02-2593-f446-6141631490a9@gmail.com>
Date: Thu, 31 Aug 2023 12:12:30 -0400
Message-ID: <877cpbjimp.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] OpenPrinting - Documentation urgently
	needed!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Heather Ellsworth <hellsworth@protonmail.com>, Sahil Arora <sahilarora.535@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Monica Madon <mayhens@gmail.com>, Mohit Verma <b20215@students.iitmandi.ac.in>

Hi Till, (all,)

I'm interested in helping out with the docs, particularly developer
docs.  I recently asked my manager if I could spend some of my time
helping with this, and essentially he said yes, depending on the
workload and the priority of my other tasks at hand at a given time.
Later on I hope to spend time on this outside work as well, as soon as
my schedule opens up a bit more.

I'll start by taking some time to skim through the library functions
for the libraries Till mentioned, and try to get a lay of the land.
If folks have any suggestions or tips about which library and/or what
modules specifically may be good places to start, I'd appreciate the
advice.

Best,
-a
