Message-ID: <48C56BE3.3060204@gmail.com>
Date: Mon, 08 Sep 2008 20:16:03 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080905210001.FA10.TORATANI.YASUMASA@canon.co.jp>
	<48C4916D.9010800@fujixerox.co.jp>
In-Reply-To: <48C4916D.9010800@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	Sept. Meeting Minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Cc: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>

Thank you, Mihara-san.

I forward your translation to the printing-architecture mailing list, 
for further discussion on tonight's OpenPrinting Steering Committee telecon.

    Till

Osamu MIHARA wrote:
> Hi, Here is the translation of the meeting minutes.
> --
> OpenPrinting Japan Sept. Meeting Minutes
>    4th Sept. (thu) 14:30 - 17:00
>    at The Linux Foundation Office in Kioi-cho, Tokyo
> 
> Attendee
>    Kunai, Osonoi (Linux Foundation)
>    Kanji, Otani (BBR)
>    Miyata, Ishii, Olaf (Avasys)
>    Saito (NEC Soft)
>    Ogasawara (Richo)
>    Yamagishi (Turbolinux)
>    Toratani (Canon)
>    Mihara (Fuji Xero)
> 
> Agenda
>    (1) Action Item follow up
>    (2) Action Items from Tokyo Meeting (with Till) follow up
>    (3) CPD
>    (4) PDF filters
>    (5) Linux Foundation Web Materials
>    (6) Joint Meeting with PWG
> 
> Minutes
> (1) Action Item follow up
> 
> o PDF with DRM issue (Otani-san will report details to Kunai-san)
>    -> Kunai-san contacted to Jim, and Jim contacted Adobe.
>    -> A contact person is assigned.
>    -> Will wait for Till to contact with the person.
> 
> (2) Action Items from Tokyo Meeting
> 
> o PPD extensions:
>   - Improve Dialog Localization. Currently we can only translate text into a
>         given language. Localization for icons and localization by 
> region was
>         suggested.
>     -> no progress.  Mihara to confirm CUPS implementation of locale.
>     -> CUPS already supports language and region (country) locale.
>     -> So, CPD should follow the globalization rule by CUPS.
> 
>   - Add Extra Wiki page for fallbacks when using old PPDs.
>     -> Description for fallback seems to be added.  Each vendor should 
> check it.
>     -> Closed.
> 
>   - Otani/Olaf contact to get libpoppler-dev fixed (Ubuntu, Fedora, 
> Debian, SUSE, RedHat, Mandriva)
>     ->  Bug has repored to RH and waiting for the response (Olaf)
>         (The problem may be recognized, because it is OK with Fedora 9.)
>     -> Re-packaging of OPFC PDF filter is not done yet (Otani)
> 
>   - OpenPrinting DB Rating system: Split user/vender rating, clarify 
> criteria
>     -> Ask Till Again
>     -> Remains as a "Concern Item"
> 
>   - Server should not be in US. It must be moved to other country
>     -> Issue with software including cryptgraphy or software patent
>     -> Current system has means to designate servers, so vendors can
>        change to their own server.  But as long as the main server
>        locates in US, we cannot avoid such kind of software are uploaded
>        to the server by communities.  It may causes disadvantages on The
>        Linux Foundation.
>     -> Kunai-san to check regal possibilities and counter measures.
>        (May after the Adobe issue...)
> 
> (3) CPD
>    - API design, coding completed.
>    - KDE dialog implementation completed.
>    - GNOME dialog is not done yet.  May completed by this fall.
>      (1-2 more months)
> 
> (4) PDF Filters
> 
> o Separation from libpoppler source tree.
>    - Separations of pdftopdf, imagetopdf and pdfraster are completed
>      -> They are put to Ubuntu as patches on CUPS package.
>    - textopdf, pdftoijs are completed.
>      -> included in Ubuntu.
>    - pdftoopvp is difficult to separate from libpoppler.
>      Current configuration (pdftoopvp including poppler source) is
>      rejected by Ubuntu by maintenance reason.
>      -> Problems:
>         1) Pattern fill of interior of characters is enhanced.
>         2) Other enhancement to support opvp *raster*
>         3) splash functions are modified.
>         (Those modifications are scattered over the poppler source tree)
>      -> Conclusion:
>         Drop 1) and 2), import splash function into filter source tree.
>         As to the actual implementation work, wait for the spare time of
>         Otani-san.
>      -> Color Management currently discussed in ML
>         May be future feature.
> 
> (5) Web Matrials
> 
>    - Osonoi-san have plan to organize and enhance web pages of The Linux
>      Foundation Japan.
>        - Add Japanese Translated pages from LF site (such as driver
>          download).
> 
>    - Needs update OpenPrinting/APAC Page
> 
>    - Score Card (rating) page should be deleted from LF site.
>  
> http://www.linuxfoundation.org/en/OpenPrinting/Database/SuggestedPrinters
>  
> http://www.linuxfoundation.org/en/OpenPrinting/Database/LinuxSupportByPrinterVendors
>      (They are personal and informal opinion and not appropriate as
>       information from The Linux Foundation.)
> 
> (6) Joing Meeting with PWG
> 
> - Glen, Till and George may attend the meeting if it is held in
>    Lexington.
> 
> - No member from Japan can attend it.
> 
> Action Items
>    - Confirm status to Till about Adobe PDF issue (Kunai)
>    - Study US Server issue (Kunai) -- may after Adobe issue
>    - Ask Till to delete Score Card (rating) pages (Kunai)
>    - Confirm local implementation of CUPS (Mihara)
>    - Check CPD status (all)
>    - Modify pdftoopvp to separate from poppler source tree (Otani)
>    - Translate minutes to English and post it (Mihara)
>    - Inform SC that Japan member cannot attend the Lexington Meeting
>      (Toratani)
> 
> Concerned Items
>    - OpenPrinting DB Rating system: Split user/vender rating, clarify 
> criteria
> 
> Next Meeting
>    Oct. 9 (thu) 14:30
>    at The Linux Foundation Office in Kioi-cho, Tokyo

