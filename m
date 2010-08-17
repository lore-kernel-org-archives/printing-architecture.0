Message-ID: <4C6A2D99.8020703@gmail.com>
Date: Tue, 17 Aug 2010 08:35:05 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] ANNOUNCE: Foomatic 4.0.5 released!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-foomatic@lists.linux-foundation.org" <printing-foomatic@lists.linux-foundation.org>, Open Printing <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>

Foomatic 4.0.5 is released and now available for download [1].

This release fixes several bugs which got reported to us in the past 6 
months.

foomatic-rip now errors out on any problem instead of continuing or 
silently exiting, fixed-size string buffers are enlarged and causes for 
segmentation faults eliminated, '0' as a placeholder for the custom 
value in the prototype for a custom option actually works now, custom 
option settings embedded in PostScript input work now also without the 
initial comment containing the value, and remainders of the libgs time 
are removed from the documentation.

foomatic-db-engine got updated to fit to the newest changes and 
requirements of the OpenPrinting database on our web server, especially 
links to signature keys of downloadable packages are now supported, XMLs 
generated from PPDs do not reference to the removed driver entry 
"lj5mono" any more, and fixes on the build system and the man pages got 
done.

Thanks to everyone who reported bugs to us (or to their distributions) 
or sent feature requests.

Have a lot of fun with the new Foomatic release!

    Till


[1]https://www.linuxfoundation.org/collaborate/workgroups/openprinting/database/foomatic

