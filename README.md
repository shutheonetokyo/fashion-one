# FASHION-ONE

<img width="1422" alt="スクリーンショット 2022-03-06 15 12 33" src="https://user-images.githubusercontent.com/68746979/156911612-b18b46e9-6a5c-487d-8f39-e619f0983798.png">

## URL

下記URLにて公開中です。

https://fashion-one-app.herokuapp.com/

## アプリの概要

都内エリアのアパレルショップを、様々な情報や口コミを参考にしながら検索できるアプリです。

* 都内にあるお店を様々な条件で検索できる
* 行ったお店の口コミ投稿ができる
* 気になるお店を保存済み機能で保存することができる

## アプリの作成背景

ファッションが好きな私は、上京して初めて服を買おうとした時に土地勘が掴めておらず、どの地域にユニクロやH&Mなどがあるのか分からなかったので、最初のお店探しが大変でした。

もし複数のブランドやセレクトショップをひとつのサイトで検索でき、都内のある地域だけに絞って検索することができれば、服好きの人、都内に上京したばかりの人、観光で東京を訪れた人は便利に感じるのではないかと思い、この悩みを解決しようと思い、アプリ開発に至りました。

アパレル店舗といってもファストファッションからラグジュアリーブランドと、価格帯が大きいので、今回はユーザー人口が一番多い、ファストファッションやセレクトショップをジャンルメインのアプリにすることにしました。

## アプリの使い方

### お店の検索方法

<br>

* キーワード検索でお店を探すことができます。

<br>

![keyword-search](https://user-images.githubusercontent.com/68746979/156875727-0ed17962-4bbe-4c52-8758-f85b15b0f240.gif)

<br>

* エリアからお店を探すことができます。

<br>

![area-search](https://user-images.githubusercontent.com/68746979/156876574-9b5e658f-e153-47cd-a1fb-bada5d8f4b21.gif)

<br>

* ジャンルからお店を探すことができます。

<br>

![genre-search](https://user-images.githubusercontent.com/68746979/156876868-62750631-f003-40f6-9e16-119d9cb8c4ce.gif)

<br>

* ブランドからお店を探すことができます。

<br>

![brand-search](https://user-images.githubusercontent.com/68746979/156888825-488eb985-f83b-4426-93ca-4cd8cb229d3c.gif)

<br>

### 検索したお店を保存済みにすることができます。

<br>

![like](https://user-images.githubusercontent.com/68746979/156890693-4de8c118-4ec8-44bb-a268-7b60a8670342.gif)

<br>

### お店に対して口コミ投稿することができます。

<br>

![review2](https://user-images.githubusercontent.com/68746979/156910175-aa61d5be-a241-423d-bdd9-e3a0dadd1f64.gif)

<br>

### 保存済みしたお店、口コミ投稿したお店はマイページで確認できます。

<br>

![mypage](https://user-images.githubusercontent.com/68746979/156911748-cf926558-2078-4bcd-884a-f525b122a83e.gif)


## 機能一覧

|  | 機能 |Gem |
:---:|:---:|:---:|
| 1 | ログイン・ログアウト機能 | Devise |
| 2 | アカウント登録、マイページ編集機能 | Devise |
| 3 | アカウント削除機能 | Devise |
| 4 | ゲストログイン機能	| Devise |
| 5 | 検索機能 | Ransack |
| 6 | 画像投稿機能　| carriewave |
| 7 | ページネーション機能 | Kaminari |
| 8 | 管理者画面機能 | ActiveAdmin |
| 9 | レスポンシブデザイン機能 | Bootstrap |
| 10 | 口コミ投稿機能	| x |
| 11 | 保存済み機能(Ajax) | x |
| 12 | フラッシュメッセージ機能 | x |


## ER図

<img width="947" alt="スクリーンショット 2022-03-03 23 19 09" src="https://user-images.githubusercontent.com/68746979/156582987-528d674f-bbf9-45fd-a995-c34110951e14.png">

## 使用技術

* 言語：Ruby(3.0.0)
* フレームワーク：Ruby on Rails(6.1.4.1)
* フロントエンド：HTML&CSS/Bootstrap/JavaScript/jQuey
* DB：PostgreSQL
* インフラ：Heroku+AWS(S3)
* ソースコード管理：Github
* 開発環境：MacOS/Visual Studio Code

## 今後追加したい機能

* AWS（VPC、EC2、RDS、S3、IAM、Route53、ACMを使用）へのデプロイ(現在実装中)
* テスト(Rspec)を記述
