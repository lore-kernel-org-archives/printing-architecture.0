Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0A7B402@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 20 Dec 2004 08:01:13 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-2022-jp"
Subject: [Printing-architecture] RE: [printing-japan] Re: [opfc 1149] 12/10
	meeting minutes(draft)
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-japan@freestandards.org, printing-architecture@freestandards.org

Hello all,

It is possible someone translate the minutes of this meeting?   Of
particular interest to the US team is the 

1. JTAPI white-paper and follow-up activities, 
2. the discussion on PCM (especially considering the conversation at the San
Antonio meeting) 
3. the discussion the FSG/IPA-japan team has been having with Apple
4. all of the remaining topics below.

All of the discussions are of interest to the architecture team and to
specific group working US specifications.  


Thanks for help


虎谷です。

アクションアイテムについて、何点か補足します。
補足に関して、誤り・抜けがありましたら、御指摘ください。
宜しくお願いします。

以下、文中に補足します。
※SourceForgeやMLについての補足が多いので、確認して
　頂けると幸いです。

On Fri, 10 Dec 2004 17:55:07 +0900
Takaaki Higuchi <Takaaki.Higuchi@Sun.COM> wrote:

> 12/10(Fri) 15:00-18:00 at Sun Microsystems 山王オフィス
> 
> 出席者:	虎谷、三原、井手、松武、貫定、来山、丸山、大谷、志田、
> 	風穴、樋口、山岸
> 
> 1. SC Meeting概略と宿題
> 
>   - JTAPI
>     - 1.0の仕様が2005年1月に上がる
>     - 2004年6月に作成済みのJTAPI Whitepaperをどうするか
>       - 元々IPAに事前情報として出す位置づけで作成
>       - 今後、日本側で誰が責任をもって実装に挑むか、要検討
> 
>   - PCM、PCM Plug-in, SM
> 　  - PCMでは、USBのような低水準I/FとIPPのような高水準のプロトコルを同様に
処理
> 　　  デバイス、プロトコルの差異は、Plug-inで吸収
> 　  - PrintManagerが生成するJobIDと、IPPから得られるJobIDの対応をPCMが管理
> 　  - PCMを経由せず発行されたJob（例：ネットワーク経由で他のPCから発行され
たJob）
> 　  　を、PCM経由でCancel可とするためには、Job一覧を取得する機能がPCMに必
要
> 　  - IPPは複数ドキュメントもサポート
> 　  - Open, StartJob, StartDoc, Read/Write, EndDoc, EndJob, Close
> 　    その他、CancelJobが必要
> 　  - StartJob, CancelJobにはJobIDを指定
> 
>   - Vector
> 　  - Image系のAPIに、ピッチ（ライン当たりのバイト数）が必要
> 　  - 印刷オプションが文字列だけではデータサイズが大きいためENUMを定義して
欲しい
> 　  - Querry関数のビットフラグをENUMにして欲しい（具体的な例なし）
> 　  - QuerryDeviceInfo関数で取得できるCapabilityを定義すべき
> 　  - エンジン関数をサポートして欲しい（Mark）
> 　　  →　不要：ドライバ側で全てをサポートすれば良い
> 　  - 型定義　FSGPD_INT32, FSGPD_INT64, FSGPD_BIT8と定義すべき　ENUMも同様
> 　  - floatよりは文字列が良いのでは？
> 　  - pdBrushDataの char[1]の定義がおかしい
> 　  - サンプル実装は、C言語の仕様に沿うべき
> 　　  コメントは  /*    */
> 　　  １行は70文字以下（一部の実装で、１行が70文字を越えるとコードが省略さ
れる）
> 　　  /* End of File */ をつけるべき
> 　  - Conformance Matrixが必要
> 　　  PDA, ホーム、ビジネスオフィス、プロダクションに分類
> 　　  各々のユースケース向けに、API仕様を定義すべき
> 　　  （ホーム以上のユースケースでは、XXXの実装をMUSTとする、など）
> 
>   - PAPI
> 　  - Solaris10にPAPIを実装
> 
>   -Steering Committee
> 　  - Markが今年で辞めるので、新しいChairが必要
>       - Norm氏が30日以内に検討
>   　- PWG傘下に移動するか
> 　  　PWGはLinux以外の先進的な技術にフォーカス
> 　  　OpenPrintingは Linuxにフォーカス
> 　  　→　PWG傘下に移動すると、Linuxへのフォーカスが減る
> 　  　→　IPAを困惑させるかもしれない
> 　  　PWG傘下に移動しても、参加者が増える保証無し
> 　  　結論：FSG傘下に留まり参加者を募る
> 
>   　- OpenPrintingへ参加者をどう募るか？
> 　  　PR用のα版実装を公開する
> 　　  現在あるサンプル実装を寄せ集める
> 　　　  PAPI, Vector/Rasterはそのまま使えるかも
> 　　　  PCM Plug-inは、Bi-di Plug-inを改造
> 　　　  PCMはどうする？　←USで未検討
> 　　  2005/2〜3に実装
> 　　  実施体制については、日本に持ち帰り 12/10に検討
> 
>   　- IPA公募
> 　  　誰が PAPI＋JTAPIのオーナになるか？
> 　　  →　12/10の日本側の会議で体制を検討
> 
>   　- 仕様策定プロセス
> 　  　樋口さんが、Vector/PCM Plug-in のChampionに
> 
> 　　- 3 type linking typeのAPI定義の際の例外を許すか？
> 　　  - 例外を許すと言うのは仕様定義上美しくないので、
>         この要求自体を仕様の必須要件としない
> 
>     - Capability groupに関して
>       - GlenとNormは関心はあるがleadできない
>       - 日米双方で検討して次回のSCミーティングで話し合う
> 
>   　- 2005 f2f meeting 年に二回
> 　  　Japan ... Mar. Apl. May   大阪?
> 　　  US ...... Sep. Oct. Nov.  ニューオーリンズ？
> 
> 2. 今後の検討テーマ（Vector, Status, PCM.....。）
> 
>   - PCM
>     - 仕様策定に向けて進む。井手さんが1月14日までにドラフト作成
>     - 1月のミーティングで詰め。

       - StartJob, StartDoc, EndDoc, EndJob等を入れた仕様とする。
       - 何故その機能が必要なのかの理由も入れるのが良い。

>   - PAPI 1.0仕様確定が1月中に終わるので、それをもって、
>     PAPIから下までのインテグレーションを行う。
>     - 2月からできるよね、と言う話がUSで出ていたが、実作業のコスト
>       を考えると、JTAPIの実装と含めて4月以降できるほうがよいのでは
>       ないか。
>       - SCにその線で聞いてみる(樋口)
> 
>   - JTAPI
>     - 日本側で誰が責任を持って実装を推進するか（対IPA）
>     - IPAにWhite Paperを送る(樋口)
>       - 同時に推進体制に関して相談する
>       - Sunが幹事会社をできるかもしれない
> 
>   - Capabilityの推進をどうするか
>     - 来山さんができるかどうか検討する
> 
> 3. Apple（PWG絡み）との件
> 
>   - 11/11にMacOS XのPrintingの担当の方(Paul)と話をした
>     - Vector APIの説明をし、スペックを見てもらうと
>       いう話になっている。
>     - うまく行けば、Vectorに関してはLinuxとMacOS Xで
>       同じものが使えるようになるかもしれない
>     - その後の状態に関して、問い合わせる(三原)

       - 定期的な打ち合わせについても提案（三原さん）

> 4. PR（OPWGとOPFCとの絡み）
>   - 11/30: Internet Week 2004 BoF
>   - 12/ 3: Linux Consortium
>   - 12/ 6: Open PrintingをKnoppixへの収録以来

     - BOF アンケートをMLに流す（三原さん）

> (1) 外から見える枠組みに関して
>        OpenPrintingの活動／中身
>        成果物／メンテナンス等
> (2) OpenPrintingを採用したいベンダー／大口ユーザーに対して
>        何をすべき？
>        どこから手をつけるべき？
>        誰と／どこに連絡をすべき？
> (3) 検討グループへの参加
>        どこの／誰に連絡？
> 
> 5. sourceforge.jp

     - MLについては、FSGのMLの日本語問題が解決するまでの間、当面
       技術的な議論については sourceforge.jp に移行する
     - OPFCのMLは、契約等の手続き等用に絞る

     - EPSON KOWAさんのサイトから、sourceforge.jp へ、「最新ソースはこちら」
        のようなリンクを張ることについて検討する（来山さん）

     - 各社ドライバのダウンロードサイトから、sourceforge.jp へのリンクを張る
        ことについて検討する（来山さん、虎谷）

     - sourceforge.jp の扉サイトを英語化する（三原さん）

> 6. その他
> (1) FSG Board選挙
>     12/16公示予定
>     投票期間は12/20-31
> 
> 次回 1月21日(金)
> 
> 以上、
> 
> 樋口

-----------------------------------------
TORATANI Yasumasa
Computer Technology Development Dept. 12 CANON INC. Shimomaruko Office,
Japan


_______________________________________________
printing-japan mailing list
printing-japan@mail.freestandards.org
http://mail.freestandards.org/mailman/listinfo/printing-japan

