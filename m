Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596536362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=E+lYFpgIL24UB1HrOvUvIEQ/yJ0gM+P4GscHhWxyZzQ=;
 b=IgMwxhxAUSERTS2wziAZmKyVwHLpa93FL7FUxtIh1Ajk56e2Tg40YMl8mdCNgUAgWNtFuk
 A9W6TrDjOO6FJMTXKW8TMgVg617JEL9bNoSGVfG+a9LOkHT8ZPW8TEEQBevNT1ZCPUcX8P
 LLQgVlRuPZ23T6ukezO8bm+ZiJqb9Bc=
References: <304a299b-b4d8-2553-7e65-31e2cda6156c@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <a0b417ce-0e4d-1f18-f755-4b94d2ad61f0@redhat.com>
Date: Tue, 4 Aug 2020 12:19:10 +0200
MIME-Version: 1.0
In-Reply-To: <304a299b-b4d8-2553-7e65-31e2cda6156c@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="tzE1KAwpgfdBR8KxXz0FyjsDAz3QtfMFS"
Subject: Re: [Printing-architecture] Filter Functions - Getting years of
 development in cups-filters into Printer Applications
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
Cc: printing-architecture@lists.linux-foundation.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--tzE1KAwpgfdBR8KxXz0FyjsDAz3QtfMFS
Content-Type: multipart/mixed; boundary="AiTAnsVJc7Ye1vTLILv4zW9RLpWFsNqbS"

--AiTAnsVJc7Ye1vTLILv4zW9RLpWFsNqbS
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi Till and Mike,

thank you for your work on printer applications!

I have concerns about printing performance with filter functions instead
of the current filtering, which uses separate executables.

Since PWG 2018 in Sunnyvale IIUC the idea for printer applications is to
provide IPP everywhere support for devices which don't support IPP
Everywhere by default and users will not need to buy a new device just
because PPD support will be removed.

I would say most users of printer applications will be people/groups,
which don't want to or cannot (due high expense of replacing hundreds of
devices) replace their devices, so they will print via printer applications=
.

Then groups like printing enterprises usually print many jobs at the
time, so any delay due waiting for output of filtering function can have
bigger impact on printing process.

Isn't it possible to stay with external executables in printer
applications? Or the performance will be even better than the current
filtering?

Thank you in advance and have a nice day,

Zdenek

On 8/3/20 3:27 PM, Till Kamppeter wrote:
> TL;DR: Another step towards cups-filters 2.0: Filter functions
>
> Hi,
>
> we are currently in the middle of the development of the new concept
> for printer and scanner drivers, the Printer Applications. Thanks to
> Michael Sweet for introducing this concept and for creating the base
> library for Printer Applications, PAPPL:
>
> https://github.com/michaelrsweet/pappl/
>
> Also thanks for all the contributors, especially our GSoC students.
>
> A first example of a PAPPL-based Printer Application got posted:
>
> https://github.com/michaelrsweet/hp-printer-app/
>
> Looking into it I have started thinking about how to create Printer
> Applications to port classic printer drivers (consisting of filters
> and PPD files) and PostScript PPDs (special case of classic printer
> drivers) into Printer Applications.
>
> See also the former threads here:
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2020/th=
read.html
>
>
> Printer Applications: Retro-fitting classic drivers:
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2020/00=
3823.html
>
>
> PostScript printers without PPD files?:
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2020/00=
3826.html
>
>
> Canceling jobs in Printer Applications:
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2020/00=
3831.html
>
>
> The Printer Application for PostScript printers has to output
> PostScript, with code snippets from the PPD file embedded and the
> PostScript generated primarily from PDF as applications usually send
> jobs in PDF and going through an interim Raster state would make
> everything very awkward and also cause problems on older PostScript
> printers.
>
> So the Printer Application has to accept PDF as main input format and
> turn it into PostScript, then embed the code snippets from the PPD.
>
> On this process we have worked and optimized for years, in the
> cups-filters project, especially flatten filled in forms and
> annotations in PDF input files, work around many PostScript
> interpreter bugs in printers, assure correct page geometry for the
> output, printing only selected pages, reverse order, number-up, ... So
> the best is to use the filters of cups-filters or at least their code
> also in Printer Applications.
>
> But Printer Applications have a different filter concept than CUPS,
> having one filter turning the input data in printer-ready output, this
> done by a function in the code of the Printer Application, in contrast
> to CUPS which calculates a chain of filters needed for the job and
> calls these as external executables.
>
> Therefore I have started working on a new filter concept for
> cups-filters 2.0 (coming soon), the filter functions. The plan is to
> turn every filter into a filter function, available in libcupsfilters.
> The functions have a common interface and a common data structure to
> supply job and printer properties to them. Additional functions will
> be created to call a given chain of filter functions or to find out a
> suitable filter chain for a given job.
>
> To continue support for CUPS wrappers will be supplied which allow the
> call of each filter by the usual external executable in
> /usr/lib/cups/filters/.
>
> You find a working example in the GitHub of cups-filters;
>
> https://github.com/OpenPrinting/cups-filters/
>
> The filter functions reside in the libcupsfilters library. All
> definitions regarding them you see in the cupsfilters/filter.h file:
>
> https://github.com/OpenPrinting/cups-filters/blob/master/cupsfilters/filt=
er.h
>
>
> The filter functions have the following properties:
>
> - They take an input stream and produce an output stream, specified by
> file descriptors
>
> - They take all printer and job properties in a data structure
> (filter_data_t), in case of chaining filters each filter is supposed
> to get the same structure
>
> - Job and printer properties can be supplied as IPP attributes but
> also with option lists and PPDs (for retro-fits), dpending on what is
> more suitable
>
> - They are all called with the same scheme (filter_function_t), so one
> can simply put together chains of these functions by supplying an
> array fo filter functions to a filter chain execution function (not
> yet implemented).
>
> - Logging is done through a callback function (filter_logfunc_t), so
> it can be easily adapted to the environment.
>
> As a working example and as part for a PostScript printer support
> Printer Application I have converted the pstops filter of CUPS into
> the filter function pstops(). See cupsfilters/filter.h,
> cupsfilters/pstops.c, an cupsfilters/filter.c:
>
> https://github.com/OpenPrinting/cups-filters/blob/master/cupsfilters/filt=
er.h
>
> https://github.com/OpenPrinting/cups-filters/blob/master/cupsfilters/filt=
er.c
>
> https://github.com/OpenPrinting/cups-filters/blob/master/cupsfilters/psto=
ps.c
>
>
> The behavior of the function is exactly the same as the original
> filter, I only changed its interfaces for input, output, and logging.
>
> I also created a logging function for CUPS logging (cups_logfunc()),
> so that if the filter function is used for a CUPS filter one easily
> gets the logging needed by CUPS,
>
> Making a CUPS filter from a single filter function is easy. See the
> wrapper which I have made for pstops(), filter/pstops.c:
>
> https://github.com/OpenPrinting/cups-filters/blob/master/filter/pstops.c
>
> Note that this filter does not get compiled and installed by default,
> so that the standard installation of cups-filters does not clash with
> CUPS. To try it out you need to run
>
> ./configure --enable-pstops
> make
>
> Note that this pstops filter needs the current libcupsfilters, as its
> "dirty work" happens there.
>
> I have also modified the pdftops filter which used to call pstops of
> CUPS as an external executable, Now it calls the pstops() filter
> function instead, which made handling of options much easier.
>
> My plans are to get all the filters of cups-filters turned into filter
> functions, to make cups-filters an easy-to-use filter repository also
> for Printer Applications.
>
> Non-PPD-only filter functions (probably all except pstops and
> foomatic-rip) should also work with only IPP-based job and printer
> properties.
>
> In addition I want to add more conditional compiling and ./configure
> options to make special lightweight builds of cups-filters for Printer
> Application Snaps, for example leaving out all PPD-dependent (which
> uses libppd), all QPDF-dependent, Raster-only Printer Application, ...
> and naturally also leaving out cups-browsed.
>
> Any contributions are highly welcome.
>
> =C2=A0=C2=A0 Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--AiTAnsVJc7Ye1vTLILv4zW9RLpWFsNqbS--

--tzE1KAwpgfdBR8KxXz0FyjsDAz3QtfMFS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl8pNh8ACgkQFapqf01C
J9fV5Qf+MoHUT6DAAqEKM3ZLr7wuF0a3fb/9/KAmMsuZIrnDlWyGWWl68Lis/zs/
a8itoZHWTDaSoTmb+XAx4tBH0Jci0eA1GZAzBQV8ZoqCiMu25+MsLVfra32YDQow
1Kslws+2XyhK7IYaMfj0yYH3eyCeZSkqj2D0TTTiTgCN1rWNeII4E8XQNeH6eUxc
MO7IzdoD6oguDtQTP4ZzD0078uF+bYyzWN/XE0DAeH/V1xccZ6lkiUveiCSchbtU
YRqIovzErvxEkRttzeOntTnrUz8UlSpwDyuiQqcvLPMx8qs1XnuAHAxy1ICYZPJi
YfaBwiIn40aZXkeLIBzoe/X45qWPmQ==
=C0Dg
-----END PGP SIGNATURE-----

--tzE1KAwpgfdBR8KxXz0FyjsDAz3QtfMFS--

