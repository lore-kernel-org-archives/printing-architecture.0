Message-ID: <4843D071.4090400@gmail.com>
Date: Mon, 02 Jun 2008 12:50:25 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080602191745.C1C1.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20080602191745.C1C1.TORATANI.YASUMASA@canon.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Fw:  Proposals to LSB 4.0
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, lsb-discuss@lists.linux-foundation.org

TORATANI Yasumasa wrote:
> Hi Till and OpenPrinting Japan members,
> 
> When we had the OpenPrinting f2f meeting in Tokyo on Apr 3rd, 
> we discussed the "Printing and the LSB 4.0" requirements.
> 
> Attendees at the meeting were;
> Miyata (Avasys),
> Olaf (Avasys),
> Kanjo (BBR),
> Otani (BBR),
> Chigusa (Ricoh),
> Ogasawara (Ricoh),
> Saitoh (NEC Soft)
> Mihara (FUJI XEROX),
> Owa (FUJI XEROX),
> Uoshima (FUJI XEROX),
> Sekiguchi (Konica Minolta),
> Toratani (Canon)
> Kunai (The Linux Foundation),
> 
> And the results of the discussion were as following.
> (To Japan side members: Please add/modify the comment if you need)
> 
> - LSB 3.2 Printing specification defines "At least the following devices must be
> present: cups (CUPS Raster), ijs, pxlmono, pxlcolor, and opvp (OpenPrinting Vector). "
> http://refspecs.linux-foundation.org/LSB_3.2.0/LSB-Printing/LSB-Printing/gs.html
> We believe that LSB 4.0 should be upper compatible with LSB 3.2, and LSB 4.0
> should include all the above Ghostscript devices.
>

Yes, that is the case. All printing requirements for LSB 3.2 are also 
valid in LSB 4.0.

> Additionally, we've defined the new OpenPrinting Vector specification and have
> already developed and tested the new Ghostscript device "opvp" which is
> *compatible* with the former "opvp". See page 3 and 4 of the slide;
> https://www.linux-foundation.org/images/4/43/LFSummit-2008-OPWGJapanActivities-OPVP-Final.pdf
> Same test suiete can be used for the new "opvp" testing, thus we believe
> there is no problem that LSB 4.0 has the same definition as LSB 3.2 which
> includes the Ghostscript "opvp" device.
> 

Yes. No problem here.

> On the other hand, if LSB 4.0 will define more detailed API of each devices,
> including ijs, pxlmono, pxlcolor and opvp, we should consider when most Linux distros
> will include Ghostscript which includes the new "opvp" device which is based
> on the new OpenPrinting Vector API. We discussed this issue, and our conclusion
> at the f2f meeting was, from the view point of the LSB 4.0 time schedule, a few
> major Linux distros may include the new Ghostscript, but *not* enough time for
> most distros, and thus, the detailed OpenPrinting Vector API will not be able to
> be included in LSB 4.0.
> 

I think so. LSB 4.0 is based on the same versions of enterprise distros 
as LSB 3.2. So no uplifts of the versions of required components can be 
done.

> - We still develop printer drivers which can work under CUPS 1.1 and 1.2 for
> backward compatibility. We are glad if CUPS 1.2 will be included in LSB 4.0,
> on the other hand, we do not have a strong requirement that LSB 4.0 should
> include CUPS 1.2.
> 

In LSB 4.0 CUPS 1.1.x is still the reference, but this time the full API 
(not only the Convenience and Raster APIs) is required. Exception are 
interfaces which got dropped after CUPS 1.1.x. These will not be 
required by the LSB.

> - We are not sure LSB 3.2 defines the "Path to store the PPD files".
> If the path is not defined clearly in LSB 3.2, we strongly request that
> LSB 4.0 should define it.
> 

I did not see it in the LSB specs. Can someone check whether it went 
inyo the FHS (File system Hierarchy Standard) specs? Otherwise we must 
add it in LSB 4.0.

> - For SANE, we worry about that the project roadmap of SANE.
> Actually, we are preparing many drivers under SANE, however, we are not sure
> SANE2 will replace the genuine SANE interface in the near future with keeping
> the backward compatibility. If the new SANE interface will not keep the
> compatibility with today's SANE, and if most Linux distro will switch from
> today's SANE to the new SANE and will not support today's SANE in the near
> future, from the view point of LSB backward compatibility, we should consider
> to postpone to include the SANE in LSB 4.0.
>

Do not worry here, they are talking a lot about SANE2 on the SANE 
developer mailing list, they did it for years, but they never came 
around for really implementing it. Now they are doing a 1.1, a polish-up 
for SANE1. So SANE1 will be the standard for more time.

    Till

