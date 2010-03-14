Message-ID: <4B9D0D69.9030501@bredband.net>
Date: Sun, 14 Mar 2010 17:23:05 +0100
From: Per Hermansson <hermansson.per@bredband.net>
MIME-Version: 1.0
References: <20100305095257.9953.E0F122DE@canon.co.jp>	<4B90ECFA.1030506@gmail.com>
	<4B943B74.8060602@avasys.jp> <4B9CEECF.4050401@gmail.com>
In-Reply-To: <4B9CEECF.4050401@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
 Mar. 2010 meeting minutes (in	English)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

On 2010-03-14 15:12, Till Kamppeter wrote:
>> The compile errors are due to the dialog using GTK+ API that is not yet
>> available in the versions that are in Debian GNU/Linux 5.0.4, the latest
>> stable release.  This release only has GTK+ 2.12 (and GLib 2.16).
>> A new Debian release should come out this year and will have at least
>> GTK+ 2.18 (GLib 2.22).
>>
>> Whether you want to fix that basically boils down to what minimal
>> version of GTK+ you want to go with so I'll leave that up to you.
>>
>> What I would suggest fixing though, is documenting/checking/enforcing
>> your build requirements.
>>
>> Just in case, a `make -k` build log for r137 has been attached.
>>      
> Lars, can you update the documentation of the dialog package (README,
> ...) telling which versions of libraries are exactly needed for the dialog?
>
> Olaf, can you try with a newer distribution, like Ubuntu Karmic or newer?
>
>      Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>    

Hi all
I merged a fix that removes the reference to GFile with 
g_path_get_basename which seems to exist in GLib 2.16
so that compile error shouldn't exist anymore.
Hopefully it works with 2.16 now, but I haven't tested it.

/Per Hermansson
