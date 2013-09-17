Return-Path: <yoshinari.chigusa@nts.ricoh.co.jp>
Message-ID: <OF28CB00F0.0904737D-ON49257BE9.00279841-49257BE9.0028085E@mta.ricoh.co.jp>
From: yoshinari.chigusa@nts.ricoh.co.jp
Date: Tue, 17 Sep 2013 16:17:14 +0900
MIME-Version: 1.0
Content-type: text/plain; charset=ISO-2022-JP
Subject: [Printing-architecture] [Printing-japan] Minutes of Meeting:
	OpenPrinting Japan Sep 2013
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org


I post this minutes(13th Sep 2013).

Chigusa

------------------------------------
[Japanese]

日時：9月13日  15:00 - 17:00
場所：The Linux Foundation殿 日本大通りオフィス
参加者：宮田(Canon）、大谷(BBR)、千種(RICOH)

アクションアイテム：
 - ベクター仕様確認結果
   ML（architecture) にて報告する（三原さん）
 - OPFC Web siteの更新（虎谷さん）
 - PPD 制約解決検討
   - まずは LibreOffice で受け付けてもらうことを優先(小笠原)
 - CUPSテスト印刷で日本語入りだと文字化けする問題
   Rarilngリリース版でもチェックし必要に応じ報告(小笠原)

議題：
●アクションアイテム確認：
 - ベクター仕様確認結果
   ML（architecture) にて報告する（三原さん）→進展なし
 - OPFC Web siteの更新（虎谷さん）→進展なし
 - PPD 制約解決検討→進捗なし
 - CUPSテスト印刷で日本語入りだと文字化けする問題をレポートする(小笠原)
   →ミーティング後補足：LP #1196986 として起票するも、進展なし
     https://bugs.launchpad.net/ubuntu/+source/cups-filters/+bug/1196986


●OpenPrinting US|Europe Minutes確認
8月度議事録の確認
ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20130814.htm

９月度議事録の確認
ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20130911.htm

 Ubuntu13.10は、
　　- CUPSは1.7.0搭載
　　- GS9.08が搭載 --> CJKの処理は要確認
　　- X WindowsからMirに変更される

 Ubuntu Touchは、2014年春リリース予定？


次回：
  11月 8日 or 15日で日程調整
  場所は日程確定後調整
------------------------------------------------
[English]

Date/Time: 13th September 2013  15:00-17:00 (JST)
Venue: The Linux Foundation Japan Yokohama Office
Atendee: Miyata(Canon), Ohtani(BBR),  Chigusa(Ricoh)

Action Items:
 - Post result of vector spec confirmation (mihara)
 - Update OPFC Web site (toratani)
 - PPD UI Constraints problem
   - Report to LibreOffice first (ogasawara)
 - Report the issue that test print is not correct if printer
information has Japanese
   Check Ubuntu Raring environment and report if it's not solved yet
(ogasawara)

Details:

1. Action items follow-ups
 - Post result of vector spec confirmation (mihara) - not yet
 - Update OPFC Web site (toratani) - not yet
 - PPD UI Constraints problem
   -> not yet
 - Report the issue that test print is not correct if printer
information has Japanese
   - not yet, check it and file the bug after the meeting (ogasawara)
   - comment: filed it as cups-filters LP #1196986, but no reaction.
  https://bugs.launchpad.net/ubuntu/+source/cups-filters/+bug/1196986

2. Review OpenPrinting US|Europe Minutes
  ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20130814.htm
    ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20130911.htm
   - No comment from Japan

       Ubuntu13.10
      　　- CUPS 1.7.0
      　　- Ghostscript9.08 --> we need to check CJK
      　　- Ubuntu13.10 will replace X Windows to Mir.

      Ubuntu Touch will be released in next Spring?


Next meeting (not fixed)：
Date/Time: some business day of 8th or 15th Nov 2013  15:00 - 17:00 JST
Venue: (will fix later)

[EOM]
--

