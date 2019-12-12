# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lady = Category.create(:name=>"レディース")

lady_tops = lady.children.create(:name=>"トップス")
lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
lady_pants = lady.children.create(:name=>"パンツ")
lady_skirt = lady.children.create(:name=>"スカート")
lady_onepiece = lady.children.create(:name=>"ワンピース")
lady_shoes = lady.children.create(:name=>"靴")
lady_room = lady.children.create(:name=>"ルームウェア・パジャマ")
lady_leg = lady.children.create(:name=>"レッグウェア")
lady_hat = lady.children.create(:name=>"帽子")
lady_bag = lady.children.create(:name=>"バッグ")
lady_accessories = lady.children.create(:name=>"アクセサリー")
lady_hear = lady.children.create(:name=>"ヘアアクセサリー")
lady_small = lady.children.create(:name=>"小物")
lady_clock = lady.children.create(:name=>"時計")

lady_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"シャツ/ブラウス（半袖/袖なし）"},{:name=>"シャツ/ブラウス（七分/長袖）"},{:name=>"ポロシャツ"},{:name=>"キャミソール"},{:name=>"タンクトップ"},{:name=>"ホルターネック"},{:name=>"ニット/セーター"},{:name=>"チュニック"},{:name=>"カーディガン/ボレロ"},{:name=>"アンサンブル"},{:name=>"ベスト/ジレ"},{:name=>"パーカー"}])

lady_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ダウンベスト"},{:name=>"ジャンパー/ブルゾン"},{:name=>"ポンチョ"},{:name=>"ロングコート"},{:name=>"トレンチコート"},{:name=>"ダッフルコート"},{:name=>"ピーコート"}])

lady_pants.children.create([{:name=>"デニム/ジーンズ"}, {:name=>"ショートパンツ"}, {:name=>"カジュアルパンツ"},{:name=>"ハーフパンツ"},{:name=>"チノパン"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"クロップドパンツ"},{:name=>"サロペット/オーバーオール"},{:name=>"オールインワン"},{:name=>"サルエルパンツ"},{:name=>"ガウチョパンツ"},{:name=>"その他"}])

lady_skirt.children.create([{:name=>"ミニスカート"}, {:name=>"ひざ丈スカート"}, {:name=>"ロングスカート"},{:name=>"キュロット"},{:name=>"その他"}])

lady_onepiece.children.create([{:name=>"ミニスカート"}, {:name=>"ひざ丈スカート"}, {:name=>"ロングスカート"},{:name=>"その他"}])

lady_shoes.children.create([{:name=>"ハイヒール/パンプス"}, {:name=>"ブーツ"}, {:name=>"サンダル"},{:name=>"スニーカー"},{:name=>"ミュール"},{:name=>"モカシン"},{:name=>"ローファー/革靴"},{:name=>"フラットシューズ/バレエシューズ"},{:name=>"長靴"},{:name=>"その他"}])

lady_room.children.create([{:name=>"パジャマ"}, {:name=>"ルームウェア"}])

lady_leg.children.create([{:name=>"ソックス"}, {:name=>"スパッツ/レギンス"}, {:name=>"ストッキング/タイツ"}, {:name=>"レッグウォーマー"}, {:name=>"その他"}])

lady_leg.children.create([{:name=>"ニットキャップ/ビーニー"}, {:name=>"ハット"}, {:name=>"ハンチング/ベレー帽"}, {:name=>"キャップ"}, {:name=>"キャスケット"}, {:name=>"麦わら帽子"}, {:name=>"その他"}])

lady_leg.children.create([{:name=>"ハンドバッグ"}, {:name=>"トートバッグ"}, {:name=>"エコバッグ"}, {:name=>"リュック/バックパック"}, {:name=>"ボストンバック"}, {:name=>"スポーツバッグ"}, {:name=>"ショルダーバッグ"}, {:name=>"クラッチバッグ"}, {:name=>"ポーチ/バニティ"}, {:name=>"ボディバッグ／ウエストバッグ"}, {:name=>"マザーズバッグ"}, {:name=>"メッセンジャーバッグ"}, {:name=>"ビジネスバッグ"}, {:name=>"旅行用バッグ/キャリーバッグ"}])

lady_accessories.children.create([{:name=>"ネックレス"}, {:name=>"ブレスレット"}, {:name=>"バングル/リストバンド"}, {:name=>"リング"}, {:name=>"ピアス（片耳用）"}, {:name=>"ピアス（両耳用）"}, {:name=>"イヤリング"}, {:name=>"アンクレット"}, {:name=>"ブローチ/コサージュ"}, {:name=>"チャーム"}, {:name=>"その他"}])

lady_hear.children.create([{:name=>"ヘアゴム/シュシュ"}, {:name=>"ヘアバンド／カチューシャ"}, {:name=>"ヘアピン"}, {:name=>"その他"}])

lady_small.children.create([{:name=>"長財布"}, {:name=>"折財布"}, {:name=>"コインケース/小銭入れ"}, {:name=>"名刺入れ/定期入れ"}, {:name=>"キーケース"}, {:name=>"キーホルダー"}, {:name=>"手袋/アームカバー"}, {:name=>"ハンカチ"}, {:name=>"ベルト"}, {:name=>"マフラー/ショール"}, {:name=>"ストール/スヌード"}, {:name=>"バンダナ/スカーフ"}, {:name=>"ネックウォーマー"}, {:name=>"サスペンダー"}])

lady_clock.children.create([{:name=>"腕時計（アナログ）"}, {:name=>"腕時計（デジタル）"}, {:name=>"ラバーベルト"}, {:name=>"レザーベルト"}, {:name=>"金属ベルト"}, {:name=>"その他"}])

mens = Category.create(:name=>"メンズ")

mens_tops = mens.children.create(:name=>"トップス")
mens_jacket = mens.children.create(:name=>"ジャケット/アウター")
mens_pants = mens.children.create(:name=>"パンツ")
mens_shoes = mens.children.create(:name=>"靴")
mens_bag = mens.children.create(:name=>"バッグ")
mens_suit = mens.children.create(:name=>"スーツ")
mens_hat = mens.children.create(:name=>"帽子")
mens_accessories = mens.children.create(:name=>"アクセサリー")
mens_small = mens.children.create(:name=>"小物")
mens_clock = mens.children.create(:name=>"時計")
mens_swim = mens.children.create(:name=>"水着")
mens_leg = mens.children.create(:name=>"レッグウェア")
mens_under = mens.children.create(:name=>"アンダーウェア")
mens_other = mens.children.create(:name=>"その他")

mens_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"シャツ"},{:name=>"ポロシャツ"},{:name=>"タンクトップ"},{:name=>"ニット/セーター"},{:name=>"パーカー"},{:name=>"カーディガン"},{:name=>"スウェット"},{:name=>"ジャージ"},{:name=>"ベスト"},{:name=>"その他"}])

mens_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"},{:name=>"Gジャン/デニムジャケット"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ナイロンジャッケット"},{:name=>"フライトジャッケット"},{:name=>"ダッフルコート"},{:name=>"ピーコート"},{:name=>"ステンカラーコート"},{:name=>"トレンチコート"},{:name=>"モッズコート"}])

mens_pants.children.create([{:name=>"デニム/ジーンズ"}, {:name=>"ワークパンツ/カーゴパンツ"},{:name=>"スラックス"},{:name=>"チノパン"},{:name=>"ショートパンツ"},{:name=>"ペインターパンツ"},{:name=>"サルエルパンツ"},{:name=>"オーバーオール"},{:name=>"その他"}])

mens_shoes.children.create([{:name=>"スニーカー"}, {:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"モカシン"},{:name=>"ドレス/ビジネス"},{:name=>"長靴/レインシューズ"},{:name=>"デッキシューズ"},{:name=>"その他"}])

mens_bag.children.create([{:name=>"ショルダーバッグ"}, {:name=>"トートバッグ"},{:name=>"ボストンバック"},{:name=>"リュック/バックパック"},{:name=>"ウエストポーチ"},{:name=>"ボディーバッグ"},{:name=>"ドラムバッグ"},{:name=>"ビジネスバッグ"},{:name=>"トラベルバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"エコバッグ"},{:name=>"その他"}])

mens_suit.children.create([{:name=>"スーツジャケット"}, {:name=>"スーツベスト"},{:name=>"スラックス"},{:name=>"セットアップ"},{:name=>"その他"}])

mens_hat.children.create([{:name=>"キャップ"}, {:name=>"ハット"},{:name=>"ニットキャップ/ビーニー"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャスケット"},{:name=>"サンバイザー"},{:name=>"その他"}])

mens_accessories.children.create([{:name=>"ネックレス"}, {:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス（片耳用）"},{:name=>"ピアス（両耳用）"},{:name=>"アンクレット"},{:name=>"その他"}])

mens_small.children.create([{:name=>"長財布"}, {:name=>"折財布"},{:name=>"マネークリップ"},{:name=>"コインケース/小銭入れ"},{:name=>"名刺入れ/定期入れ"},{:name=>"キーケース"},{:name=>"キーホルダー"},{:name=>"ネクタイ"},{:name=>"手袋"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"ストール"},{:name=>"バンダナ"}])

mens_clock.children.create([{:name=>"腕時計（アナログ）"}, {:name=>"腕時計（デジタル）"},{:name=>"ラバーベルト"},{:name=>"レザーベルト"},{:name=>"金属ベルト"},{:name=>"その他"}])

mens_swim.children.create([{:name=>"一般水着"}, {:name=>"スポーツ用"},{:name=>"アクセサリー"},{:name=>"その他"}])

mens_leg.children.create([{:name=>"ソックス"}, {:name=>"レギンス/スパッツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}])

mens_under.children.create([{:name=>"トランクス"}, {:name=>"ボクサーパンツ"},{:name=>"その他"}])

kids = Category.create(:name=>"ベビー・キッズ")

kids_girl = kids.children.create(:name=>"ベビー服（女の子用）~95cm")
kids_boy = kids.children.create(:name=>"ベビー服（男の子用）~95cm")
kids_baby = kids.children.create(:name=>"ベビー服（男女兼用）~95cm")
kids_woman = kids.children.create(:name=>"キッズ服（女の子用）100cm")
kids_man = kids.children.create(:name=>"キッズ服（男の子用）100cm")
kids_human = kids.children.create(:name=>"キッズ服（男女兼用）100cm")
kids_shoes = kids.children.create(:name=>"キッズ靴")
kids_small = kids.children.create(:name=>"子供用ファッション小物")
kids_bath = kids.children.create(:name=>"おむつ/トイレ/バス")
kids_out = kids.children.create(:name=>"外出/移動用品")
kids_milk = kids.children.create(:name=>"授乳/食事")
kids_bed = kids.children.create(:name=>"ベビー家具/寝具/室内用品")
kids_toy = kids.children.create(:name=>"おもちゃ")
kids_event = kids.children.create(:name=>"行事/記念品")

kids_girl.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},{:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンバース"},{:name=>"その他"}])

kids_boy.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンバース"},{:name=>"その他"}])

kids_baby.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンバース"},{:name=>"その他"}])

kids_woman.children.create([{:name=>"コート"}, {:name=>"ジャケット/上着"},{:name=>"トップス(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(チュニック)"},{:name=>"トップス(タンクトップ)"},{:name=>"スカート"},{:name=>"パンツ"},{:name=>"ワンピース"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"}])

kids_man.children.create([{:name=>"コート"}, {:name=>"ジャケット/上着"},{:name=>"トップス(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(その他)"},{:name=>"パンツ"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"},{:name=>"浴衣"},{:name=>"基平"},{:name=>"水着"},{:name=>"その他"}])

kids_human.children.create([{:name=>"コート"}, {:name=>"ジャケット/上着"},{:name=>"トップス(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(その他)"},{:name=>"ボトムス"},{:name=>"パジャマ"},{:name=>"その他"}])

kids_shoes.children.create([{:name=>"スニーカー"}, {:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"長靴"},{:name=>"その他"}])

kids_small.children.create([{:name=>"靴下/スパッツ"}, {:name=>"帽子"},{:name=>"エプロン"},{:name=>"サスペンダー"},{:name=>"タイツ"},{:name=>"ハンカチ"},{:name=>"バンダナ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"傘"},{:name=>"手袋"},{:name=>"スタイ"},{:name=>"バック"},{:name=>"その他"}])

kids_bath.children.create([{:name=>"おむつ用品"}, {:name=>"おまる/補助便器"},{:name=>"トレーニングパンツ"},{:name=>"ベビーパス"},{:name=>"お風呂用品"},{:name=>"その他"}])

kids_out.children.create([{:name=>"ベビーカー"}, {:name=>"抱っこひも/スリング"},{:name=>"チャイルドシート"},{:name=>"その他"}])

kids_milk.children.create([{:name=>"ミルク"}, {:name=>"ベビーフード"},{:name=>"ベビー用食器"},{:name=>"その他"}])

kids_bed.children.create([{:name=>"ベッド"}, {:name=>"布団/毛布"},{:name=>"イス"},{:name=>"タンス"},{:name=>"その他"}])

kids_toy.children.create([{:name=>"おふろのおもちゃ"}, {:name=>"がらがら"},{:name=>"オルゴール"},{:name=>"ベビージム"},{:name=>"手押し車/カタカタ"},{:name=>"知育玩具"},{:name=>"その他"}])

kids_event.children.create([{:name=>"お宮参り用品"}, {:name=>"お食い初め用品"},{:name=>"アルバム"},{:name=>"手形/足形"},{:name=>"その他"}])

home = Category.create(:name=>"インテリア・住まい・小物")

home_kitchen = home.children.create(:name=>"キッチン/食器")
home_bed = home.children.create(:name=>"ベッド/マットレス")
home_sofa = home.children.create(:name=>"ソファ/ソファベッド")
home_chair = home.children.create(:name=>"椅子/チェア")
home_desk = home.children.create(:name=>"机/テーブル")
home_storage = home.children.create(:name=>"収納家具")
home_mat = home.children.create(:name=>"ラブ/カーペット/マット")
home_curtain = home.children.create(:name=>"カーテン/ブラインド")
home_light = home.children.create(:name=>"ライト/照明")
home_bedding = home.children.create(:name=>"寝具")
home_small = home.children.create(:name=>"インテリア小物")
home_event = home.children.create(:name=>"季節/年中行事")
home_other = home.children.create(:name=>"その他")

home_kitchen.children.create([{:name=>"食器"}, {:name=>"調理器具"},{:name=>"収納/キッチン雑貨"},{:name=>"弁当用品"},{:name=>"カトラリー(スプーン等)"},{:name=>"テーブル用品"},{:name=>"容器"},{:name=>"エプロン"},{:name=>"アルコールグッズ"},{:name=>"浄水器"},{:name=>"その他"}])

home_bed.children.create([{:name=>"セミシングルベッド"}, {:name=>"シングルベッド"},{:name=>"セミダブルベッド"},{:name=>"ダブルベッド"},{:name=>"ワイドダブルベッド"},{:name=>"クイーンベッド"},{:name=>"キングベッド"},{:name=>"脚付きマットレスベッド"},{:name=>"マットレス"},{:name=>"すのこベッド"},{:name=>"ロフトベッド/システムベッド"},{:name=>"簡易ベッド/折りたたみベッド"},{:name=>"収納付き"},{:name=>"その他"}])

home_sofa.children.create([{:name=>"ソファベッド"}, {:name=>"シングルソファ"},{:name=>"ラブソファ"},{:name=>"トリプルソファ"},{:name=>"オットマン"},{:name=>"コーナーソファ"},{:name=>"ビーズソファ/クッションソファ"},{:name=>"ローソファ/フロアソファ"},{:name=>"ソファベッド"},{:name=>"応接セット"},{:name=>"ソファカバー"},{:name=>"リクライニングソファ"},{:name=>"その他"}])

home_chair.children.create([{:name=>"一般"}, {:name=>"スツール"},{:name=>"ダイニングチェア"},{:name=>"ハイパックチェア"},{:name=>"ロッキングチェア"},{:name=>"座椅子"},{:name=>"折りたたみ椅子"},{:name=>"デスクチェア"},{:name=>"その他"}])

home_desk.children.create([{:name=>"こたつ"}, {:name=>"カウンターテーブル"},{:name=>"サイドテーブル"},{:name=>"センターテーブル"},{:name=>"ダイニングテーブル"},{:name=>"座卓/ちゃぶ台"},{:name=>"アウトドア用"},{:name=>"パソコン用"},{:name=>"事務机/学習机"},{:name=>"その他"}])

home_storage.children.create([{:name=>"リビング収納"}, {:name=>"キッチン収納"},{:name=>"玄関/屋外収納"},{:name=>"バス/トイレ収納"},{:name=>"本収納"},{:name=>"本/CD/DVD収納"},{:name=>"洋服タンス/押入れ収納"},{:name=>"電話台/ファックス台"},{:name=>"ドレッサー/鏡台"},{:name=>"棚/ラック"},{:name=>"ケース/ボックス"},{:name=>"その他"}])

home_mat.children.create([{:name=>"ラグ"}, {:name=>"カーペット"},{:name=>"ホットカーペット"},{:name=>"玄関/キッチンマット"},{:name=>"トイレ/バスマット"},{:name=>"その他"}])

home_curtain.children.create([{:name=>"カーテン"}, {:name=>"ブラインド"},{:name=>"ロールスクリーン"},{:name=>"のれん"},{:name=>"その他"}])

home_light.children.create([{:name=>"蛍光灯/電球"}, {:name=>"天井照明"},{:name=>"フロアスタンド"},{:name=>"その他"}])

home_bedding.children.create([{:name=>"布団/毛布"}, {:name=>"枕"},{:name=>"シーツ/カバー"},{:name=>"その他"}])

home_small.children.create([{:name=>"ゴミ箱"}, {:name=>"ウェルカムボード"},{:name=>"オルゴール"},{:name=>"クッション"},{:name=>"クッションカバー"},{:name=>"スリッパラック"},{:name=>"ティッシュボックス"},{:name=>"バスケット/かご"},{:name=>"フォトフレーム"},{:name=>"マガジンラック"},{:name=>"モビール"},{:name=>"花瓶"},{:name=>"灰皿"},{:name=>"傘立て"}])

home_event.children.create([{:name=>"正月"}, {:name=>"成人式"},{:name=>"バレンタインデー"},{:name=>"ひな祭り"},{:name=>"子どもの日"},{:name=>"母の日"},{:name=>"父の日"},{:name=>"サマーギフト/お中元"},{:name=>"夏/夏休み"},{:name=>"ハロウィン"},{:name=>"敬老の日"},{:name=>"七五三"},{:name=>"お歳暮"},{:name=>"クリスマス"}])

book = Category.create(:name=>"本・音楽・ゲーム")

book_book = book.children.create(:name=>"本")
book_manga = book.children.create(:name=>"漫画")
book_magazine = book.children.create(:name=>"雑誌")
book_cd = book.children.create(:name=>"CD")
book_dvd = book.children.create(:name=>"DVD／ブルーレイ")
book_record = book.children.create(:name=>"レコード")
book_tv = book.children.create(:name=>"テレビゲーム")

book_book.children.create([{:name=>"文学/小説"}, {:name=>"人文/社会"},{:name=>"ノンフィクション/教養"},{:name=>"地図/旅行/ガイド"},{:name=>"ビジネス/経済"},{:name=>"健康/医学"},{:name=>"コンピュータ/IT"},{:name=>"趣味/スポーツ/実用"},{:name=>"住まい/暮らし/子育て"},{:name=>"アート/エンタメ"},{:name=>"洋書"},{:name=>"絵本"},{:name=>"参考書"},{:name=>"その他"}])

book_manga.children.create([{:name=>"全巻セット"}, {:name=>"少年漫画"},{:name=>"少女漫画"},{:name=>"青年漫画"},{:name=>"女性漫画"},{:name=>"同人誌"},{:name=>"その他"}])

book_magazine.children.create([{:name=>"アート/エンタメ/ホビー"}, {:name=>"ファッション"},{:name=>"ニュース/総合"},{:name=>"趣味/スポーツ"},{:name=>"その他"}])

book_cd.children.create([{:name=>"邦楽"}, {:name=>"洋楽"},{:name=>"アニメ"},{:name=>"クラシック"},{:name=>"K-POP/アジア"},{:name=>"キッズ/ファミリー"},{:name=>"その他"}])

book_dvd.children.create([{:name=>"外国映画"}, {:name=>"日本映画"},{:name=>"アニメ"},{:name=>"TVドラマ"},{:name=>"ミュージック"},{:name=>"お笑い/バラエティ"},{:name=>"スポーツ/フィットネス"},{:name=>"キッズ/ファミリー"},{:name=>"その他"}])

book_record.children.create([{:name=>"邦楽"}, {:name=>"洋楽"},{:name=>"その他"}])

book_tv.children.create([{:name=>"家庭用ゲーム本体"}, {:name=>"家庭用ゲームソフト"},{:name=>"携帯用ゲーム本体"},{:name=>"携帯用ゲームソフト"},{:name=>"PC用ゲーム"},{:name=>"その他"}])

toy = Category.create(:name=>"おもちゃ・ホビー・グッズ")

toy_toy = toy.children.create(:name=>"おもちゃ")
toy_talent = toy.children.create(:name=>"タレントグッズ")
toy_comic = toy.children.create(:name=>"コミック/アニメグッズ")
toy_card = toy.children.create(:name=>"トレーディングカード")
toy_figure = toy.children.create(:name=>"フィギュア")
toy_music = toy.children.create(:name=>"楽器/器材")
toy_collection = toy.children.create(:name=>"コレクション")
toy_military = toy.children.create(:name=>"ミリタリー")
toy_art = toy.children.create(:name=>"美術品")
toy_artitem = toy.children.create(:name=>"アート用品")
toy_other = toy.children.create(:name=>"その他")

toy_toy.children.create([{:name=>"キャラクターグッズ"}, {:name=>"ぬいぐるみ"},{:name=>"小物/アクセサリー"},{:name=>"模型/プラモデル"},{:name=>"ミニカー"},{:name=>"トイラジコン"},{:name=>"プラモデル"},{:name=>"ホビーラジコン"},{:name=>"鉄道模型"},{:name=>"その他"}])

toy_talent.children.create([{:name=>"アイドル"}, {:name=>"ミュージシャン"},{:name=>"タレント/お笑い芸人"},{:name=>"スポーツ選手"},{:name=>"その他"}])

toy_comic.children.create([{:name=>"ストラップ"}, {:name=>"キーホルダー"},{:name=>"バッジ"},{:name=>"カード"},{:name=>"クリアファイル"},{:name=>"ポスター"},{:name=>"タオル"},{:name=>"その他"}])

toy_card.children.create([{:name=>"遊戯王"}, {:name=>"マジック:ザ・ギャザリング"},{:name=>"ポケモンカード"},{:name=>"デュエルマスターズ"},{:name=>"バトルスピリッツ"},{:name=>"プリパラ"},{:name=>"アイカツ"},{:name=>"カードファイト!!ヴァンガード"},{:name=>"ヴェイスシュヴァルツ"},{:name=>"プロ野球オーナーズリーグ"},{:name=>"ベースボールヒーローズ"},{:name=>"ドラゴンボール"},{:name=>"スリーブ"},{:name=>"その他"}])

toy_figure.children.create([{:name=>"コミック／アニメ"}, {:name=>"特撮"},{:name=>"ゲームキャラクター"},{:name=>"SF／ファンタジー/ホラー"},{:name=>"アメコミ"},{:name=>"スポーツ"},{:name=>"ミリタリー"},{:name=>"その他"}])

toy_music.children.create([{:name=>"エレキギター"}, {:name=>"アコースティックギター"},{:name=>"ベース"},{:name=>"エフェクター"},{:name=>"アンプ"},{:name=>"弦楽器"},{:name=>"管楽器"},{:name=>"鍵盤楽器"},{:name=>"打楽器"},{:name=>"和楽器"},{:name=>"楽譜/スコア"},{:name=>"レコーディング/PA器材"},{:name=>"DJ機材"},{:name=>"DTM/DAW"}])

toy_collection.children.create([{:name=>"武器"}, {:name=>"使用済み切手/官製はがき"},{:name=>"旧貨幣/金貨/記念硬貨"},{:name=>"印刷物"},{:name=>"ノベルティグッズ"},{:name=>"その他"}])

toy_military.children.create([{:name=>"トイガン"}, {:name=>"個人装備"},{:name=>"その他"}])

toy_art.children.create([{:name=>"陶芸"}, {:name=>"ガラス"},{:name=>"漆芸"},{:name=>"金属工芸"},{:name=>"絵画/タベストリ"},{:name=>"版画"},{:name=>"彫刻/オブジェクト"},{:name=>"書"},{:name=>"写真"},{:name=>"その他"}])

toy_artitem.children.create([{:name=>"画材"}, {:name=>"額縁"},{:name=>"その他"}])

toy_other.children.create([{:name=>"トランプ/UNO"}, {:name=>"カルタ/百人一首"},{:name=>"ダーツ"},{:name=>"ビリヤード"},{:name=>"麻雀"},{:name=>"パズル/ジグソーパズル"},{:name=>"囲碁/将棋"},{:name=>"オセロ/チェス"},{:name=>"人生ゲーム"},{:name=>"野球/サッカーゲーム"},{:name=>"スポーツ"},{:name=>"三輪車/乗り物"},{:name=>"ヨーヨー"},{:name=>"模型製作用品"}])

beauty = Category.create(:name=>"コスメ・香水・美容")

beauty_base = beauty.children.create(:name=>"ベースメイク")
beauty_up = beauty.children.create(:name=>"メイクアップ")
beauty_nail = beauty.children.create(:name=>"ネイルケア")
beauty_perfume = beauty.children.create(:name=>"香水")
beauty_skin = beauty.children.create(:name=>"スキンケア/基礎/化粧品")
beauty_hear = beauty.children.create(:name=>"ヘアケア")
beauty_body = beauty.children.create(:name=>"ボディケア")
beauty_all = beauty.children.create(:name=>"オーラルケア")
beauty_relax = beauty.children.create(:name=>"リラクゼーション")
beauty_diet = beauty.children.create(:name=>"ダイエット")
beauty_other = beauty.children.create(:name=>"その他")

beauty_base.children.create([{:name=>"ファンデーション"}, {:name=>"化粧下地"},{:name=>"コントロールカラー"},{:name=>"BBクリーム"},{:name=>"CCクリーム"},{:name=>"コンシーラー"},{:name=>"フェイスパウダー"},{:name=>"トライアルセット/サンプル"},{:name=>"その他"}])

beauty_up.children.create([{:name=>"アイシャドウ"}, {:name=>"口紅"},{:name=>"リップグロス"},{:name=>"リップライナー"},{:name=>"チーク"},{:name=>"フェイスカラー"},{:name=>"マスカラ"},{:name=>"アイライナー/サンプル"},{:name=>"つけまつげ"},{:name=>"アイブロウペンシル"},{:name=>"パウダーアイブロウ"},{:name=>"眉マスカラ"},{:name=>"トライアルセット/サンプル"},{:name=>"メイク道具/化粧小物"}])

beauty_nail.children.create([{:name=>"ネイルカラー"}, {:name=>"カラージェル"},{:name=>"ネイルベースコート/トップコート"},{:name=>"ネイルアート用品"},{:name=>"ネイルパーツ"},{:name=>"ネイルチップ"},{:name=>"ネイルパーツ"},{:name=>"ネイルチップ/付け爪"},{:name=>"手入れ用具"},{:name=>"除光液"},{:name=>"その他"}])

beauty_perfume.children.create([{:name=>"香水(女性用)"}, {:name=>"香水(男性用)"},{:name=>"ユニセックス"},{:name=>"ボディミスト"},{:name=>"その他"}])

beauty_skin.children.create([{:name=>"化粧水/ローション"}, {:name=>"乳液/ミルク"},{:name=>"美容液"},{:name=>"フェイスクリーム"},{:name=>"洗顔液"},{:name=>"クレンジング/メイク落とし"},{:name=>"パック/フェイスマスク"},{:name=>"ジェル/ゲル"},{:name=>"ブースター/導入液"},{:name=>"アイケア"},{:name=>"リップケア"},{:name=>"トライアルセット/サンプル"},{:name=>"洗顔グッズ"},{:name=>"その他"}])

beauty_hear.children.create([{:name=>"シャンプー"}, {:name=>"トリートメント"},{:name=>"コンディショナー"},{:name=>"リンス"},{:name=>"スタイリング剤"},{:name=>"カラーリング剤"},{:name=>"ブラシ"},{:name=>"その他"}])

beauty_body.children.create([{:name=>"オイル/クリーム"}, {:name=>"ハンドクリーム"},{:name=>"ローション"},{:name=>"日焼け止め/サンオイル"},{:name=>"ボディソープ"},{:name=>"入浴剤"},{:name=>"制汗/デオドラント"},{:name=>"フットケア"},{:name=>"その他"}])

beauty_all.children.create([{:name=>"口臭防止/エチケット用品"}, {:name=>"歯ブラシ"},{:name=>"その他"}])

beauty_relax.children.create([{:name=>"エッセンシャルオイル"}, {:name=>"芳香剤"},{:name=>"お香/香炉"},{:name=>"キャンドル"},{:name=>"リラクゼーション"},{:name=>"その他"}])

beauty_diet.children.create([{:name=>"ダイエット食品"}, {:name=>"エクササイズ用品"},{:name=>"体重計"},{:name=>"体脂肪計"},{:name=>"その他"}])

beauty_other.children.create([{:name=>"健康用品"}, {:name=>"看護/介護用品"},{:name=>"救急/衛生用品"},{:name=>"その他"}])

iphone = Category.create(:name=>"家電・スマホ・カメラ")

iphone_iphone = iphone.children.create(:name=>"スマートフォン/携帯電話")
iphone_small = iphone.children.create(:name=>"スマホアクセサリー")
iphone_pc = iphone.children.create(:name=>"PC/タブレット")
iphone_camera = iphone.children.create(:name=>"カメラ")
iphone_tv = iphone.children.create(:name=>"テレビ/映像機器")
iphone_audio = iphone.children.create(:name=>"オーディオ機器")
iphone_health = iphone.children.create(:name=>"美容/健康")
iphone_air = iphone.children.create(:name=>"冷暖房/空調")
iphone_life = iphone.children.create(:name=>"生活家電")
iphone_other = iphone.children.create(:name=>"その他")

iphone_iphone.children.create([{:name=>"スマートフォン本体"}, {:name=>"バッテリー/充電器"},{:name=>"携帯電話本体"},{:name=>"PHS本体"},{:name=>"その他"}])

iphone_small.children.create([{:name=>"Androidケース"}, {:name=>"iPhoneケース"},{:name=>"カバー"},{:name=>"イヤホンジャック"},{:name=>"ストラップ"},{:name=>"フィルム"},{:name=>"自撮り棒"},{:name=>"その他"}])

iphone_pc.children.create([{:name=>"タブレット"}, {:name=>"ノートPC"},{:name=>"デスクトップ型PC"},{:name=>"ディスプレイ"},{:name=>"電子ブックリーダー"},{:name=>"PC周辺機器"},{:name=>"PCパーツ"},{:name=>"その他"}])

iphone_camera.children.create([{:name=>"デジタルカメラ"}, {:name=>"ビデオカメラ"},{:name=>"レンズ(単焦点)"},{:name=>"レンズ(ズーム)"},{:name=>"フィルムカメラ"},{:name=>"防犯カメラ"},{:name=>"その他"}])

iphone_tv.children.create([{:name=>"テレビ"}, {:name=>"プロジェクター"},{:name=>"ブルーレイレコーダー"},{:name=>"DVDレコーダー"},{:name=>"ブルーレイプレーヤー"},{:name=>"DVDプレーヤー"},{:name=>"映像用ケーブル"},{:name=>"その他"}])

iphone_audio.children.create([{:name=>"ポータブルプレイヤー"}, {:name=>"イヤホン"},{:name=>"ヘッドフォン"},{:name=>"アンプ"},{:name=>"スピーカー"},{:name=>"ケーブル/シールド"},{:name=>"ラジオ"},{:name=>"その他"}])

iphone_air.children.create([{:name=>"エアコン"}, {:name=>"空気清浄機"},{:name=>"加湿器"},{:name=>"扇風機"},{:name=>"除湿機"},{:name=>"ファンヒーター"},{:name=>"電気ヒーター"},{:name=>"オイルヒーター"},{:name=>"ストーブ"},{:name=>"ホットカーペット"},{:name=>"こたつ"},{:name=>"電気毛布"},{:name=>"その他"}])

iphone_life.children.create([{:name=>"冷蔵庫"}, {:name=>"洗濯機"},{:name=>"炊飯器"},{:name=>"電子レンジ/オーブン"},{:name=>"調理器具"},{:name=>"アイロン"},{:name=>"掃除機"},{:name=>"エスプレッソマシン"},{:name=>"コーヒーメーカー"},{:name=>"衣類乾燥機"},{:name=>"その他"}])

iphone_other.children.create([{:name=>"その他"}])

sports = Category.create(:name=>"スポーツ・レジャー")

sports_golf = sports.children.create(:name=>"ゴルフ")
sports_fish = sports.children.create(:name=>"フィッシング")
sports_bike = sports.children.create(:name=>"自転車")
sports_gym = sports.children.create(:name=>"トレーニング/エクササイズ")
sports_baseball = sports.children.create(:name=>"野球")
sports_soccer = sports.children.create(:name=>"サッカー/フットサル")
sports_tennis = sports.children.create(:name=>"テニス")
sports_snow = sports.children.create(:name=>"スノーボード")
sports_skiing = sports.children.create(:name=>"スキー")
sports_sports = sports.children.create(:name=>"その他スポーツ")
sports_outdoor = sports.children.create(:name=>"アウトドア")
sports_other = sports.children.create(:name=>"その他")

sports_golf.children.create([{:name=>"クラブ"}, {:name=>"ウエア(男性用)"},{:name=>"ウエア(女性用)"},{:name=>"バッグ"},{:name=>"シューズ(男性用)"},{:name=>"シューズ(女性用)"},{:name=>"アクセサリー"},{:name=>"その他"}])

sports_fish.children.create([{:name=>"ロッド"}, {:name=>"リール"},{:name=>"ルアー用品"},{:name=>"ウエア"},{:name=>"釣り糸/ライン"},{:name=>"その他"}])

sports_bike.children.create([{:name=>"自転車本体"}, {:name=>"ウエア"},{:name=>"パーツ"},{:name=>"アクセサリー"},{:name=>"バッグ"},{:name=>"工具/メンテナンス"},{:name=>"その他"}])

sports_gym.children.create([{:name=>"ランニング"}, {:name=>"ウォーキング"},{:name=>"ヨガ"},{:name=>"トレーニング用品"},{:name=>"その他"}])

sports_baseball.children.create([{:name=>"ウエア"}, {:name=>"シューズ"},{:name=>"グローブ"},{:name=>"バット"},{:name=>"アクセサリー"},{:name=>"防具"},{:name=>"練習機器"},{:name=>"記念品グッズ"},{:name=>"応援グッズ"},{:name=>"その他"}])

sports_soccer.children.create([{:name=>"ウエア"}, {:name=>"シューズ"},{:name=>"ボール"},{:name=>"アクセサリー"},{:name=>"記念品グッズ"},{:name=>"応援グッズ"},{:name=>"その他"}])

sports_tennis.children.create([{:name=>"ラケット(硬式用)"}, {:name=>"ラケット(軟式用)"},{:name=>"ウエア"},{:name=>"シューズ"},{:name=>"ボール"},{:name=>"アクセサリー"},{:name=>"記念品グッズ"},{:name=>"応援グッズ"},{:name=>"その他"}])

sports_snow.children.create([{:name=>"ボード"}, {:name=>"バインディング"},{:name=>"ブーツ(男性用)"},{:name=>"ブーツ(女性用)"},{:name=>"ブーツ(子供用)"},{:name=>"ウエア/装備(男性用)"},{:name=>"ウエア/装備(女性用)"},{:name=>"ウエア/装備(子ども用)"},{:name=>"アクセサリー"},{:name=>"バッグ"},{:name=>"その他"}])

sports_skiing.children.create([{:name=>"板"}, {:name=>"ブーツ(男性用)"},{:name=>"ブーツ(女性用)"},{:name=>"ブーツ(子供用)"},{:name=>"ビンディング"},{:name=>"ウエア/装備(男性用)"},{:name=>"ウエア/装備(女性用)"},{:name=>"ウエア/装備(子ども用)"},{:name=>"ストック"},{:name=>"その他"}])

sports_sports.children.create([{:name=>"ダンス/バレエ"}, {:name=>"サーフィン"},{:name=>"バスケットボール"},{:name=>"バドミントン"},{:name=>"バレーボール"},{:name=>"スケートボード"},{:name=>"陸上競技"},{:name=>"ラグビー"},{:name=>"アメリカンフットボール"},{:name=>"ボクシング"},{:name=>"ボウリング"},{:name=>"その他"}])

sports_outdoor.children.create([{:name=>"テント／タープ"}, {:name=>"ライト/ランタン"},{:name=>"寝袋/寝具"},{:name=>"テーブル/チェア"},{:name=>"ストーブ/コンロ"},{:name=>"調理器具"},{:name=>"食器"},{:name=>"登山用品"},{:name=>"その他"}])

sports_other.children.create([{:name=>"旅行用品"},{:name=>"その他"}])

made = Category.create(:name=>"ハンドメイド")

made_woman = made.children.create(:name=>"アクセサリー（女性用）")
made_small = made.children.create(:name=>"ファッション/小物")
made_clock = made.children.create(:name=>"アクセサリー/時計")
made_life = made.children.create(:name=>"日用品/インテリア")
made_toy = made.children.create(:name=>"趣味/おもちゃ")
made_kids = made.children.create(:name=>"キッズ/ベビー")
made_item = made.children.create(:name=>"素材/材料")
made_second = made.children.create(:name=>"二次創作物")
made_other = made.children.create(:name=>"その他")

made_woman.children.create([{:name=>"ピアス"}, {:name=>"イヤリング"},{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"リング"},{:name=>"チャーム"},{:name=>"ヘアゴム"},{:name=>"アンクレット"},{:name=>"その他"}])

made_small.children.create([{:name=>"バッグ(女性用)"}, {:name=>"バッグ(男性用)"},{:name=>"財布(女性用)"},{:name=>"財布(男性用)"},{:name=>"ファッション雑誌"},{:name=>"その他"}])

made_clock.children.create([{:name=>"アクセサリー(男性用)"}, {:name=>"時計(女性用)"},{:name=>"時計(男性用)"},{:name=>"その他"}])

made_life.children.create([{:name=>"キッチン用品"}, {:name=>"家具"},{:name=>"文房具"},{:name=>"アート/文具"}, {:name=>"アロマ/キャンドル"}, {:name=>"フラワーガーデン"}, {:name=>"その他"}])

made_toy.children.create([{:name=>"クラフト/布製品"}, {:name=>"おもちゃ/人形"}, {:name=>"その他"}])

made_kids.children.create([{:name=>"ファッション雑誌"}, {:name=>"スタイ/よだれかけ"}, {:name=>"外出用品"}, {:name=>"ネームタグ"}, {:name=>"その他"}])

made_item.children.create([{:name=>"各種パーツ"}, {:name=>"生地/糸"}, {:name=>"型紙/パターン"}, {:name=>"その他"}])

made_second.children.create([{:name=>"Ingress"}, {:name=>"クリエイターズ宇宙兄弟"}, {:name=>"シンデレラガールズCPグッズ"}])

ticket = Category.create(:name=>"チケット")

ticket_music = ticket.children.create(:name=>"音楽")
ticket_sports = ticket.children.create(:name=>"スポーツ")
ticket_theater = ticket.children.create(:name=>"演劇/芸能")
ticket_event = ticket.children.create(:name=>"イベント")
ticket_movie = ticket.children.create(:name=>"映画")
ticket_park = ticket.children.create(:name=>"施設利用券")
ticket_discount = ticket.children.create(:name=>"優待券/割引券")
ticket_other = ticket.children.create(:name=>"その他")

ticket_music.children.create([{:name=>"男性アイドル"}, {:name=>"女性アイドル"},{:name=>"韓流"},{:name=>"国内アーティスト"},{:name=>"海外アーティスト"},{:name=>"音楽フェス"},{:name=>"声優/アニメ"},{:name=>"その他"}])

ticket_sports.children.create([{:name=>"サッカー"}, {:name=>"野球"},{:name=>"テニス"},{:name=>"格闘技/プロレス"},{:name=>"相撲/武道"},{:name=>"ゴルフ"},{:name=>"バレーボール"},{:name=>"バスケットボール"},{:name=>"モータースポーツ"},{:name=>"ウィンタースポーツ"},{:name=>"その他"}])

ticket_theater.children.create([{:name=>"ミュージカル"}, {:name=>"演劇"},{:name=>"伝統芸能"},{:name=>"落語"},{:name=>"お笑い"},{:name=>"オペラ"},{:name=>"サーカス"},{:name=>"バレエ"},{:name=>"その他"}])

ticket_event.children.create([{:name=>"声優/アニメ"}, {:name=>"キッズ/ファミリー"},{:name=>"トークショー/講演会"},{:name=>"その他"}])

ticket_movie.children.create([{:name=>"邦画"}, {:name=>"洋画"},{:name=>"その他"}])

ticket_park.children.create([{:name=>"遊園地/テーマパーク"}, {:name=>"美術館/博物館"},{:name=>"スキー場"},{:name=>"ゴルフ場"},{:name=>"フィットネスクラブ"},{:name=>"プール"},{:name=>"ボウリング場"},{:name=>"水族館"},{:name=>"動物園"},{:name=>"その他"}])

ticket_discount.children.create([{:name=>"ショッピング"}, {:name=>"レストラン/食事券"},{:name=>"フード/ドリンク券"},{:name=>"宿泊券"},{:name=>"その他"}])

car = Category.create(:name=>"自動車・オートバイ")

car_car = car.children.create(:name=>"自動車本体")
car_tire = car.children.create(:name=>"自動車タイヤ/ホイール")
car_parts = car.children.create(:name=>"自動車パーツ")
car_item = car.children.create(:name=>"自動車アクセサリー")
car_motor = car.children.create(:name=>"オートバイ車体")
car_motorparts = car.children.create(:name=>"オートバイパーツ")
car_motoritem = car.children.create(:name=>"オートバイアクセサリー")

car_car.children.create([{:name=>"国内自動車本体"}, {:name=>"外国自動車本体"}])

car_tire.children.create([{:name=>"タイヤ/ホイールセット"}, {:name=>"タイヤ"}, {:name=>"ホイール"}, {:name=>"その他"}])

car_parts.children.create([{:name=>"サスペンション"}, {:name=>"ブレーキ"}, {:name=>"外装、エアロパーツ"}, {:name=>"ライト"}, {:name=>"内装品、シート"}, {:name=>"ステアリング"}, {:name=>"マフラー、排気系"}, {:name=>"エンジン、過給機、冷却装置"}, {:name=>"電装品"}, {:name=>"補強パーツ"}, {:name=>"凡用パーツ"}, {:name=>"外国自動車用パーツ"}, {:name=>"その他"}])

car_item.children.create([{:name=>"車内アクセサリー"}, {:name=>"カーナビ"}, {:name=>"カーオーディオ"}, {:name=>"車外アクセサリー"}, {:name=>"メンテナンス用品"}, {:name=>"チャイルドシート"}, {:name=>"ドライブレコーダー"}, {:name=>"レーダー探知機"}, {:name=>"カタログ/マニュアル"}, {:name=>"セキュリティ"}, {:name=>"ETC"}, {:name=>"その他"}])

car_motorparts.children.create([{:name=>"タイヤ"}, {:name=>"マフラー"}, {:name=>"エンジン、冷却装置"}, {:name=>"カウル、フェンダー、外装"}, {:name=>"サスペンション"}, {:name=>"ホイール"}, {:name=>"シート"}, {:name=>"ブレーキ"}, {:name=>"タンク"}, {:name=>"ライト、ウィンカー"}, {:name=>"チェーン、スプロケット、駆動系"}, {:name=>"メーター"}, {:name=>"電装系"}, {:name=>"ミラー"}])

car_motoritem.children.create([{:name=>"ヘルメット/シールド"}, {:name=>"バイクウエア/装備"}, {:name=>"アクセサリー"}, {:name=>"メンテナンス"}, {:name=>"カタログ/マニュアル"}, {:name=>"その他"}])

other = Category.create(:name=>"その他")

other_all = other.children.create(:name=>"まとめ売り")
other_pets = other.children.create(:name=>"ペット用品")
other_meal = other.children.create(:name=>"食品")
other_drink = other.children.create(:name=>"飲料/酒")
other_travel = other.children.create(:name=>"日用品/生活雑貨/旅行")
other_collection = other.children.create(:name=>"アンティーク/コレクション")
other_pen = other.children.create(:name=>"文房具/事務用品")
other_shop = other.children.create(:name=>"事務用品/店舗用品")
other_other = other.children.create(:name=>"その他")

other_pets.children.create([{:name=>"ペットフード"}, {:name=>"犬用品"}, {:name=>"猫用品"}, {:name=>"魚用品/水草"}, {:name=>"小動物用品"}, {:name=>"爬虫類/両生類用品"}, {:name=>"かご/おり"}, {:name=>"鳥用品"}, {:name=>"虫類用品"}, {:name=>"その他"}])

other_meal.children.create([{:name=>"菓子"}, {:name=>"米"}, {:name=>"野菜"}, {:name=>"果物"}, {:name=>"調味料"}, {:name=>"魚介類(加工食品)"}, {:name=>"肉類(加工食品)"}, {:name=>"その他 加工食品"},  {:name=>"その他"}])

other_drink.children.create([{:name=>"コーヒー"}, {:name=>"ソフトドリンク"}, {:name=>"ミネラルウォーター"}, {:name=>"茶"}, {:name=>"ウイスキー"}, {:name=>"ワイン"}, {:name=>"ブランデー"}, {:name=>"焼酎"},  {:name=>"日本酒"}, {:name=>"ビール、発泡酒"}, {:name=>"その他"}])

other_travel.children.create([{:name=>"タオル/バス用品"}, {:name=>"日用品/生活雑貨"}, {:name=>"洗剤/柔軟剤"}, {:name=>"旅行用品"}, {:name=>"防災関連グッズ"}, {:name=>"その他"}])

other_collection.children.create([{:name=>"雑貨"}, {:name=>"工芸品"}, {:name=>"家具"}, {:name=>"印刷物"}, {:name=>"その他"}])

other_pen.children.create([{:name=>"筆記用具"}, {:name=>"ノート/メモ帳"}, {:name=>"テープ/マスキングテープ"}, {:name=>"カレンダー/スケジュール"}, {:name=>"アルバム/スクラップ"}, {:name=>"ファイル/バインダー"}, {:name=>"はさみ/カッター"}, {:name=>"カードホルダー/名刺管理"}, {:name=>"のり/ホッチキス"}, {:name=>"その他"}])

other_shop.children.create([{:name=>"オフィス用品一般"}, {:name=>"オフィス家具"}, {:name=>"店舗用品"}, {:name=>"OA機器"}, {:name=>"ラッピング/包装"}, {:name=>"その他"}])