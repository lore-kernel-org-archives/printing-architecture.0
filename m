Message-ID: <4DDA0E26.501@fujixerox.co.jp>
Date: Mon, 23 May 2011 16:35:02 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <20110121130357.CA6D.5F9CA008@canon.co.jp>
	<20110223085841.5F9D.5F9CA008@canon.co.jp>
In-Reply-To: <20110223085841.5F9D.5F9CA008@canon.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Meeting Minutes - OpenPrinting Japan Mar.
	2011 meeting
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

I'm sorry to forget the minutes for the last meeting in Japan.

Meeting Minutes - OpenPrintig Japan Meeting in March 2011
March 3rd, 2011 15:00-17:00 @ Fuji Xerox Yokohama Minatomirai Office

Attendee - Miyata (Canon), Ishizaka (NEC Soft), Nishihara, Chigusa (Ricoh)
Otani, Kanjo (BBR), Mihara (Fuji Xerox)

1. Action Item Follow-ups

- Oost result of vector spec confirmation (mihara) - not yet
- Update OPFC Web site (toratani) - not yet

2. Topics

(1) Glue Code for Ghostscript (Otani)

Problems:
- Glue code crashes in color management processing for Ghostscript 9.x.
- Performance degradation with complicated paths

=> Otani-san had sent patches for both problems to Till-san.  It should
be applied from version 9.03.
   The fix is already committed to gdevopvp.
   A package for Ubuntu 10.04 with the fix for performance degradation
can be download from opfc site.

(2) PDF filter

We'd like to commit it to CUPS Trunk!

- Apple says it needs contributor agreement.
　http://www.cups.org/AppleContributorAgreement_2011-03-10.pdf
- Not only BBR, but also AXE, Poppler maintainer and XPDF authors are
license holders.
- BBR : Kanjo-san and Otani-san
  AXE - Mihara will contact
  Popper maintainer and XPDF authors - need confirm with Mike (at least
Otani-san needs to confirm if Mike contact them)

---- Japanese -----
■GhostcriptのGlue Codeの件（大谷さん）
・gs 9.x で動かないことがある（カラーマネージメント関連で落ちる）
・複雑なパスで性能が落ちることがある。
→ 双方の修正コードを Till に送付ずみ、gs 9.03 から適用されているハズ。
　gdevopvpにはコミット済み。
　複雑なパス対応は Ubuntu 10.04 用のpackageをopfcにサイトに掲載した。

■PDFフィルタ
CUPS Trunk に入れたい。
→ Apple曰く、Contributor Agreementへのサインが必要。
→ ライセンスはBBRだけじゃない。（AXE、Popplerメンテナー、XPDF）
　http://www.cups.org/AppleContributorAgreement_2011-03-10.pdf
→ BBRは貫定さん、大谷さん
　AXEはOpenPrinting Japan（三原）からコンタクト
　残りの２つはMikeからコンタクトしてもらえるのか、確認。
　Mikeが確認してくれるにしても、大谷さんから事前説明が必要と思われる。

-- 
  Osamu MIHARA // Fuji Xerox
