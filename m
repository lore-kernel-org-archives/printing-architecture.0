Message-ID: <4A8BCD1C.9010500@gmail.com>
Date: Wed, 19 Aug 2009 11:59:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Google Summer of Code 2009: The CUPS
	backend for Oyranos
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I asked on the OpenICC list (and also Kai-Uwe Behrmann personally) for 
the status of the Oyranos CUPS backend GSoC project. Here are Kai-Uwe 
Behrmann's (not so positive) answers:

On the list:

-------------------------------------------------------------------------

Hello,

The CUPS backend for Oyranos has some first functionality implemented. 
But it is fragile in the current stage. We hope to can install it with 
the other Oyranos modules at some time. That greatly depends on, when 
someone will find time to work on this backend.

Currently the backend is able to read one "cupsICCProfile" entry and try 
to get that as a local or a remote profile. As far as the PPD 
preconfigured "cupsICCProfile" approach goes that might be a good start.

What I do not know is, how to distinct the colour related PPD options 
from the non relevant to make selection dependent on say "gamma" but not 
on "paper size". Would you know a way how to select ppd_attr_t 
attributes according to their influence on colour?


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management www.behrmann.name + www.oyranos.org


Am 19.08.09, 09:55 +0200 schrieb Till Kamppeter:
 > I want to ask about the outcome of the GSoC project about a CUPS
 > backend for Oyranos, to be done Joe Simon. How far did it go? is it
 > completed or at least nearly completed? Will it get part of Oyranos?

-------------------------------------------------------------------------

Off-list:

-------------------------------------------------------------------------

 > How well did Joe do his work? Did he work continuously during all
 > three months of the GSoC? Did he succeed mid-term and end-term? Will
 > he continue to develop and maintain the Oyranos CUPS backend?

While we had very good experience with Joe in the last two years. So we 
had the biggest hope in his come back. Just this year was clearly and 
unforeseealy not so good for him and the project. Even though he tries 
to get the project particially done - the KolorManager part. If he get 
that, I am all for to let him pass this last border. He is working on 
KM. His commitment was practical zero outside of GSoC in the past. I do 
not know if that can change.

The backend is already in Oyranos git. So I will stress to get it in a 
reasonable shape together with the others. These are the Xorg/osX, SANE 
and CUPS ones. About the libraw one, we must decide how that goes.
Unfortunedly I have not so much time at the moment to work on Oyranos.

Kai-Uwe

-------------------------------------------------------------------------

    Till
