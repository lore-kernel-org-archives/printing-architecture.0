Return-Path: <naruoga@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=5ovcZwHxAQgyYvoe5GD9HGhJ8x5tns+rW3rkcQ2ym5g=;
	b=f2RT24ake9GnvCJTY9RSFgqLSIyppyFwtHMnrgD2VBvr6//SKtpiml0UrKip0QOF45
	UARZl8O7fUyCsvzPBMdH4nbMh+/sQVq3fRNusm/86CeTs/Wg+IYV1UWJGDb3ZpULChS+
	ZYyD4Ln8BDo1TKBbICSQcGPIbHGzi3hCkHk1t/FQljkU3atzEUM5K5l9w8Ebp41bDM/Z
	MwiT8miQxqnouhtt/Ad2IEK4EheBVl4+ILQYxWuTznp/bkTdNO5vTTHYgjXc5L4z8o84
	MjsHdx6IgbKz8m666EN5tKJg8oFS0Ek1AtM7fvS9ubuVYFCQRidr+L3ZyXWrEZa1xPgH
	C6ZQ==
MIME-Version: 1.0
Date: Wed, 1 May 2013 11:00:47 +0900
Message-ID: <CA+PBKyJOi9y-jcs5O98vvNDUcmzB=NpdLtym1eXc0KcroL8FCg@mail.gmail.com>
From: Naruhiko Ogasawara <naruoga@gmail.com>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Minutes of Meeting: OpenPrinting Japan
	April 2013
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

For non-Japanese readers,

English version is below. Please scrool down.

-
日時：4月24日(水) 15:00 - 17:00
場所：The Linux Foundation殿 日本大通りオフィス

アクションアイテム：
 - ベクター仕様確認結果
   ML（architecture) にて報告する（三原さん）
 - OPFC Web siteの更新（虎谷さん）
 - PPD 制約解決検討
   - まずは LibreOffice で受け付けてもらうことを優先(小笠原)
 - CUPSテスト印刷で日本語入りだと文字化けする問題
   Rarilngリリース版でもチェックし必要に応じ報告(小笠原)

議題：
○アクションアイテム確認：
 - ベクター仕様確認結果
   ML（architecture) にて報告する：まだ（三原さん）
 - OPFC Web siteの更新：未だ（虎谷さん）
 - PPD 制約解決検討
   →別議題として議論
 - CUPSテスト印刷で日本語入りだと文字化けする問題をレポートする(小笠原)
   →進捗なし

○OpenPrinting US|Europe Minutes確認
   ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/
   - GSoC のテーマ確認
     http://www.linuxfoundation.org/collaborate/workgroups
            /gsoc/google-summer-code-2013-openprinting-projects
     - 確認したところ MuPDF の CJK や色管理について問題あり。
       GSoC のサイトでは Mobile に MuPDF が推奨できるような書き方が
       されているが、OPJ としては現状だと厳しい旨報告する。(小笠原)
     - PDF の色管理についての情報を OPJ でシェアする (大谷)
       -> メールにてシェア済。
           http://lists.linuxfoundation.org/pipermail/printing-japan/2013-April/002783.html
           カラーマネジメントの問題： http://www.color.org/version4ready.xalter
           CJK の問題：
               1)縦書きができない
               2)utf-8 or utf-32をサポートしていない
               3)utf-16のときサロゲートペアに対応できていない
             ただし 2) はPDFの仕様上 Predefined CMap に存在しないので
             バグとは言い切れない。ただ、gs も Poppler も対応している
   - Priting Summit
       http://www.linuxfoundation.org/collaborate/workgroups
        /openprinting/openprinting-summitpwg-meeting-cupertino-2013
     - 小笠原は参加予定

○Architecture ML に投稿された Ubuntu Touch ネタと
   Ubuntu BluePrint のチェック
     https://blueprints.launchpad.net/ubuntu/+spec
             /client-1305-printing-stack-with-mobile-in-mind
   - 日本側としては JPEG サポートがあるから OK でよい？
   - 問題があったら各ベンダーから働きかける

○PPD 制約解決検討
   - 現状のバグレポート (*) は書き方が良くなかったようで反応なし
   - リコーさんで出た不具合のケース（デフォルトの選択肢で制約
     されてしまうため、選択肢がないものと見えてしまう）が良さそう
     - バグ情報をいただく (千種さん)
     - バグ情報を元に、より不具合であるとわかりやすく書き直す。
       fdo#62700 はduplicate として drop する (小笠原)
     - バグを新たに起票したら、開発MLにProposalを投げる(小笠原)

     (*) https://bugs.freedesktop.org/show_bug.cgi?id=62700

- テスト印刷で日本語が化ける問題
 - 進展なし
 - Ubuntu Raring のリリース版でも治っていなかったらレポートする
   (小笠原)

次回：
2013年6月14(金)  15:00 - 17:00
The Linux Foundation殿 日本大通りオフィス
-----------------------------------
[English]

Date/Time: 24th April 2013  15:00-17:00 (JST)
Venue: The Linux Foundation Japan Yokohama Office

Action Items:
 - Post result of vector spec confirmation (mihara)
 - Update OPFC Web site (toratani)
 - PPD UI Constraints problem
   - Report to LibreOffice first (ogasawara)
 - Report the issue that test print is not correct if printer
information has Japanese
   Check Ubuntu Raring environment and report if it's not solved yet (ogasawara)


Details:

1. Action items follow-ups
 - Post result of vector spec confirmation (mihara) - not yet
 - Update OPFC Web site (toratani) - not yet
 - PPD UI Constraints problem
   -> discuss about #4
 - Report the issue that test print is not correct if printer
information has Japanese
   - not yet, but development phase of Raring is finished
     check current status and report if latest raring still have same
issue (ogasawara)


2. Review OpenPrinting US|Europe Minutes
   ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/

   - Check themes of GSoC
     http://www.linuxfoundation.org/collaborate/workgroups
            /gsoc/google-summer-code-2013-openprinting-projects
     - MuPDF seems lack of functionality about CM and CJK
       Need more investigation about this (ohtani)
         -> DONE. see the mail below (Japanese)
           http://lists.linuxfoundation.org/pipermail/printing-japan/2013-April/002783.html
           Issue about CM： see the PDF in the page;
http://www.color.org/version4ready.xalter
           Issue about CJK：
               1) Tategaki (up-to-down writing) does not working
               2) PDF with UTF-8 or UTF-32 seems not to be supported.
               3) With UTF-16, MuPDF can't handle surrogate pair right.

            As a specification of PDF, UTF-8 and UTF-32 are not included
            in PreDefined CMap because we can't to say this issue as BUG,
            but Ghostscript and Poppler can handles these well.

       - From OPJ side, we have no problem if we should not migrate from
         GS / Poppler to MuPDF

   - Priting Summit
       http://www.linuxfoundation.org/collaborate/workgroups
        /openprinting/openprinting-summitpwg-meeting-cupertino-2013
     -  Ogasawara will attend

3. Review Ubuntu Touch related e-main in Printing-Architecture
    and Ubuntu Blueprints:
     https://blueprints.launchpad.net/ubuntu/+spec
             /client-1305-printing-stack-with-mobile-in-mind
   - Japanese PDLs support is missing, but we can use JPEG instead?
   - It will be vender-specific issue.


4. PPD UI Constraints investigation
   - Ogasawara wrote a report to LibreOffice fdo#62700
     https://bugs.freedesktop.org/show_bug.cgi?id=62700
     - But nothing response yet; this report might not be good for developers
   - The story should be change; it's not BUG but INCONSIDERABLE
     SPECIFICATION.
   - Most annoying case is that a DEFAULT selection hide another selection
     without any notice (in RICOH case).
     - Tell the detail of the report (chigusa -> ogasawara)
       -> DONE:
     - Rewrite the report (ogasawara) and review it (OPJ members)
     - File new bug in fdo and drop fdo#62700 as a duplicated (ogasawara)
     - Send a proposal mail to developer ML of LibreOffice after the report will
       be filed (ogasawara)

5. Test print issue with Japanese printer information
   - not yet, but development phase of Raring is finished
   - might be a problem (or specification?) of bannertopdf filter
   - check current status and report if latest raring still have same
issue (ogasawara)

Next meeting (planned)：
Datet/Time: 14th June 2013 (Fri)  15:00 - 17:00 JST
Venue: The Linux Foundation Japan Yokohama Office

[EOM]
--
Naruhiko Ogasawara (naruoga@gmail.com)
