Return-Path: <naruoga@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=0exC4xsS/JCf4oXLjGCglhH4L86PRtr+hOZcGuUECG0=;
	b=COCU7DNukUcVcA6uqDaanB1iAEoTPzdScm+wtdk0gxpFxyD3QhlNLVEv8hEWXxOHFl
	ohqAnnhEgZhzAaRVGpdTJZpZQXw3k/+jq4xSRIDKzwLlzKUPp3pUf/ubMmGhZ7rwnz/o
	gImPm/DYoJ+TIK9t9sBy8M30fcLU373pwDGqO/vHNNpBKLIDuTlTZ+adbiJB5fKq52Jn
	moRmFVrpXswqXFlvaPRv13n4ZekmvDpyroQ52aLPrulxO38sjH6ajUEKXtB/NnNYAqMC
	siq9fhre16/X28wtGXurrEJMnpXfhsZTh6LY85Dgklbq8SPZdR1V67pOI1vmStIbjP7m
	EbRQ==
MIME-Version: 1.0
Date: Thu, 14 Nov 2013 00:11:37 +0900
Message-ID: <CA+PBKyLR-6QCeAmFrZ82Zi8NAdYbBtJv=s9yCpbs=HdoLD6=PA@mail.gmail.com>
From: Naruhiko Ogasawara <naruoga@gmail.com>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Minutes of Meeting: OpenPrinting Japan Nov
	2013
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, printing-japan@lists.linux-foundation.org

To Non-Japanese readers,
This is the minutes of OpenPrinting Japan on 8th Nov 2013.
The English part is following Japanese parts.


皆様、

小笠原です。
お世話になっております。

少し遅れましたが、先日11月8日のOpenPrinting Japanの議事録を
送ります。
--------------------
[Japanese]

日時：11月08日  15:00 - 17:00
場所：The Linux Foundation殿 日本大通りオフィス
参加者：宮田(Canon）、大谷(BBR)、千種(RICOH)、小笠原(MIS)

アクションアイテム：
 - ベクター仕様確認結果
   ML（architecture) にて報告する（三原さん）
 - OPFC Web siteの更新（虎谷さん）
 - PPD 制約解決検討
   - まずは LibreOffice で受け付けてもらうことを優先(小笠原)
 - CUPSテスト印刷で日本語入りだと文字化けする問題
   Saucyリリース版でもチェックし必要に応じ報告(小笠原)
 - 本ミーティングの今後の活動について検討する（各自）

議題：
●アクションアイテム確認：
 - ベクター仕様確認結果
   ML（architecture) にて報告する（三原さん）→進展なし
 - OPFC Web siteの更新（虎谷さん）→進展なし
 - PPD 制約解決検討（小笠原）→進捗なし
 - CUPSテスト印刷で日本語入りだと文字化けする問題をレポートする(小笠原)
   →LP #1196986 として起票するも、進展なし
     https://bugs.launchpad.net/ubuntu/+source/cups-filters/+bug/1196986
   →TillからLarsにチェック依頼が出ていた
   →Saucyでの状況を確認する（小笠原）


●OpenPrinting US|Europe Minutes確認
10月度議事録の確認
ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20131002.htm
  特記事項なし

●Android 4.4 (KitKat の) 印刷
  いつの間にか入っていた。ウォッチング
  http://jp.techcrunch.com/2013/11/01/20131031android-4-4-kitkat-google/

●本活動の今後について
 - 今は決め手がない状況
 - 持ち帰り検討し次回で議論・決定する
 - 最低でも Printing Summit 直後はオフラインでもよいのでは


次回：
  2014年 1月17日 or 24日で日程調整
  時間は16時〜17時予定
  場所は日程確定後調整
------------------------------------------------
[English]

Date/Time: 8th November 2013  15:00-17:00 (JST)
Venue: The Linux Foundation Japan Yokohama Office
Atendee: Miyata(Canon), Ohtani(BBR),  Chigusa(Ricoh),
         Ogasawara (MIS)

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
 - PPD UI Constraints problem (ogasawara)
   -> not yet
 - Report the issue that test print is not correct if printer
information has Japanese
   - filed the but no responce yet
  https://bugs.launchpad.net/ubuntu/+source/cups-filters/+bug/1196986
   - Till asked Lars can check this
   - need to check in Saucy environment (ogasawara)

2. Review OpenPrinting US|Europe Minutes
  ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20131002.htm
   - No comment from Japan

3. Printing feature of Android 4.4 KitKat
  http://developer.android.com/about/versions/kitkat.html#44-printing
   - Keep watching in each vendors

4. How should we continue to work this meeting
 - currently no special theme to discuss in Japan
 - will discuss inside each companies and will decide in next meeting
 - some online works (via mailing list) might continue
 - After next Printing Summit, we can have a face-to-face to review it

Next meeting (not fixed)：
Date/Time: some business day of 17th or 24th Jan 2014  15:00 - 17:00 JST
Venue: (will fix later)

[EOM]
-- 
Naruhiko Ogasawara (naruoga@gmail.com)
