Return-Path: <till.kamppeter@gmx.net>
Message-ID: <4475BF00.609@gmx.net>
Date: Thu, 25 May 2006 16:28:16 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Notes of today's telecon
References: <4474E38B.5030102@gmx.net>
In-Reply-To: <4474E38B.5030102@gmx.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

Here is the link to Giuseppe Ghib=F2's posting on dektop_printing which
was mentioned on the call:

http://lists.osdl.org/pipermail/desktop_printing/2006/000744.html

It is mostly about following issues of hardware and their manufacturers:

- Linux/free software drivers for Hardware models appear only late after
  the model appears on the market. Often the model is already
  discontinued when the driver appears.

- Firmware is not built in any more into the hardware (on an EEPROM) but
  has to be uploaded every time one turns the device on. This requires
  to have a piece of proprietary software (the firmware file) on the PC
  and so the device cannot run out-of-the-box with free downloadable
  distros.

   Till





Till Kamppeter wrote:
> Oi,
>=20
> here are some notes of what we talked about and what we agreed on today.
>=20
>=20
> Participants
> ------------
>=20
> (I hope I did not forget someone)
>=20
> Ira McDonald
> Glen Petrie
> Norm Jacobs
> Wendy Philips
> Claudia Alimpich
> Ian Murdock
> Till Kamppeter
>=20
>=20
> Directory structure
> -------------------
>=20
> In principle we agreed on what we had worked out last week, but there
> are following additional points:
>=20
> - PPDs should be in directories with language tags, multi-language PPDs
> in a special one, preferrably named "mul":
>=20
> /usr/share/ppd/<supplier>/en/
> /usr/share/ppd/<supplier>/fr/
> /usr/share/ppd/<supplier>/mul/
> ...
>=20
> - Actual printing systems (like CUPS) should access the files via
> symbolic links, if possible one link for the whole directory, supplied
> by the distro's package of the printing system. For the PPDs for example
> CUPS would only need one link:
>=20
> ln -s /usr/share/ppd /usr/share/cups/model/vendor-ppds
>=20
> Individual links only if really needed.
>=20
> Remark (we did not mention this on the call): Reference to driver in the
> PPD (for example in "*cupsFilter" line) can have absolute path, so one
> would not necessarily need the driver to reside in /usr/lib/cups/filter/.
>=20
>=20
> linuxprinting.org as central resource
> -------------------------------------
>=20
> - Not all printer manufacturers are comfortable with uploading their
> drivers/PPDs to a central, external place like linuxprinting.org. To
> still have linuxprinting.org being a central place to which you supply
> make and model info from the device ID and getting returned a working
> driver, we would accept nachine-readable links from the manufacturers
> suppliers, so that a printer setup tool could automatically download the
> driver. We will not accept links to interactive download dialogs like
> 'go to www.fooprinters.com and then click "Drivers" and choose your model=
'.
>=20
> - linuxprinting.org is moving to FSG. I will soon get a root server
> there and then start the activities to move it over. Then
> OpenPrinting.org and linuxprinting.org activities can get more closely
> together or we even join.
>=20
>=20
> LSB Face to Face next week
> --------------------------
>=20
> We must work out here on the list what I will present next week. What to
> suggest for LSB 3.2, what for 4.0. Slides need to be created.
>=20
> - For 4.0 we should try to get a complete picture of FSG OpenPrinting
> standards: PAPI, JTAPI, OPVP, PCM, SM, ...
>=20
> - For 3.2 the most important are the directories we have agreed on.
> Should we also require existing CUPS (1.1.x, 1.2.x?) and GhostScript
> (with "cups", "ijs', "opvp" devices) infrastructure? Should we already
> suggest PAPI?
>=20
> We agreed on starting the discussionhere on printing-architecture and
> then when we have put something together to cross-post it onto
> desktop_printing.
>=20
> Last-minute updates I can take up to the evening of May 31, Boston time.
>=20
>=20
> Next printing-architecture phone meeting
> ----------------------------------------
>=20
> There is no meeting on May 31.
>=20
>    Till
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architec=
ture
>=20
>=20

