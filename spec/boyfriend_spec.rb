# -- coding: utf-8

require "spec_helper"

describe "あなた" do

  prompt "たばこを吸わない", true
  prompt "アルコールを飲んでも性格が変わらない", true
  prompt "中学、高校、大学時代の友人と現在も交流が続いている人が５人以上いる人（Facebookを含む）"
  prompt "職場並びに仕事関係者以外で1年以上付き合いのある友人が20人以上いる人（Facebookを含む）"
  prompt "ご近所の人（老若男女）と30分以上楽しく会話ができる人"
  prompt "小学生以下の子供と一緒に遊ぶことが好きな人"
  prompt " 野菜と納豆が好きな人"
  prompt " 外国人と気さくに20分以上話せる人（日本語でもOK）"
  prompt " 問題があっても他人のせいにしない人"
  prompt " レジャーの計画（旅行、趣味）を立てて実行に移すことができる人"
  prompt " 大金持ち、美男美女、芸能人、著名人を見て、嫉妬しない人（必須）"
  prompt " 他人と比較して卑屈にならず、かつ優越感に浸らない人"
  prompt " 昨日までの自分を超えるための努力を惜しまない人"
  prompt " ソーシャルゲーム（GREE、Mobage）に対して嫌悪感がない人"
  prompt " WindowsよりもMacまたはLinuxが好きな人"
  prompt " 何があっても暴力を振るわない人（必須）"
  prompt " お母さんと比較しない人"
  prompt " あいさつができる人（おはよう、おやすみ、いただきます、こちそうさま、ありがとうは必須）"
  prompt " 現在の状況はどうであれ自分は幸せだと思う人"
  prompt " 家事全般を押し付けない人"
  prompt " 自分の価値観を押し付けない人"
  prompt " 男尊女卑思考ではない人"
  prompt " お金について隠さずオープンにできる人"
  prompt " 7つの習慣またはピータードラッカーに共感を持ち、自身の生活に取り入れている人"
  prompt " 身分立場損得関係なく他人と接することができる人"
  prompt " 何があっても感情的に怒らない人（必須）"
  prompt " 仕事以外に趣味を１つ以上極めている人"
  prompt " クラシックまたはジャズピアノを弾いている人、もしくは興味がある人"
  prompt " 冬の間は暖房をつけなくても平気な人"
  prompt " ゲームは１日１時間。テレビは１日30分以下の人"

  puts "エンジニア or プログラマの人? (Y/n)"
  Scoreboard.engineer = ["Y", ""].include? gets.strip.upcase
  if Scoreboard.engineer?
    context "エンジニア or プログラマ" do
      prompt " きれいなソースが書ける人(きれいなソースを見ると泣いて喜びます)", true
      prompt " 自宅サーバーがある人(Linux希望！)", true
      prompt " 自宅サーバーで遊ばせてくれる人", true
      prompt " githubで何か公開している人", true
    end
  end

  prompt "これらのパートナーの条件を読んで腹が立たない", true
  prompt "これらのパートナーの条件を読んで苦情メールを出そうとは思わなかった", true

  specify do
    threshold = Scoreboard.engineer? ? 30 : 28
    Scoreboard.score.should >= threshold
  end

end
