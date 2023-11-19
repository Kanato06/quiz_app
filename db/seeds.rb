# 質問1
question1 = Question.create!(content: "2023年日本シリーズの優勝チームは？")
question1.choices.create!(content: "阪神タイガース", correct: true)
question1.choices.create!(content: "東京ヤクルトスワローズ", correct: false)
question1.choices.create!(content: "東北楽天ゴールデンイーグルス", correct: false)
question1.choices.create!(content: "埼玉西武ライオンズ", correct: false)

# 質問2
question2 = Question.create!(content: "阪神タイガースの岡田監督が試合中によく食べていたことでファンの間でブームとなったお菓子は？")
question2.choices.create!(content: "ビスコ", correct: false)
question2.choices.create!(content: "ひまわりの種", correct: false)
question2.choices.create!(content: "ハイチュウ", correct: false)
question2.choices.create!(content: "パインアメ", correct: true)

# 質問3
question3 = Question.create!(content: "ソフトバンクホークスの公式球団歌の名前は何？")
question3.choices.create!(content: "いざゆけ若鷹軍団", correct: true)
question3.choices.create!(content: "勝利のマーチ", correct: false)
question3.choices.create!(content: "鷹の翼", correct: false)
question3.choices.create!(content: "空の王者", correct: false)

# 質問4
question4 = Question.create!(content: "2016年シーズンから3シーズンにわたり広島東洋カープの1番から3番打者を務め、レギュラーシーズン三連覇に貢献した3選手の通称は何？")
question4.choices.create!(content: "ヒロシマトリオ", correct: false)
question4.choices.create!(content: "カープ三銃士", correct: false)
question4.choices.create!(content: "タナキクマル", correct: true)
question4.choices.create!(content: "赤ヘル打線", correct: false)

# 質問5
question5 = Question.create!(content: "現在MLBで活躍する大谷翔平選手が生まれた都道府県はどこ？")
question5.choices.create!(content: "北海道", correct: false)
question5.choices.create!(content: "岩手県", correct: true)
question5.choices.create!(content: "大阪府", correct: false)
question5.choices.create!(content: "愛媛県", correct: false)

# 質問6
question6 = Question.create!(content: "以下の中で現役プロ野球選手にいない苗字はどれ？")
question6.choices.create!(content: "戸郷", correct: false)
question6.choices.create!(content: "正隨", correct: false)
question6.choices.create!(content: "嘉弥真", correct: false)
question6.choices.create!(content: "羽生田", correct: true)

# 質問7
question7 = Question.create!(content: "2023年、「オリ姫（オリックス・バファローズの女性ファン）が選ぶバファローズの推しメン（略してオリメン）」投票で一位に選ばれたのは誰？")
question7.choices.create!(content: "山崎颯一郎選手", correct: true)
question7.choices.create!(content: "山本由伸選手", correct: false)
question7.choices.create!(content: "山岡泰輔選手", correct: false)
question7.choices.create!(content: "宮城大弥選手", correct: false)

# 質問8
question8 = Question.create!(content: "千葉ロッテマリーンズが2023年レギュラーシーズンのイニング間イベントとしてファン代表のチャレンジャーとダッシュ対決している正体不明の俊足スプリンターの名前は？")
question8.choices.create!(content: "マスクマン", correct: true)
question8.choices.create!(content: "ウサイン", correct: false)
question8.choices.create!(content: "DASHMAN", correct: false)
question8.choices.create!(content: "マーくん", correct: false)

# 質問9
question9 = Question.create!(content: "2023年1月25日につば九朗が東京ヤクルトスワローズと結んだ契約内容は何？")
question9.choices.create!(content: "年俸50,000円とヤクルト1000の飲み放題", correct: true)
question9.choices.create!(content: "年俸50,000円とチームグッズ", correct: false)
question9.choices.create!(content: "年俸5億円", correct: false)
question9.choices.create!(content: "年俸50,000円と30日の有給", correct: false)

# 質問10
question10 = Question.create!(content: "阪神タイガースの岡田監督がファンの間で「どんでん」と呼ばれるようになったのはなぜ？")
question10.choices.create!(content: "本人が出演していた『どんでん』という商品のＣＭから", correct: true)
question10.choices.create!(content: "出身地の方言から", correct: false)
question10.choices.create!(content: "どんでん返しを起こした野球人生だったから", correct: false)
question10.choices.create!(content: "高校時代のあだ名から", correct: false)