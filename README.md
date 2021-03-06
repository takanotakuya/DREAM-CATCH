<img src="https://user-images.githubusercontent.com/78135903/117132418-cafeb580-addd-11eb-914d-81850684e6d8.png" width="25%">
<br>
<br>
<!-- START doctoc -->
<!-- END doctoc -->

**目次**

- [アプリ名](#アプリ名)

- [概要](#概要)

- [開発状況](#開発状況)

- [制作背景(意図)](#制作背景意図)

- [利用方法](#利用方法)

- [DEMO](#DEMO)
  - [トップ画面](#トップ画面)
  - [アプリについて画面](#アプリについて画面)
  - [YouTubeAPI画面](#YouTubeAPI画面)
  - [名言API画面](#名言API画面)
  - [各「夢・やりたいこと・なりたい自分」一覧画面](#各夢やりたいことなりたい自分一覧画面)

- [工夫したポイント](#工夫したポイント)

- [苦労した点](#苦労した点)

- [使用技術(開発環境)](#使用技術開発環境)

- [課題](#課題)

- [今後実装したい機能](#今後実装したい機能)

- [注意点](#注意点)

<br>
<br>

# アプリ名

## DREAM CATCH

<br>
<br>

# 概要
自分の夢がない人へ、夢を見つけて頂くためだけのアプリです！<br>
イメージはグレードアップしたメモ帳のようなアプリです。<br>
やりたいこと・なりたい自分をメモ帳に記述して可視化する、<br>
そうしたら自ずと自身の目指していく道が見つかり、夢が見つかってきます。<br>
夢が見つかったらあとは夢を叶えるだけ！<br>
自分の夢に向かって全力疾走で走っていく、そんな希望を抱いてもらうために、このアプリを作成しました。<br>

<br>
<br>

# 開発状況
- 開発期間と平均作業時間
開発期間 : 4/22~5/6 (15日間)<br>
1日あたりの平均作業時間 : 9<br>
合計：135時間程度<br>

<br>
<br>

# 制作背景(意図)
近年の10代20代の若者は夢・やりたいこと・なりたい自分がわからないという人が多くいます。<br>
実際、私の周りでも「夢なんてないよ」「やりたいことか〜、今は特にないね」という友人や職場の同僚が多くいました。<br>
その若者に向けて少しでも夢・やりたいこと・なりたい自分を見つけて頂くための手助けになるよう、このアプリを作成しました。<br>

<br>
<br>

# 利用方法
- トップページでは、今自身が一番叶えたい「夢・やりたいこと・なりたい自分」を記述して頂きます。<br>
無いのであれば、記述はしなくて大丈夫です。見つけられた時に記述すれば無問題です。<br>
- そもそもやりたいこと等が見つけられない人々にはアプリの下記に設置してある3つのボタンがあります。<br>
「YouTubeAPI」 「名言API」 「元気が出るAPI」をクリックして頂きます。<br>
  - 「YouTubeAPI」<br>
ここでは、ヘッダーに夢が見つかるキーワード文字を画面に記述しています。<br>
それに合わせ検索して頂き、夢を見つけるためにはどうしたら良いかを、動画検索をして考えていただけるようになっています。<br>
YouTubeのAPIを導入したのも、若者が一番馴染みがあり利用しやすいと思ったからです！<br>
※ 動画再生は未実装<br>
  - 「名言API」<br>
ここでは、世界の有名な方々の名言集が掲載してあります。<br>
夢に向かって走っていた人は、どんな考えで・どんな思考で夢に向かっていったのかを一覧で見ることができるようにしています!<br>
  - 「元気が出るAPI」<br>
ここでは、世界の有名な方々のジョークが一覧で掲載してあります。<br>
鬱になる若者や、最悪自殺してしまう若者が多く日本にはいます。<br>
夢なんかばかばかしいと思っている若者もいます。<br>
そんな若者に向けて、ユーモア溢れるジョーク集を見てもらい、少しでも元気付けてもらえるよう、このページを作成しました。<br>
※ API情報取得までは実装しているが、画面に表示するのは未実装<br>
- 上記の過程を踏まえて、トップページから一覧ボタンをクリックするとToDoリストの画面にとび、箇条書きで「やりたいこと・なりたい自分」を記述していきます。<br>
それが達成できるたびに自分の自信となり、叶えたい夢が見つかっていき、最終的にはその夢に向かって走り抜く、<br>
そんな利用方法で夢を見つけて頂くアプリとなっています。<br>

<br>
<br>

# DEMO

### トップ画面
<img src="https://user-images.githubusercontent.com/78135903/117155922-2a69bf00-adf8-11eb-9d48-cb74829aa268.gif" width="25%">
<br>
<br>

### アプリについて画面
<img src="https://user-images.githubusercontent.com/78135903/117154603-fc37af80-adf6-11eb-9ec4-85ee6f75ee65.gif" width="25%">
<br>
<br>

### YouTubeAPI画面
<img src="https://user-images.githubusercontent.com/78135903/117157921-f68f9900-adf9-11eb-9493-2582974d9052.gif" width="25%">&nbsp;&nbsp;&nbsp;
<img src="https://user-images.githubusercontent.com/78135903/117158363-4e2e0480-adfa-11eb-88b2-fc27990730db.gif" width="25%">
<br>
<br>

### 名言API画面
<img src="https://user-images.githubusercontent.com/78135903/117159469-402cb380-adfb-11eb-92db-b0436b6c7be0.gif" width="25%">
<br>
<br>

### 各「夢・やりたいこと・なりたい自分」一覧画面
<img src="https://user-images.githubusercontent.com/78135903/117160118-cfd26200-adfb-11eb-8da5-6b1fa29d1ccb.gif" width="25%">&nbsp;&nbsp;&nbsp;
<img src="https://user-images.githubusercontent.com/78135903/117161232-b5e54f00-adfc-11eb-83fd-09e16c802fe8.gif" width="25%">&nbsp;&nbsp;&nbsp;
<img src="https://user-images.githubusercontent.com/78135903/117162342-a4507700-adfd-11eb-9731-5c8fc4e70afd.gif" width="25%">
<br>
<br>

<br>
<br>
<br>

# 工夫したポイント
- APIの導入事態が初めてで未知数であったが、YouTubeでの学習やUdemyの有料学習サイト、図書館で本を借りて一から調べながら実装を行ないました。<br>
- コードの可読性に関して、プロの皆様から見たらまだまだご指摘いただく部分が多いと思うが、メソッドの定義やstoryboardの配置をできるだけわかりやすく作成しました。<br>
- 現状はアプリを立ち上げたらすぐにメモ画面に遷移してしまうが、理想はこのアプリを立ち上げたらアプリの説明がでてきて、どんなアプリになのかを紹介するページを作成したかったです。<br>
しかし技量不足もあり、説明文をどこかで賄えないかという考えから、トップページから「アプリについて」ボタンを作り、アプリ紹介のページを作成しました。<br>
- ToDoリスト画面では、よりデザインをシンプルにしてユーザーの使い勝手をイメージして実装を行なっていきました。<br>
- このアプリにあったら便利なAPIを調べ、その上で抜粋した3つのAPIのため、よりユーザー視点に立ちペルソナ(10代20代の若者)に影響を与えてくれるAPIを導入したことです。<br>

<br>
<br>

# 苦労した点
- swiftは今までで全く触れたことがなかった言語のため、一から学習していき、学習しながら実装を行なっていきました。<br>
そのため手探りでの実装を行なっていき、一つの機能にどれほどの時間がかかるのか想定が難しかったため、時間配分が難しかったです。<br>
- エラーに関して、以前プログラミングをしていた言語Rubyと違い、どこが原因でエラーがでているのか把握するまでに数時間・数日と時間を費やしたことです。<br>
- もっと多くの機能や実装を行いたかったのですが、現段階での技量での実装しかできなかったです。<br>
理想となるアプリになるまでは、まだまだ学習が必要であると再認識しました。<br>
- APIの導入の際、JSON形式を取得する方法やCodableの使い方、一つひとつのコードを理解が難しかったです。<br>

<br>
<br>

# 使用技術(開発環境)

#### バックエンド
Swift, Alamofire, Foundation

#### フロントエンド
storyboard, UIKit, Nuke, iPhone 11

#### ソース管理
GitHub, GitHubDesktop

#### エディタ
XCode
<br>
<br>

# 課題
- トップページでの入力後の保存機能の実装。<br>
- YouTubeAPIでは検索はできるが、動画の再生まではできない形となっている。そのため動画再生の実装。<br>
検索後のページをクリックすると画面遷移に一部エラーが出ている。その箇所の修正。<br>
※現在はコメントアウトしてあります<br>
- 元気が出るAPIではAPI情報の取得までは実装してあるが、アプリ画面に表示する点ではまだ未実装になっている。<br>
そのためアプリ画面に表示する実装を行う。<br>
※現在はファイル内で一部コメントアウトしてあります<br>
- 名言API画面では、全て英語表記となっているため日本語対応にする。
- 開発ではiPhone 11を使用して行なった。そのため他の端末ではビュー崩れがおきるため画面の修正を行う。<br>
トップページではスクロールに対応できていないため、スクロールに対応させる。<br>

<br>
<br>

# 今後実装したい機能
- トップページでの入力バーの隣にラジオボタンを作成して、<br>
  - やりたいことを入力欄の隣に　→　今日・1週間・1ヶ月・半年のラジオボタンを作成<br>
  - なりたい自分を入力欄の隣に　→　1年後・3年後・5年後のラジオボタンを作成<br>
上記ボタンを作成して、ユーザーが入力して終わりにするのではなく、自身で日数を指定することにより、達成意欲を沸かせるための実装。<br>
- ToDo画面ではチェックマークをつけられるようにして、達成したものに関してはレ点を入れられるようにする。<br>
- アプリに通知機能を導入して、朝7時・夜20時に通知ができるようにする。<br>
具体的には、<br>
  - 朝7時の通知　本日も夢に向かって行動していきましょう!!<br>
  - 夜20時の通知　本日はやりたいことが達成できましたか?<br>
上記のようにアプリから携帯に通知を行い、ユーザーが自身の記述した内容を記述だけで終わることなく、実際に行動できたかを促すために実装する。<br>
通知すれば、ユーザーが中途半端に1日を終わることなく、充実した日々を過ごせるための機能。<br>

<br>
<br>

# 注意点
- YouTubeAPIでは無料枠での通信となっているので、通信が一定以上経過したらビューが表示されなくなる場合があります。
