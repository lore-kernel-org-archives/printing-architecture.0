Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8ga3LkpDWwlCoHJRtYNS5/LQrATNORdb1nFhqISwIsk=;
	b=I+IgMkpwsTXBRcILyIsNqI+Ep6xjFkB+alzLPgcJdMrxdXEeJka6zQlWgUCkqLnPWs
	12nLoBQfnb5uoeMDMgIadEI3MmwuVoRTroZ2lZyuMVOPp6a7n+K2ltR5gzyA7h5PwXk5
	HUvd2FJv8Hd3l65r2VxTZ4OxbI4547SqVwvgxO7iYPhddKY+gM+OxeNLlIjtTuvdSAU3
	B0gYKoUK8UwAcsZ61SsJgNvmuut5tvhBR3WrG28oFiYjQf8P9NIEQ/Rrq0U83ceG0CJd
	CdaG1TTjCdsPI265WTFaPhaiuc2c8o7a113WtDZ7cXabSSkv44ZqsUWGPzm48n+NeStm
	WzGA==
MIME-Version: 1.0
In-Reply-To: <508894E8.3000804@fujixerox.co.jp>
References: <20121002.153844.66169479.sho@bbr.jp>
	<508894E8.3000804@fujixerox.co.jp>
Date: Thu, 25 Oct 2012 11:16:19 -0400
Message-ID: <CAN40gStYzCHGF_15qTijmWHvVDUWqXotic8PzT7veCDda-smDg@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: multipart/alternative; boundary=e89a8f3ba2d57388b204cce3afe5
Subject: Re: [Printing-architecture] [Printing-japan] Meeting Minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: fx MIHARA OSAMU <osamu.mihara@fujixerox.co.jp>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "printing-japan@lists.linux-foundation.org" <printing-japan@lists.linux-foundation.org>

--e89a8f3ba2d57388b204cce3afe5
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

Hello Mihara-san,

Thank you for these OP Japan meeting minutes.

<Ira's opinion - not official>
You asked if development of Common Print Dialog has been canceled.
As far as I know, Canonical/Ubuntu has not assigned Lars Uebernickel
to do any further work on CPD.

In addition, the consensus at the OP Summit in April 2012 and on our
OP monthly teleconferences since then has been:
(a) CPD was not designed to be extensible (shrinkable?) to small mobile
platforms;
(b) Common Mobile Print Client (CMPC) that Glen Petrie's has worked
on is more useful for future Linux systems (it scales up to larger screens
easily).

The consumer and enterprise trends away from traditional desktop and
laptop PCs toward mobile tablets, PDAs, smartphones, etc. makes the
CPD much less useful for Linux printing than when it was first proposed
six years ago.
</Ira's opinion - not official>

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG IPP WG
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - TCG Embedded Systems Hardcopy SG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music/High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto:blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
Temporary Cabin *** 2012 only *** 906-494-2523



2012/10/24 fx MIHARA OSAMU <osamu.mihara@fujixerox.co.jp>

> Hello,
>
> Here is the translation of MoM of OPJ last month.
>
> ------------------------ English-------------------------
> Meeting Minutes - OpenPrinting Japan Meeting in Sept. 2012
> 15:00 - 17:00 09/28/2012 @ The Linux Foundation Office at Yokohama.
> Attendee - Miyata(Cannon),Ohtani(BBR),Chigusa(Ricoh),Mihara(FujiXerox)
>
> 1.Action Items Follow-ups
>    - Oost result of vector spec confirmation (mihara) - not yet
>    - Update OPFC Web site (toratani) - not yet
>    - pdftopvp (Till's post on Aug. 9): ask comment to OPJ member
>      -> It is preferable to make it user selectable, as each method has
>         merits and demerits.
>
> 2.Reviewed following documents
> - OpenPrinting US|Europe Minutes
>     ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/
>
>   Is the development of CPD cancelled???
>
> 4.Next meeting
>       The next meeting is scheduled for Nov. 30th.
>
>
>
> On 2012/10/02 15:38, Koji Otani wrote:
> > 大谷です。
> > 議事録をお送りします。
> >
> > ---------------
> > OpenPrinting Japan 2012年9月ミーティング議事録
> > 日時:９月２８日(金) 15:00-17:00
> > 場所：The Linux Foundation殿 日本大通りオフィス
> >
> > 出席者(敬称略)
> > 宮田(キヤノン)、大谷(BBR)、千種(リコー)、三原(Fuji Xerox)
> >
> > 1.前回のアクションアイテム、進捗確認
> >   -ベクター仕様確認結果 ML（architecture) にて報告する：未だ（三原さ
> > ん）→まだ
> >   -OPEC Web siteの更新：未だ（虎谷さん）→まだ
> >   - pdftoopvpの件について日本のメンバーに考えを聞く。
> >       一長一短があるので、ユーザが選択可能にした方が良いと思われる。
> >
> > 2. 以下の文書を確認
> >  - OpenPrinting US|Europe Minutes
> >    ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/
> >
> >   CPDは、中断ということか?
> >
> > 3. 次回の会議
> >
> > 11月30日(金)の予定
> >
> >
> >
> > _______________________________________________
> > Printing-japan mailing list
> > Printing-japan@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-japan
> >
>
>
> --
>   三原 修 // 富士ゼロックス株式会社
>   コントローラ開発本部コントローラプラットフォーム第三開発部
>   〒220-8668 神奈川県横浜市西区みなとみらい六丁目1番
>   横浜みなとみらい事業所 16F 045-755-5354 / 7-604491(内)
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--e89a8f3ba2d57388b204cce3afe5
Content-Type: text/html; charset=ISO-2022-JP
Content-Transfer-Encoding: base64

SGVsbG8gTWloYXJhLXNhbiw8YnI+PGJyPlRoYW5rIHlvdSBmb3IgdGhlc2UgT1AgSmFwYW4gbWVl
dGluZyBtaW51dGVzLjxicj48YnI+Jmx0O0lyYSYjMzk7cyBvcGluaW9uIC0gbm90IG9mZmljaWFs
Jmd0Ozxicj5Zb3UgYXNrZWQgaWYgZGV2ZWxvcG1lbnQgb2YgQ29tbW9uIFByaW50IERpYWxvZyBo
YXMgYmVlbiBjYW5jZWxlZC48YnI+QXMgZmFyIGFzIEkga25vdywgQ2Fub25pY2FsL1VidW50dSBo
YXMgbm90IGFzc2lnbmVkIExhcnMgVWViZXJuaWNrZWw8YnI+CnRvIGRvIGFueSBmdXJ0aGVyIHdv
cmsgb24gQ1BELjxicj48YnI+SW4gYWRkaXRpb24sIHRoZSBjb25zZW5zdXMgYXQgdGhlIE9QIFN1
bW1pdCBpbiBBcHJpbCAyMDEyIGFuZCBvbiBvdXI8YnI+T1AgbW9udGhseSB0ZWxlY29uZmVyZW5j
ZXMgc2luY2UgdGhlbiBoYXMgYmVlbjo8YnI+KGEpIENQRCB3YXMgbm90IGRlc2lnbmVkIHRvIGJl
IGV4dGVuc2libGUgKHNocmlua2FibGU/KSB0byBzbWFsbCBtb2JpbGUgPGJyPgpwbGF0Zm9ybXM7
PGJyPihiKSBDb21tb24gTW9iaWxlIFByaW50IENsaWVudCAoQ01QQykgdGhhdCBHbGVuIFBldHJp
ZSYjMzk7cyBoYXMgd29ya2VkPGJyPm9uIGlzIG1vcmUgdXNlZnVsIGZvciBmdXR1cmUgTGludXgg
c3lzdGVtcyAoaXQgc2NhbGVzIHVwIHRvIGxhcmdlciBzY3JlZW5zPGJyPmVhc2lseSkuPGJyPjxi
cj5UaGUgY29uc3VtZXIgYW5kIGVudGVycHJpc2UgdHJlbmRzIGF3YXkgZnJvbSB0cmFkaXRpb25h
bCBkZXNrdG9wIGFuZDxicj4KbGFwdG9wIFBDcyB0b3dhcmQgbW9iaWxlIHRhYmxldHMsIFBEQXMs
IHNtYXJ0cGhvbmVzLCBldGMuIG1ha2VzIHRoZTxicj5DUEQgbXVjaCBsZXNzIHVzZWZ1bCBmb3Ig
TGludXggcHJpbnRpbmcgdGhhbiB3aGVuIGl0IHdhcyBmaXJzdCBwcm9wb3NlZDxicj5zaXggeWVh
cnMgYWdvLjxicj4mbHQ7L0lyYSYjMzk7cyBvcGluaW9uIC0gbm90IG9mZmljaWFsJmd0Ozxicj48
YnI+Q2hlZXJzLDxicj4KLSBJcmE8YnI+PGJyPjxiciBjbGVhcj0iYWxsIj5JcmEgTWNEb25hbGQg
KE11c2ljaWFuIC8gU29mdHdhcmUgQXJjaGl0ZWN0KTxicj5DaGFpciAtIExpbnV4IEZvdW5kYXRp
b24gT3BlbiBQcmludGluZyBXRzxicj5TZWNyZXRhcnkgLSBJRUVFLUlTVE8gUHJpbnRlciBXb3Jr
aW5nIEdyb3VwPGJyPkNvLUNoYWlyIC0gSUVFRS1JU1RPIFBXRyBJUFAgV0c8YnI+Q28tQ2hhaXIg
LSBUQ0cgVHJ1c3RlZCBNb2JpbGl0eSBTb2x1dGlvbnMgV0c8YnI+CkNoYWlyIC0gVENHIEVtYmVk
ZGVkIFN5c3RlbXMgSGFyZGNvcHkgU0c8YnI+SUVURiBEZXNpZ25hdGVkIEV4cGVydCAtIElQUCAm
YW1wOyBQcmludGVyIE1JQjxicj5CbHVlIFJvb2YgTXVzaWMvSGlnaCBOb3J0aCBJbmM8YnI+PGEg
c3R5bGU9ImNvbG9yOnJnYig1MSw1MSwyNTUpIiBocmVmPSJodHRwOi8vc2l0ZXMuZ29vZ2xlLmNv
bS9zaXRlL2JsdWVyb29mbXVzaWMiIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vc2l0ZXMuZ29vZ2xl
LmNvbS9zaXRlL2JsdWVyb29mbXVzaWM8L2E+PGJyPgo8YSBzdHlsZT0iY29sb3I6cmdiKDEwMiww
LDIwNCkiIGhyZWY9Imh0dHA6Ly9zaXRlcy5nb29nbGUuY29tL3NpdGUvaGlnaG5vcnRoaW5jIiB0
YXJnZXQ9Il9ibGFuayI+aHR0cDovL3NpdGVzLmdvb2dsZS5jb20vc2l0ZS9oaWdobm9ydGhpbmM8
L2E+PGJyPm1haWx0bzo8YSBocmVmPSJtYWlsdG86Ymx1ZXJvb2ZtdXNpY0BnbWFpbC5jb20iIHRh
cmdldD0iX2JsYW5rIj5ibHVlcm9vZm11c2ljQGdtYWlsLmNvbTwvYT48YnI+CldpbnRlciZuYnNw
OyA1NzkgUGFyayBQbGFjZSZuYnNwOyBTYWxpbmUsIE1JJm5ic3A7IDQ4MTc2Jm5ic3A7IDczNC05
NDQtMDA5NDxicj5TdW1tZXImbmJzcDsgUE8gQm94IDIyMSZuYnNwOyBHcmFuZCBNYXJhaXMsIE1J
IDQ5ODM5Jm5ic3A7IDkwNi00OTQtMjQzNDxicj5UZW1wb3JhcnkgQ2FiaW4gKioqIDIwMTIgb25s
eSAqKiogOTA2LTQ5NC0yNTIzPGJyPjxkaXYgc3R5bGU9ImRpc3BsYXk6aW5saW5lIj48L2Rpdj48
ZGl2IHN0eWxlPSJkaXNwbGF5OmlubGluZSI+CjwvZGl2PjxkaXYgc3R5bGU9ImRpc3BsYXk6aW5s
aW5lIj48L2Rpdj48ZGl2PjwvZGl2PjxkaXY+PC9kaXY+PGRpdj48L2Rpdj48ZGl2PjwvZGl2Pjxi
cj4KPGJyPjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+MjAxMi8xMC8yNCBmeCBNSUhBUkEg
T1NBTVUgPHNwYW4gZGlyPSJsdHIiPiZsdDs8YSBocmVmPSJtYWlsdG86b3NhbXUubWloYXJhQGZ1
aml4ZXJveC5jby5qcCIgdGFyZ2V0PSJfYmxhbmsiPm9zYW11Lm1paGFyYUBmdWppeGVyb3guY28u
anA8L2E+Jmd0Ozwvc3Bhbj48YnI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHls
ZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1s
ZWZ0OjFleCI+CkhlbGxvLDxicj4KPGJyPgpIZXJlIGlzIHRoZSB0cmFuc2xhdGlvbiBvZiBNb00g
b2YgT1BKIGxhc3QgbW9udGguPGJyPgo8YnI+Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSBFbmds
aXNoLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj4KTWVldGluZyBNaW51dGVzIC0gT3BlblBy
aW50aW5nIEphcGFuIE1lZXRpbmcgaW4gU2VwdC4gMjAxMjxicj4KMTU6MDAgLSAxNzowMCAwOS8y
OC8yMDEyIEAgVGhlIExpbnV4IEZvdW5kYXRpb24gT2ZmaWNlIGF0IFlva29oYW1hLjxicj4KQXR0
ZW5kZWUgLSBNaXlhdGEoQ2Fubm9uKSxPaHRhbmkoQkJSKSxDaGlndXNhKFJpY29oKSxNaWhhcmEo
RnVqaVhlcm94KTxicj4KPGJyPgoxLkFjdGlvbiBJdGVtcyBGb2xsb3ctdXBzPGJyPgombmJzcDsg
Jm5ic3A7LSBPb3N0IHJlc3VsdCBvZiB2ZWN0b3Igc3BlYyBjb25maXJtYXRpb24gKG1paGFyYSkg
LSBub3QgeWV0PGJyPgombmJzcDsgJm5ic3A7LSBVcGRhdGUgT1BGQyBXZWIgc2l0ZSAodG9yYXRh
bmkpIC0gbm90IHlldDxicj4KJm5ic3A7ICZuYnNwOy0gcGRmdG9wdnAgKFRpbGwmIzM5O3MgcG9z
dCBvbiBBdWcuIDkpOiBhc2sgY29tbWVudCB0byBPUEogbWVtYmVyPGJyPgombmJzcDsgJm5ic3A7
ICZuYnNwOy0mZ3Q7IEl0IGlzIHByZWZlcmFibGUgdG8gbWFrZSBpdCB1c2VyIHNlbGVjdGFibGUs
IGFzIGVhY2ggbWV0aG9kIGhhczxicj4KJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7IG1lcml0
cyBhbmQgZGVtZXJpdHMuPGJyPgo8YnI+CjIuUmV2aWV3ZWQgZm9sbG93aW5nIGRvY3VtZW50czxi
cj4KGyRCISEbKEIgLSBPcGVuUHJpbnRpbmcgVVN8RXVyb3BlIE1pbnV0ZXM8YnI+CiZuYnNwOyAm
bmJzcDsgPGEgaHJlZj0iZnRwOi8vZnRwLnB3Zy5vcmcvcHViL3B3Zy9vcGVucHJpbnRpbmcvbWlu
dXRlcy8iIHRhcmdldD0iX2JsYW5rIj5mdHA6Ly9mdHAucHdnLm9yZy9wdWIvcHdnL29wZW5wcmlu
dGluZy9taW51dGVzLzwvYT48YnI+Cjxicj4KJm5ic3A7IElzIHRoZSBkZXZlbG9wbWVudCBvZiBD
UEQgY2FuY2VsbGVkPz8/PGJyPgo8YnI+CjQuTmV4dCBtZWV0aW5nPGJyPgombmJzcDsgJm5ic3A7
ICZuYnNwOyBUaGUgbmV4dCBtZWV0aW5nIGlzIHNjaGVkdWxlZCBmb3IgTm92LiAzMHRoLjxicj4K
PGJyPgo8YnI+Cjxicj4KT24gMjAxMi8xMC8wMiAxNTozOCwgS29qaSBPdGFuaSB3cm90ZTo8YnI+
CiZndDsgGyRCQmdDKyRHJDkhIxsoQjxicj4KJmd0OyAbJEI1RDt2Tz8kciQqQXckaiQ3JF4kOSEj
GyhCPGJyPgomZ3Q7PGJyPgomZ3Q7IC0tLS0tLS0tLS0tLS0tLTxicj4KJmd0OyBPcGVuUHJpbnRp
bmcgSmFwYW4gMjAxMhskQkcvGyhCORskQjduJV8hPCVGJSMlcyUwNUQ7dk8/GyhCPGJyPgomZ3Q7
IBskQkZ8O34bKEI6GyRCIzk3biMyIzhGfBsoQigbJEI2YhsoQikgMTU6MDAtMTc6MDA8YnI+CiZn
dDsgGyRCPmw9aiEnGyhCVGhlIExpbnV4IEZvdW5kYXRpb24bJEJFQhsoQiAbJEJGfEtcQmdETCRq
JSolVSUjJTkbKEI8YnI+CiZndDs8YnI+CiZndDsgGyRCPVBASjxUGyhCKBskQjdJPk5OLBsoQik8
YnI+CiZndDsgGyRCNVxFRBsoQigbJEIlLSVkJU4lcxsoQikbJEIhIkJnQysbKEIoQkJSKRskQiEi
QGk8bxsoQigbJEIlaiUzITwbKEIpGyRCISI7MDg2GyhCKEZ1amkgWGVyb3gpPGJyPgomZ3Q7PGJy
PgomZ3Q7IDEuGyRCQTAycyROJSIlLyU3JWclcyUiJSQlRiVgISI/SkQ9M05HJxsoQjxicj4KJmd0
OyAmbmJzcDsgLRskQiVZJS8lPyE8O0VNTTNORyc3azJMGyhCIE1MGyRCIUobKEJhcmNoaXRlY3R1
cmUpIBskQiRLJEZKczlwJDkkayEnTCQkQCFKOzA4NiQ1GyhCPGJyPgomZ3Q7IBskQiRzIUsiKiRe
JEAbKEI8YnI+CiZndDsgJm5ic3A7IC1PUEVDIFdlYiBzaXRlGyRCJE45OT83ISdMJCRAIUo4V0Mr
JDUkcyFLIiokXiRAGyhCPGJyPgomZ3Q7ICZuYnNwOyAtIHBkZnRvb3B2cBskQiRON28kSyREJCQk
RkZ8S1wkTiVhJXMlUCE8JEs5TSQoJHJKOSQvISMbKEI8YnI+CiZndDsgJm5ic3A7ICZuYnNwOyAm
bmJzcDsgGyRCMGxEOTBsQzskLCQiJGskTiRHISIlZiE8JTYkLEEqQnIyREc9JEskNyQ/Sn0kLE5J
JCQkSDtXJG8kbCRrISMbKEI8YnI+CiZndDs8YnI+CiZndDsgMi4gGyRCMEoyPCROSjg9cSRyM05H
JxsoQjxicj4KJmd0OxskQiEhGyhCJm5ic3A7LSBPcGVuUHJpbnRpbmcgVVN8RXVyb3BlIE1pbnV0
ZXM8YnI+CiZndDsgJm5ic3A7ICZuYnNwOzxhIGhyZWY9ImZ0cDovL2Z0cC5wd2cub3JnL3B1Yi9w
d2cvb3BlbnByaW50aW5nL21pbnV0ZXMvIiB0YXJnZXQ9Il9ibGFuayI+ZnRwOi8vZnRwLnB3Zy5v
cmcvcHViL3B3Zy9vcGVucHJpbnRpbmcvbWludXRlcy88L2E+PGJyPgomZ3Q7PGJyPgomZ3Q7ICZu
YnNwOyBDUEQbJEIkTyEiQ2ZDRyRIJCQkJiQzJEgkKxsoQj88YnI+CiZndDs8YnI+CiZndDsgMy4g
GyRCPCEycyROMnE1RBsoQjxicj4KJmd0Ozxicj4KJmd0OxskQiEhISEbKEIgMTEbJEI3bhsoQjMw
GyRCRnwbKEIoGyRCNmIbKEIpGyRCJE5NPURqGyhCPGJyPgomZ3Q7PGJyPgomZ3Q7PGJyPgomZ3Q7
PGJyPgomZ3Q7IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
PGJyPgomZ3Q7IFByaW50aW5nLWphcGFuIG1haWxpbmcgbGlzdDxicj4KJmd0OyA8YSBocmVmPSJt
YWlsdG86UHJpbnRpbmctamFwYW5AbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmciPlByaW50aW5n
LWphcGFuQGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnPC9hPjxicj4KJmd0OyA8YSBocmVmPSJo
dHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9wcmludGlu
Zy1qYXBhbiIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vbGlzdHMubGludXhmb3VuZGF0aW9uLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3ByaW50aW5nLWphcGFuPC9hPjxicj4KJmd0Ozxicj4KPHNwYW4g
Y2xhc3M9IkhPRW5aYiI+PGZvbnQgY29sb3I9IiM4ODg4ODgiPjxicj4KPGJyPgotLTxicj4KJm5i
c3A7IBskQjswODYbKEIgGyRCPSQbKEIgLy8gGyRCSVk7TiU8JW0lQyUvJTkzdDwwMnE8UhsoQjxi
cj4KJm5ic3A7IBskQiUzJXMlSCVtITwlaTMrSC9LXEl0JTMlcyVIJW0hPCVpJVclaSVDJUglVSUp
ITwlYEJoOzAzK0gvSXQbKEI8YnI+CiZuYnNwOyAbJEIiKRsoQjIyMC04NjY4IBskQj9ARmBAbjgp
MiNJTTtUQD42aCRfJEokSCRfJGkkJE87Q3pMXBsoQjEbJEJIVhsoQjxicj4KJm5ic3A7IBskQjIj
SU0kXyRKJEgkXyRpJCQ7djZIPWobKEIgMTZGIDA0NS03NTUtNTM1NCAvIDctNjA0NDkxKBskQkZi
GyhCKTxicj4KPGJyPgo8L2ZvbnQ+PC9zcGFuPjxicj5fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXzxicj4KUHJpbnRpbmctYXJjaGl0ZWN0dXJlIG1haWxpbmcg
bGlzdDxicj4KPGEgaHJlZj0ibWFpbHRvOlByaW50aW5nLWFyY2hpdGVjdHVyZUBsaXN0cy5saW51
eC1mb3VuZGF0aW9uLm9yZyI+UHJpbnRpbmctYXJjaGl0ZWN0dXJlQGxpc3RzLmxpbnV4LWZvdW5k
YXRpb24ub3JnPC9hPjxicj4KPGEgaHJlZj0iaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24u
b3JnL21haWxtYW4vbGlzdGluZm8vcHJpbnRpbmctYXJjaGl0ZWN0dXJlIiB0YXJnZXQ9Il9ibGFu
ayI+aHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGluZm8vcHJp
bnRpbmctYXJjaGl0ZWN0dXJlPC9hPjxicj4KPGJyPjwvYmxvY2txdW90ZT48L2Rpdj48YnI+Cg==
--e89a8f3ba2d57388b204cce3afe5--
