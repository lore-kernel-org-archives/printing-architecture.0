Message-ID: <49C86A62.40202@fujixerox.co.jp>
Date: Tue, 24 Mar 2009 14:06:42 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <00a101c9a88b$3874d0b0$9e72150a@nsl.ad.nec.co.jp>
In-Reply-To: <00a101c9a88b$3874d0b0$9e72150a@nsl.ad.nec.co.jp>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="------------enig788867CC03DAD786F3EF1D5C"
Subject: [Printing-architecture] [Translation] OpenPrinting Japan Mar. 2009
	meeting minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig788867CC03DAD786F3EF1D5C
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Meeting Minutes of OpenPrinting Japan Mar. 2009
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[Date & Place]
  3/19/2009 14:30-16:45 JST
  The Linux Foundation Japan Meeting Room

[Attendees]
  Kunai (TLF), Olaf (Avasys), Otani (BBR), Ogasawara (Ricoh),
  Toratani (Canon), Mihara (Fuji Xerox)
  Miyata (Canon), Saito (NEC Soft)

[Agenda]
- Action Items Follow Up
- Open Source Conference Tokyo Feedbacks
- Printing related module issues of LSB Sample Implementation
- Agenda for OpenPrinting Summit

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 Action Items Follow Up
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- CUPS 1.4 Localization - DONE (Mihara)
  Prefix keywords, which should no be translated, were translated and
  failed  to be committed.  Those were fixed and already incorporated
  into the repository.
  ML (transcups@...) is described as translator address in the pot file.

- Driver redistribution agreement (All)
  no progress -- waiting for the draft agreement

- Investigation of PDF filter performance issue (Otani)
  It takes time in image processing.  Continue investigation.

- Report GS crash in the performance test (Mihara)
  Not yet.

- Comments on Agenda for Collaboration Summit (All)
  Review later in this meeting.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 OSC Tokyo Feedback
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- Approx. 10 audiences on Otani's printing track.
- "Form Printing Application Vendor" are attended.  Can be seeds for
  future printing activity if there were some shortages in Linux
  printing environment.
- One question - "Can we use same printer driver as Mac OS X?"
  The answer is that it difficult as the rendering engines are
  different.
- "Printing support is possibly one of the bottleneck in introduction of
  Desktop Linux".

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 Printing related module issues of LSB Sample Implementation (SI)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- Non standard devices and API's are included in the SI.
  -- "should be stripped"
- GS can be configured in "configure" options
- APIs which are not in the LSB Spec should be "internal API."
- AppChecker can be used to check tool
- Need to comment on the working team that APIs should be hided but
  remained.
- GS 8.64 is much better that previous version, although LSD does not
  specify the GS version.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 Agenda Review for OpenPrinting Summit
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- SORRY JAPANESE MEMBERS CANNOT ATTEND ---

- Automatic download
  Can we reach to final agreement???

- Driver Validation

- Color Management
  Color management in GS seems to be changed.
  We can expect the explanation of new color arch.
  Color management should be discussed in system wide.

- Printing part of appllications
- Common Printing Dialog
  Discussion on how we promote new printing schemes such as PDF workflow
  and CPD, incorporating in applications.

- LSB Joint session
  Uplift to CUPS 1.2 API. (As RHEL5 supports 1.2 at this time)

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 Action Items
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- Investigate Driver redistribution agreement, when it became available
(All)
- Report GS crash in the performance test (Mihara)
- Post comments on LSB SI Issue (Saitou)

[NEXT]
  4/22/2009 14:30-
  at The Linux Foundation Japan Meeting Room


-- Osamu MIHARA // Fuji Xerox Co., Ltd.


--------------enig788867CC03DAD786F3EF1D5C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAknIamYACgkQ1F4wTK6FUcLHNgCfZdQ9Y7h9jw5Ys1tf34//RkvO
vWsAoMP+jPwid7EUKhFuBB6/MkS/YnvA
=0oqI
-----END PGP SIGNATURE-----

--------------enig788867CC03DAD786F3EF1D5C--
