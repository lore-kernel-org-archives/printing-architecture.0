Message-ID: <56DBC1B7ACBDAE45AB2858C17E2F5B2C141E403D@hroaex2.hro.epson.co.jp>
From: Ide Kentaro <Ide.Kentaro@exc.epson.co.jp>
Subject: RE: [Printing-architecture] RE: [printing-japan] Re: [opfc 1149] 
	12/10 meeting minutes(draft)
Date: Thu, 23 Dec 2004 03:57:19 +0900
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----_=_NextPart_000_01C4E858.0F485542"
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-japan@freestandards.org, printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_000_01C4E858.0F485542
Content-Type: text/plain;
	charset="iso-2022-jp"

Hi, folks,

I attach translated meeting minutes of Printing-Japan F2F in Dec.10.
This minutes mixed Japanese SC members report of San Antonio and
discussion minutes of F2F in Dec.10.

# If you find out mistake or someting in this minutes, feel free to correct. > all participant ;-)

Best regards,
Kentaro Ide

| -----Original Message-----
| From: printing-architecture-bounces@mail.freestandards.org 
| [mailto:printing-architecture-bounces@mail.freestandards.org] 
| On Behalf Of Petrie, Glen
| Sent: Tuesday, December 21, 2004 1:01 AM
| To: printing-japan@freestandards.org; 
| printing-architecture@freestandards.org
| Subject: [Printing-architecture] RE: [printing-japan] Re: 
| [opfc 1149] 12/10 meeting minutes(draft)
| 
| 
| Hello all,
| 
| It is possible someone translate the minutes of this meeting?   Of
| particular interest to the US team is the 
| 
| 1. JTAPI white-paper and follow-up activities, 
| 2. the discussion on PCM (especially considering the 
| conversation at the San
| Antonio meeting) 
| 3. the discussion the FSG/IPA-japan team has been having with Apple
| 4. all of the remaining topics below.
| 
| All of the discussions are of interest to the architecture team and to
| specific group working US specifications.  
| 
| 
| Thanks for help
| 
| 
| 虎谷です。
| 
| アクションアイテムについて、何点か補足します。
| 補足に関して、誤り・抜けがありましたら、御指摘ください。
| 宜しくお願いします。
| 
| 以下、文中に補足します。
| ※SourceForgeやMLについての補足が多いので、確認して
| 　頂けると幸いです。
| 
| On Fri, 10 Dec 2004 17:55:07 +0900
| Takaaki Higuchi <Takaaki.Higuchi@Sun.COM> wrote:
| 
| > 12/10(Fri) 15:00-18:00 at Sun Microsystems 山王オフィス
| > 
| > 出席者:	虎谷、三原、井手、松武、貫定、来山、丸山、大谷、志田、
| > 	風穴、樋口、山岸
| > 
| > 1. SC Meeting概略と宿題
| > 
| >   - JTAPI
| >     - 1.0の仕様が2005年1月に上がる
| >     - 2004年6月に作成済みのJTAPI Whitepaperをどうするか
| >       - 元々IPAに事前情報として出す位置づけで作成
| >       - 今後、日本側で誰が責任をもって実装に挑むか、要検討
| > 
| >   - PCM、PCM Plug-in, SM
| > 　  - PCMでは、USBのような低水準I/FとIPPのような高水準のプロトコルを
| 同様に
| 処理
| > 　　  デバイス、プロトコルの差異は、Plug-inで吸収
| > 　  - PrintManagerが生成するJobIDと、IPPから得られるJobIDの対応を
| PCMが管理
| > 　  - PCMを経由せず発行されたJob（例：ネットワーク経由で他のPCから発
| 行され
| たJob）
| > 　  　を、PCM経由でCancel可とするためには、Job一覧を取得する機能が
| PCMに必
| 要
| > 　  - IPPは複数ドキュメントもサポート
| > 　  - Open, StartJob, StartDoc, Read/Write, EndDoc, EndJob, Close
| > 　    その他、CancelJobが必要
| > 　  - StartJob, CancelJobにはJobIDを指定
| > 
| >   - Vector
| > 　  - Image系のAPIに、ピッチ（ライン当たりのバイト数）が必要
| > 　  - 印刷オプションが文字列だけではデータサイズが大きいためENUMを定
| 義して
| 欲しい
| > 　  - Querry関数のビットフラグをENUMにして欲しい（具体的な例なし）
| > 　  - QuerryDeviceInfo関数で取得できるCapabilityを定義すべき
| > 　  - エンジン関数をサポートして欲しい（Mark）
| > 　　  →　不要：ドライバ側で全てをサポートすれば良い
| > 　  - 型定義　FSGPD_INT32, FSGPD_INT64, FSGPD_BIT8と定義すべき　
| ENUMも同様
| > 　  - floatよりは文字列が良いのでは？
| > 　  - pdBrushDataの char[1]の定義がおかしい
| > 　  - サンプル実装は、C言語の仕様に沿うべき
| > 　　  コメントは  /*    */
| > 　　  １行は70文字以下（一部の実装で、１行が70文字を越えるとコードが
| 省略さ
| れる）
| > 　　  /* End of File */ をつけるべき
| > 　  - Conformance Matrixが必要
| > 　　  PDA, ホーム、ビジネスオフィス、プロダクションに分類
| > 　　  各々のユースケース向けに、API仕様を定義すべき
| > 　　  （ホーム以上のユースケースでは、XXXの実装をMUSTとする、など）
| > 
| >   - PAPI
| > 　  - Solaris10にPAPIを実装
| > 
| >   -Steering Committee
| > 　  - Markが今年で辞めるので、新しいChairが必要
| >       - Norm氏が30日以内に検討
| >   　- PWG傘下に移動するか
| > 　  　PWGはLinux以外の先進的な技術にフォーカス
| > 　  　OpenPrintingは Linuxにフォーカス
| > 　  　→　PWG傘下に移動すると、Linuxへのフォーカスが減る
| > 　  　→　IPAを困惑させるかもしれない
| > 　  　PWG傘下に移動しても、参加者が増える保証無し
| > 　  　結論：FSG傘下に留まり参加者を募る
| > 
| >   　- OpenPrintingへ参加者をどう募るか？
| > 　  　PR用のα版実装を公開する
| > 　　  現在あるサンプル実装を寄せ集める
| > 　　　  PAPI, Vector/Rasterはそのまま使えるかも
| > 　　　  PCM Plug-inは、Bi-di Plug-inを改造
| > 　　　  PCMはどうする？　←USで未検討
| > 　　  2005/2〜3に実装
| > 　　  実施体制については、日本に持ち帰り 12/10に検討
| > 
| >   　- IPA公募
| > 　  　誰が PAPI＋JTAPIのオーナになるか？
| > 　　  →　12/10の日本側の会議で体制を検討
| > 
| >   　- 仕様策定プロセス
| > 　  　樋口さんが、Vector/PCM Plug-in のChampionに
| > 
| > 　　- 3 type linking typeのAPI定義の際の例外を許すか？
| > 　　  - 例外を許すと言うのは仕様定義上美しくないので、
| >         この要求自体を仕様の必須要件としない
| > 
| >     - Capability groupに関して
| >       - GlenとNormは関心はあるがleadできない
| >       - 日米双方で検討して次回のSCミーティングで話し合う
| > 
| >   　- 2005 f2f meeting 年に二回
| > 　  　Japan ... Mar. Apl. May   大阪?
| > 　　  US ...... Sep. Oct. Nov.  ニューオーリンズ？
| > 
| > 2. 今後の検討テーマ（Vector, Status, PCM.....。）
| > 
| >   - PCM
| >     - 仕様策定に向けて進む。井手さんが1月14日までにドラフト作成
| >     - 1月のミーティングで詰め。
| 
|        - StartJob, StartDoc, EndDoc, EndJob等を入れた仕様とする。
|        - 何故その機能が必要なのかの理由も入れるのが良い。
| 
| >   - PAPI 1.0仕様確定が1月中に終わるので、それをもって、
| >     PAPIから下までのインテグレーションを行う。
| >     - 2月からできるよね、と言う話がUSで出ていたが、実作業のコスト
| >       を考えると、JTAPIの実装と含めて4月以降できるほうがよいのでは
| >       ないか。
| >       - SCにその線で聞いてみる(樋口)
| > 
| >   - JTAPI
| >     - 日本側で誰が責任を持って実装を推進するか（対IPA）
| >     - IPAにWhite Paperを送る(樋口)
| >       - 同時に推進体制に関して相談する
| >       - Sunが幹事会社をできるかもしれない
| > 
| >   - Capabilityの推進をどうするか
| >     - 来山さんができるかどうか検討する
| > 
| > 3. Apple（PWG絡み）との件
| > 
| >   - 11/11にMacOS XのPrintingの担当の方(Paul)と話をした
| >     - Vector APIの説明をし、スペックを見てもらうと
| >       いう話になっている。
| >     - うまく行けば、Vectorに関してはLinuxとMacOS Xで
| >       同じものが使えるようになるかもしれない
| >     - その後の状態に関して、問い合わせる(三原)
| 
|        - 定期的な打ち合わせについても提案（三原さん）
| 
| > 4. PR（OPWGとOPFCとの絡み）
| >   - 11/30: Internet Week 2004 BoF
| >   - 12/ 3: Linux Consortium
| >   - 12/ 6: Open PrintingをKnoppixへの収録以来
| 
|      - BOF アンケートをMLに流す（三原さん）
| 
| > (1) 外から見える枠組みに関して
| >        OpenPrintingの活動／中身
| >        成果物／メンテナンス等
| > (2) OpenPrintingを採用したいベンダー／大口ユーザーに対して
| >        何をすべき？
| >        どこから手をつけるべき？
| >        誰と／どこに連絡をすべき？
| > (3) 検討グループへの参加
| >        どこの／誰に連絡？
| > 
| > 5. sourceforge.jp
| 
|      - MLについては、FSGのMLの日本語問題が解決するまでの間、当面
|        技術的な議論については sourceforge.jp に移行する
|      - OPFCのMLは、契約等の手続き等用に絞る
| 
|      - EPSON KOWAさんのサイトから、sourceforge.jp へ、「最新ソースはこ
| ちら」
|         のようなリンクを張ることについて検討する（来山さん）
| 
|      - 各社ドライバのダウンロードサイトから、sourceforge.jp へのリンク
| を張る
|         ことについて検討する（来山さん、虎谷）
| 
|      - sourceforge.jp の扉サイトを英語化する（三原さん）
| 
| > 6. その他
| > (1) FSG Board選挙
| >     12/16公示予定
| >     投票期間は12/20-31
| > 
| > 次回 1月21日(金)
| > 
| > 以上、
| > 
| > 樋口
| 
| -----------------------------------------
| TORATANI Yasumasa
| Computer Technology Development Dept. 12 CANON INC. 
| Shimomaruko Office,
| Japan
| 
| 
| _______________________________________________
| printing-japan mailing list
| printing-japan@mail.freestandards.org
| http://mail.freestandards.org/mailman/listinfo/printing-japan
| 
| _______________________________________________
| Printing-architecture mailing list
| Printing-architecture@mail.freestandards.org
| http://mail.freestandards.org/mailman/listinfo/printing-architecture
| 


------_=_NextPart_000_01C4E858.0F485542
Content-Type: text/plain;
	name="PrintingJapan20041210.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="PrintingJapan20041210.txt"

| 12/10(Fri) 15:00-18:00 at Sun Microsystems@Tokyo
|=20
| attendantee:
|	Toratani, Mihara, Matsutake, Kanjyo, Kitayama, Maruyama, Otani, =
Shida,=20
| 	Kazaana, Higuchi, Yamagishi, Ide
|=20
| 1. Minutes of SC Meeting@San Antonio and action items
|=20
|   - JTAPI
|     - Version 1.0 will be completed in January.
|
|     - How should we handle the JTAPI whitepaper written in June?
|       - This is originally written as the preinformation for IPA.
|       - FSG-JP group will decide who will lead this activity.
|=20
|   - PCM=81APCM Plug-in, SM
| =81@  - PCM handles lowlevel I/F such as usb and high-level I/F
|	such as IPP in the same way, and its plug-ins abstract the
|	differences among devices and protocols.
|
| =81@  - PCM manages the relationship between JobID created by =
PrintManager
|	and JobID created by IPP.
|
| =81@  - PCM must have the functionality to get a job list,
|	because a job which is issued without PCM,
|	for example jobs are issued by other pcs via network,
|	could be canceled from the PC using PCM.
|
| =81@  - IPP supports multi documents.
|
| =81@  - Open, StartJob, StartDoc, Read/Write, EndDoc, EndJob,
|	Close and Cancel Job are needed.
|
| =81@  - StartJob and CancelJob specify JobID.
|=20
|   - Vector
| =81@  - APIs related to Image need pitch, the number of byte per =
line.
|
| =81@  - ENUM was requested, because the data size is too big
|	if printing option has only a character string.
|
| =81@  - There was a request to make the bit flag of Querry function =
ENUM.
|
| =81@  - There was a request to define a Capability gotten by
|	QuerryDeviceInfo function.
|
| =81@  - Mark wanted to support engine functions. After discussion,
|	we decided it's unnecessary because a driver can support all.
|
| =81@  - Cast definition: The name should be renamed, for example =
FSGPD_INT32,
|	FSGPD_INT64, FSGPD_BIT8. ENUM should be renamed, too.
|
| =81@  - String may be better than float=81H
|
| =81@  - The definition of char[1] of pdBrushData is wrong.
|
| =81@  - Sample implementation should follow the specification of =
C-Language.
| =81@=81@   Comment should be /*    */.
| =81@=81@  A line should be less than 70 characters.
|	=81iIn some cases, if a line is more than 70 characters,
|	  a part of code could be omitted.)
|
| =81@=81@  /* End of File */ should be put.
|
| =81@  - Conformance Matrix is necessary.
| =81@=81@  Category: PDA, Home, Business Office, and Production
| =81@=81@  The specification should be defined for each use-case.
| =81@=81@  =81iFor example, the function XXX is MUST in case of
|	  Home or upper cases.=81j
|=20
|   - PAPI
| =81@  - In Solaris10, PAPI is implemented.
|=20
|   -Steering Committee
| =81@  - Mark will resign. A new char is needed.
|       - Norm will consider in 30 days.
|
|   =81@- Does OpenPrinting WG move under PWG?
|		> No, we don't move.
|	- Because PWG forcus to new standard that free from platform (OS)
|	  dependency, but FSG forcus standard on Linux.
|		> If we move to PWG, we need change the forcus.
|		> OPFC member and IPA will confusing if we move.
|
|	- Member increase will independent from which we join PWG or FSG.
|=20
|   =81@- How can we increase the number of participants of =
OpenPrinting=81H
| =81@  =81@Make public the alpha version of imprementation for =
promotion.
| =81@=81@  Collect existent sample implementation.
| =81@=81@=81@  PAPI, Vector/Raster may be used as it is.
| =81@=81@=81@  PCM Plug-in needs to modify Bi-di Plug-in.
| =81@=81@=81@  How about PCM=81H=20
|		US team hasn't investigated it yet.
| =81@=81@  The implementation will be done from Feb. to Mar. in 2005.
| =81@=81@  Japan team will discuss organization for the implementation =
on 10th, Dec.
|=20
|   =81@- IPA
| =81@  =81@Who will become a owner for PAPI and JTAPI=81H
| =81@=81@    Japan team will discuss it on 10th, Dec..
|=20
|   =81@- Process for defining the specification
| =81@  =81@  Mr. Higuchi is a champion for Vector/PCM Plug-in.
|=20
| =81@=81@- Is an exception of API definition of 3 type linking okey?
|		> No.
|	- This point is not must Item in specification.
|=20
|     - Capability group
|       - Glen and Norm had interesting but can't lead the group.
|       - Japan team and US team will discuss it respectively,
|	  and then disscuss again in the next SC meeting.
|=20
|   =81@- 2005 f2f meeting=20
| =81@  =81@Japan ... Mar. Apl. May   Osaka?
| =81@=81@  US ...... Sep. Oct. Nov.  New Orleans?
|=20
| 2. Theme for future=81iVector, Status, PCM.....=81B=81j
|=20
|   - PCM
|     - Continue to define the specification.
|	Mr. Ide will make the draft by Jan. 14th.
|     - The spec will be done in the next meeting.
|=20
|   - After the PAPI 1.0 specification is completed in the middle of =
Jan.,
|     we will integrate lower layers with PAPI.
|
|     - While we told in San Antonio that this could start from =
Feburary,
|	April will be better considering the cost of actual workload.
|       - Mr. Higuchi will confirm this point in SC meeting.
|=20
|   - JTAPI
|     - Who in FSG-JP group will lead the imprementation for IPA.
|     - Mr. Higuchi will send white paper to IPA.
|       - He will discuss the driving organization as well.
|       - Sun may become a company to lead the organization.
|=20
|   - Capability
|     - Mr. Kitayama will consider whether he can lead the group or =
not.
|=20
| 3. Relationship with Apple
|=20
|   - We had a meeting with Paul of Apple, who is responsible for =
printing
|     of MacOS X, on Nov. 11th.=20
|     - We explained the outline of Vector API..=20
|     - If things go well, Linux and MacOS X could use the same =
specification
|	in Vector.
|     - Mr. Mihara will confirm him the current status for next step.
|=20
| 4. Promotion (Each of OPWG and OPFC)
|   - 11/30: Internet Week 2004 BoF
|   - 12/ 3: Linux Consortium
|   - 12/ 6: Request to add Open Printing to Knoppix
|
| We must clear some points as below for spread OpenPrinting activity
| (1) How we can promote our activity to outside of group member?
|        - How non-member can know about OpenPrinting activity.
|		- especially Japanese non-member difficult to get information
|		  because they feel English as language barrier.
|		- Mailing List system and archives can't treat Japanese
|		  character correctry.
|        - How they can get outcomes of OpenPrinting?
|	 - How they question?
|
| (2) Relationship with the company or big user who want to use =
OpenPrinting
|        What to do with our WG activity?
|        What is Action Item for ?
|        Who are contact person?
| (3) Contact person of OpenPrinting in Japan.
|
|
| 5. sourceforge.jp
|=20
| 6. Others
| (1) FSG Board election
|     official announcement of an election: 12/16
|     voting period : 12/20-31
|=20
| Next Meeting : 2005/1/21
|=20

------_=_NextPart_000_01C4E858.0F485542--
