//
//  ViewController.swift
//  イラストや検定
//
//  Created by cmStudent on 2020/08/25.
//  Copyright © 2020 20CM0103. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var collectAnswer = String()
    var count = 0
    var okCount = 0
    var resutart = 0
    var arrey = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51]
    var push = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var ansorLavel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    //問題のセット
    var imgteppouuo = UIImage(named: "fish_teppouuo_shoot")
    var imggureepuhuru = UIImage(named: "fruit_slice_grapefruit")
    var imgCaterpillar = UIImage(named: "hakujou_jama")
    var imggreat = UIImage(named: "banzai_kids_people")
    var imgnoimage = UIImage(named: "いろいろな「NO IMAGE」のイラスト")
    var imgbluepato = UIImage(named: "青色パトカーのイラスト")
    var imghuryou = UIImage(named: "不良集団のイラスト")
    var imgGarasuTenjou = UIImage(named: "ガラスの天井を打ち破る人のイラスト")
    var imgPienMen = UIImage(named: "ぴえんのイラスト（男性）")
    var imgHisteryMen = UIImage(named: "ヒステリーのイラスト（男性）")
    var imgBiniruArart = UIImage(named: "ビニールカーテンを避けないように注意するイラスト")
    var imgBiniruKaikei = UIImage(named: "ビニールカーテン越しに会計をする客のイラスト")
    var imgHutene = UIImage(named: "ふて寝のイラスト（男性）")
    var imgHenoHeno = UIImage(named: "へのへのもへじのイラスト")
    var imgHemeHeme = UIImage(named: "へめへめくこひのイラスト")
    var imgHoppeOkoruKodomoMen = UIImage(named: "ほっぺを膨らませて怒る子供のイラスト（男の子）")
    var imgMeganeHikaru = UIImage(named: "メガネが光る人のイラスト")
    var imgYarukiMan = UIImage(named: "やる気のある大人のイラスト(女性)")
    var imgTakuramuMan = UIImage(named: "何かを企む人のイラスト（女性会社員）")
    var imgMusyoku = UIImage(named: "親を怒鳴る無職のイラスト")
    var imgJitakutaikiMen = UIImage(named: "自宅待機のイラスト（男性）")
    var imgkyuukakuijou = UIImage(named: "臭覚異常のイラスト")
    var imggarapagosupen = UIImage(named: "ガラパゴスペンギンのイラスト")
    var imggirisuutu = UIImage(named: "ギリースーツのイラスト")
    var imgjaiantpengin = UIImage(named: "ジャイアントペンギンのイラスト")
    var imgbaiking = UIImage(named: "バイキングのイラスト")
    var imgpinkurobin = UIImage(named: "ピンクロビンのイラスト")
    var imgyamasemi = UIImage(named: "ヤマセミのイラスト")
    var imgroiyarupen = UIImage(named: "ロイヤルペンギンのイラスト")
    var imgyarikinoaruotonamen = UIImage(named: "やる気のある大人のイラスト(男性)")
    var imgkuukikansen = UIImage(named: "空気感染のイラスト（感染症）")
    var imgsuiminosisi = UIImage(named: "泳ぐイノシシのイラスト")
    var imghiwosyoukabou = UIImage(named: "火の消火をする人のイラスト（棒人間）")
    var imgganseihiroumen = UIImage(named: "眼精疲労のイラスト（男性）")
    var imgkodomoaitepapa = UIImage(named: "子供の相手をしながら働く人のイラスト（父親）")
    var imgkodomoaitemama = UIImage(named: "子供の相手をしながら働く人のイラスト（母親）")
    var imgheiseiowari = UIImage(named: "時代の幕が下りるイラスト（平成）")
    var imgmaeenarae = UIImage(named: "小さく前へならえのイラスト")
    var imgmizukakebou = UIImage(named: "水掛け論のイラスト（棒人間）")
    var imgsessyokukansen = UIImage(named: "接触感染のイラスト（感染症）")
    var imgdaten = UIImage(named: "堕天使のイラスト")
    var imgdokusyotukaremen = UIImage(named: "読書で目が疲れた人のイラスト（男性）")
    var imgtondenhei = UIImage(named: "屯田兵のイラスト")
    var imgtobikomi = UIImage(named: "飛び込みのイラスト")
    var imghiraoyogi = UIImage(named: "平泳ぎのイラスト")
    var imgkouteiatatake = UIImage(named: "卵を温めるコウテイペンギンのイラスト")
    var imgroudoukantoku = UIImage(named: "労働基準監督官のイラスト")
    var imgrouroukaigo = UIImage(named: "老々介護のイラスト")
    var imghakidasuroujin = UIImage(named: "薬を吐き出すお年寄りのイラスト")
    var imghukusiseibi = UIImage(named: "福祉用具の整備士のイラスト")
    var imghisessyokuhand = UIImage(named: "非接触体温計のイラスト（手）")
    var imgsiroitue = UIImage(named: "白杖を掲げる人のイラスト")
    var imghainosenika = UIImage(named: "肺胞の線維化のイラスト")
    var imgtoumeimasukusyuwa = UIImage(named: "透明なマスクを付けた手話のイラスト")
    var imgtyoudouken = UIImage(named: "聴導犬のイラスト")
    var imgomoihutanmen = UIImage(named: "重い負担のイラスト（男性）")
    var imgsyuwakikanai = UIImage(named: "手話が通じない人のイラスト")
    var imgsikakusyouyuudou = UIImage(named: "視覚障害者を誘導する人のイラスト（男性） ")
    var imgsarupekonia = UIImage(named: "指輪っかテストのイラスト（サルコペニア）")
    var imgkoukikoureiman = UIImage(named: "後期高齢者のイラスト（女性） ")
    var imgkenntaidaeki = UIImage(named: "検体採取のイラスト（唾液）")
    var imgkeikouwakutinn = UIImage(named: "経口ワクチンのイラスト")
    var imgkannbannyomenai = UIImage(named: "看板の文字が読めないお年寄りのイラスト")
    var imgbeddonihasamare = UIImage(named: "介護ベッドに腕を挟まれた人のイラスト")
    var imgdoraibukentai = UIImage(named: "ドライブスルー方式の検体採取のイラスト")
    var imgkagannderoujinnhana = UIImage(named: "かがんでお年寄りと話す人のイラスト")
    var imgwirusumakeru = UIImage(named: "ウイルスに負ける細胞のイラスト")
    var imgwirusukatu = UIImage(named: "ウイルスに勝つ細胞のイラスト")
    var imgboumeisimaguni = UIImage(named: "亡命のイラスト（島国）")
    var imgnenkinmikosi = UIImage(named: "年金を負担する人たちのイラスト（神輿型）")
    var imgkokoronoyamimen = UIImage(named: "心に闇を抱えた人のイラスト（男性） ")
    var imgsyuukyouage2 = UIImage(named: "宗教の二世のイラスト")
    var imgsyuukyoukanyu = UIImage(named: "宗教の勧誘のイラスト")
    var imgjitensyatende = UIImage(named: "自転車タンデムのイラスト（パラリンピック）")
    var imgsuwarikomi = UIImage(named: "座り込みのイラスト")
    var imgkokkaideasobu = UIImage(named: "国会中に遊んでいる人たちのイラスト")
    var imgkarousihakui = UIImage(named: "過労死のイラスト（白衣）")
    var imgyaminososiki = UIImage(named: "闇の組織のイラスト")
    var imgmaneronn = UIImage(named: "マネーロンダリングのイラスト")
    var imgtorokkomondai = UIImage(named: "トロッコ問題のイラスト")
    var imgdekotyari = UIImage(named: "デコチャリを運転する人のイラスト")
    var imgdaburusutan = UIImage(named: "ダブルスタンダードのイラスト")
    var imgsupirichaman = UIImage(named: "スピリチャルな女性のイラスト")
    var imgeagansyuhu = UIImage(named: "エアガンで猿と戦う主婦のイラスト")
    var imgarutuhaima = UIImage(named: "アルツハイマーのイラスト")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hide()
        randomQuestion()
        button1.titleLabel?.numberOfLines = 0
        button2.titleLabel?.numberOfLines = 0
        button3.titleLabel?.numberOfLines = 0
        arrey.shuffle()
        
        
        
    }
        
    //問題の出題処理
    //ここの重複を無くしたい
    //無くなった
    let maruoto = Bundle.main.bundleURL.appendingPathComponent("Quiz-Buzzer02-1.mp3")
    
    let batuoto = Bundle.main.bundleURL.appendingPathComponent("Quiz-Wrong_Buzzer02-1.mp3")
    
    var marubatu = AVAudioPlayer()
    
    
    
    
    
    func randomQuestion(){
        
        
        switch(arrey[count]){
            
        case 0:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgteppouuo
            //img.image = imgAnt
            button1.setTitle("お魚のイラスト", for: UIControl.State.normal)
            button2.setTitle("水を発射するテッポウウオのイラスト", for: UIControl.State.normal)
            button3.setTitle("ハタンポのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            
            break
        case 1:
            questionLabel.text = "このイラストの名前は？"
            imageView.image = imggureepuhuru
            button1.setTitle("ピンクグレープフルーツの輪切りのイラスト", for: UIControl.State.normal)
            button2.setTitle("グレープフルーツの輪切りのイラスト", for: UIControl.State.normal)
            button3.setTitle("グレープフルーツのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.remove(at: 1)
            
            break
            
        case 2:
            
            questionLabel.text = "このイラストは？"
            imageView.image = imgCaterpillar
            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.remove(at: 2)
            
            break
            
        case 3:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgbluepato
            //img.image = imgAnt
            button1.setTitle("青色パトカーのイラスト", for: UIControl.State.normal)
            button2.setTitle("警察のイラスト", for: UIControl.State.normal)
            button3.setTitle("警視庁のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.remove(at: 3)
            
            break
        case 4:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgnoimage
            //img.image = imgAnt
            button1.setTitle("画像を取得できませんでした", for: UIControl.State.normal)
            button2.setTitle("灰色の山のイラスト", for: UIControl.State.normal)
            button3.setTitle("「NO IMAGE」のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            
            
            break
        case 5:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgyamasemi
            
            button1.setTitle("ピンクロビンのイラスト", for: UIControl.State.normal)
            button2.setTitle("ハリネズミもどきのイラスト", for: UIControl.State.normal)
            button3.setTitle("ヤマセミのイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            
            
            break
        case 6:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgmizukakebou
            
            button1.setTitle("水掛け論のイラスト（棒人間）", for: UIControl.State.normal)
            button2.setTitle("バランスの取れていない二人のイラスト（棒人間）", for: UIControl.State.normal)
            button3.setTitle("陣地を奪い合う棒人間のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            
            
            break
        case 7:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imggirisuutu
            //img.image = imgAnt
            button1.setTitle("モジャモジャのイラスト", for: UIControl.State.normal)
            button2.setTitle("ギリースーツのイラスト", for: UIControl.State.normal)
            button3.setTitle("グラススーツのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
        case 8:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgroudoukantoku
            //img.image = imgAnt
            button1.setTitle("労働基準監督官のイラスト", for: UIControl.State.normal)
            button2.setTitle("労働基準監督署のイラスト", for: UIControl.State.normal)
            button3.setTitle("公務員のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
        case 9:
            questionLabel.text = "この絵の名前は？？"
            imageView.image = imgMusyoku
            //img.image = imgAnt
            button1.setTitle("親のすねかじりのイラスト", for: UIControl.State.normal)
            button2.setTitle("親を怒鳴る無職のイラスト", for: UIControl.State.normal)
            button3.setTitle("ひきこもりのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
        case 10:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgHenoHeno
            //img.image = imgAnt
            button1.setTitle("ヘラヘラくこけのイラスト", for: UIControl.State.normal)
            button2.setTitle("へめへめくこひのイラスト", for: UIControl.State.normal)
            button3.setTitle("へのへのもへじのイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
        case 11:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkuukikansen
            //img.image = imgAnt
            button1.setTitle("空気感染のイラスト", for: UIControl.State.normal)
            button2.setTitle("飛沫感染のイラスト", for: UIControl.State.normal)
            button3.setTitle("エアロゾル感染のイラスト（感染症）", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
        case 12:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgTakuramuMan
            //img.image = imgAnt
            button1.setTitle("やる気のある大人のイラスト(女性)", for: UIControl.State.normal)
            button2.setTitle("何かを企む人のイラスト（女性会社員）", for: UIControl.State.normal)
            button3.setTitle("目つきの悪い人のイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
        case 13:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgtondenhei
            //img.image = imgAnt
            button1.setTitle("戊辰戦争の兵のイラスト", for: UIControl.State.normal)
            button2.setTitle("旧日本兵のイラスト（陸軍）", for: UIControl.State.normal)
            button3.setTitle("屯田兵のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
        case 14:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgroiyarupen
            //img.image = imgAnt
            button1.setTitle("ロイヤルペンギンのイラスト", for: UIControl.State.normal)
            button2.setTitle("ガラパゴスペンギンのイラスト", for: UIControl.State.normal)
            button3.setTitle("コウテイペンギンのイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
        case 15:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgHutene
            //img.image = imgAnt
            button1.setTitle("昼夜逆転のイラスト", for: UIControl.State.normal)
            button2.setTitle("ふて寝のイラスト（男性）", for: UIControl.State.normal)
            button3.setTitle("寝坊のイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
        case 16:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imghiwosyoukabou
            //img.image = imgAnt
            button1.setTitle("バケツを持つ棒人間のイラスト", for: UIControl.State.normal)
            button2.setTitle("水掛け論のイラスト（棒人間）", for: UIControl.State.normal)
            button3.setTitle("火の消火をする人のイラスト（棒人間）", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
        case 17:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgbaiking
            //img.image = imgAnt
            button1.setTitle("バイキングのイラスト", for: UIControl.State.normal)
            button2.setTitle("中世の兵士のイラスト", for: UIControl.State.normal)
            button3.setTitle("悪そうな人のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
        case 18:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgmaeenarae
            //img.image = imgAnt
            button1.setTitle("ソーシャルディスタンスのイラスト", for: UIControl.State.normal)
            button2.setTitle("小さく前へならえのイラスト", for: UIControl.State.normal)
            button3.setTitle("ロボットごっこのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 19:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgrouroukaigo
            //img.image = imgAnt
            button1.setTitle("老老介護のイラスト", for: UIControl.State.normal)
            button2.setTitle("入院中のイラスト", for: UIControl.State.normal)
            button3.setTitle("将来を不安にするイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 20:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imghakidasuroujin
            //img.image = imgAnt
            button1.setTitle("オーバードーズのイラスト", for: UIControl.State.normal)
            button2.setTitle("薬を吐き出すお年寄りのイラスト", for: UIControl.State.normal)
            button3.setTitle("あっかんべのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
        case 21:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imghukusiseibi
            //img.image = imgAnt
            button1.setTitle("水道屋さんのイラスト", for: UIControl.State.normal)
            button2.setTitle("修理に来たガス会社の人イラスト", for: UIControl.State.normal)
            button3.setTitle("福祉用具の整備士のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 22:
            questionLabel.text = "これは何をしている？"
            imageView.image = imghisessyokuhand
            //img.image = imgAnt
            button1.setTitle("体温を測っている", for: UIControl.State.normal)
            button2.setTitle("頭の中の思考を探っている", for: UIControl.State.normal)
            button3.setTitle("ワイヤレス通信をしている", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 23:
            questionLabel.text = "これは何をしている？"
            imageView.image = imgsiroitue
            //img.image = imgAnt
            button1.setTitle("敬意を払っている", for: UIControl.State.normal)
            button2.setTitle("視覚障害者のSOSサイン", for: UIControl.State.normal)
            button3.setTitle("何かを探している", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 24:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imghainosenika
            //img.image = imgAnt
            button1.setTitle("蜂の巣のイラスト", for: UIControl.State.normal)
            button2.setTitle("腐ったブドウのイラスト", for: UIControl.State.normal)
            button3.setTitle("肺胞の線維化のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 25:
            questionLabel.text = "この犬の役割は？"
            imageView.image = imgtyoudouken
            //img.image = imgAnt
            button1.setTitle("耳が聞こえない人を助ける", for: UIControl.State.normal)
            button2.setTitle("警察の人を助ける", for: UIControl.State.normal)
            button3.setTitle("ワイヤレス通信を助ける", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 26:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgomoihutanmen
            //img.image = imgAnt
            button1.setTitle("石を乗せられた人のイラスト(男性)", for: UIControl.State.normal)
            button2.setTitle("重い負担のイラスト（男性）", for: UIControl.State.normal)
            button3.setTitle("修行をする人のイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 27:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgsyuwakikanai
            //img.image = imgAnt
            button1.setTitle("聲の形のイラスト", for: UIControl.State.normal)
            button2.setTitle("叱られてる人のイラスト", for: UIControl.State.normal)
            button3.setTitle("手話が通じない人のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 28:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgsikakusyouyuudou
            //img.image = imgAnt
            button1.setTitle("視覚障害者を誘導する人のイラスト（男性)", for: UIControl.State.normal)
            button2.setTitle("中のいい友人のイラスト(男性)", for: UIControl.State.normal)
            button3.setTitle("親子のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 29:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgsarupekonia
            //img.image = imgAnt
            button1.setTitle("筋肉痛のイラスト", for: UIControl.State.normal)
            button2.setTitle("指輪っかテストのイラスト（サルコペニア）", for: UIControl.State.normal)
            button3.setTitle("ストレッチのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 30:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkoukikoureiman
            //img.image = imgAnt
            button1.setTitle("前期高齢者のイラスト（女性）", for: UIControl.State.normal)
            button2.setTitle("後期高齢者のイラスト（男性） ", for: UIControl.State.normal)
            button3.setTitle("後期高齢者のイラスト（女性） ", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 31:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkenntaidaeki
            //img.image = imgAnt
            button1.setTitle("検体採取のイラスト（唾液）", for: UIControl.State.normal)
            button2.setTitle("経口ワクチンのイラスト", for: UIControl.State.normal)
            button3.setTitle("薬を飲む人のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 32:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkeikouwakutinn
            //img.image = imgAnt
            button1.setTitle("ミルクを飲む赤ちゃんのイラスト", for: UIControl.State.normal)
            button2.setTitle("経口ワクチンのイラスト", for: UIControl.State.normal)
            button3.setTitle("母乳をスポイトから飲ませるイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 33:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkannbannyomenai
            //img.image = imgAnt
            button1.setTitle("道に迷ったお年寄りのイラスト", for: UIControl.State.normal)
            button2.setTitle("老眼のイラスト", for: UIControl.State.normal)
            button3.setTitle("看板の文字が読めないお年寄りのイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 34:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgbeddonihasamare
            //img.image = imgAnt
            button1.setTitle("介護ベッドに腕を挟まれた人のイラスト", for: UIControl.State.normal)
            button2.setTitle("駄々をこねる人のイラスト", for: UIControl.State.normal)
            button3.setTitle("介護されるお年寄りのイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 35:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgdoraibukentai
            //img.image = imgAnt
            button1.setTitle("車の窓を開ける人のイラスト", for: UIControl.State.normal)
            button2.setTitle("ドライブスルー方式の検体採取のイラスト", for: UIControl.State.normal)
            button3.setTitle("検疫をする人のイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 36:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkagannderoujinnhana
            //img.image = imgAnt
            button1.setTitle("帰省のイラスト", for: UIControl.State.normal)
            button2.setTitle("相談するお年寄りのイラスト", for: UIControl.State.normal)
            button3.setTitle("かがんでお年寄りと話す人のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 37:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgwirusumakeru
            //img.image = imgAnt
            button1.setTitle("ウイルスに負ける細胞のイラスト", for: UIControl.State.normal)
            button2.setTitle("悪玉細胞のイラスト", for: UIControl.State.normal)
            button3.setTitle("細菌に負けるウイルスのイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 38:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgarutuhaima
            //img.image = imgAnt
            button1.setTitle("困っているお年寄りのイラスト(男性)", for: UIControl.State.normal)
            button2.setTitle("アルツハイマーのイラスト", for: UIControl.State.normal)
            button3.setTitle("脳の働きのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 39:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgboumeisimaguni
            //img.image = imgAnt
            button1.setTitle("無人島から脱出する人のイラスト", for: UIControl.State.normal)
            button2.setTitle("跳躍する人のイラスト(男性)", for: UIControl.State.normal)
            button3.setTitle("亡命のイラスト（島国）", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 40:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgnenkinmikosi
            //img.image = imgAnt
            button1.setTitle("年金を負担する人たちのイラスト（神輿型）", for: UIControl.State.normal)
            button2.setTitle("年功序列のイラスト", for: UIControl.State.normal)
            button3.setTitle("神を超越した人のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 41:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkokoronoyamimen
            //img.image = imgAnt
            button1.setTitle("浪人生のイラスト(男性)", for: UIControl.State.normal)
            button2.setTitle("心に闇を抱えた人のイラスト（男性） ", for: UIControl.State.normal)
            button3.setTitle("キレやすい若者のイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 42:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgsyuukyouage2
            //img.image = imgAnt
            button1.setTitle("地球教のイラスト", for: UIControl.State.normal)
            button2.setTitle("イルミナイティのイラスト", for: UIControl.State.normal)
            button3.setTitle("宗教の二世のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 43:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgsyuukyoukanyu
            //img.image = imgAnt
            button1.setTitle("宗教の勧誘のイラスト", for: UIControl.State.normal)
            button2.setTitle("天国に招待される人のイラスト", for: UIControl.State.normal)
            button3.setTitle("手話が通じない人のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 44:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgjitensyatende
            //img.image = imgAnt
            button1.setTitle("2人乗り自転車のイラスト", for: UIControl.State.normal)
            button2.setTitle("自転車タンデムのイラスト（パラリンピック）", for: UIControl.State.normal)
            button3.setTitle("2人乗りペダルのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 45:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgsuwarikomi
            //img.image = imgAnt
            button1.setTitle("ストライキのイラスト", for: UIControl.State.normal)
            button2.setTitle("浪人生のイラスト（男性）", for: UIControl.State.normal)
            button3.setTitle("座り込みのイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 46:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkokkaideasobu
            //img.image = imgAnt
            button1.setTitle("国会中に遊んでいる人たちのイラスト", for: UIControl.State.normal)
            button2.setTitle("質疑応答のイラスト", for: UIControl.State.normal)
            button3.setTitle("党首演説のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 47:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgkarousihakui
            //img.image = imgAnt
            button1.setTitle("オーバーワークのイラスト", for: UIControl.State.normal)
            button2.setTitle("過労死のイラスト（白衣）", for: UIControl.State.normal)
            button3.setTitle("デスマーチのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 48:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgyaminososiki
            //img.image = imgAnt
            button1.setTitle("巨大な悪のイラスト", for: UIControl.State.normal)
            button2.setTitle("社会の縮図のイラスト）", for: UIControl.State.normal)
            button3.setTitle("闇の組織のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            case 49:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgmaneronn
            //img.image = imgAnt
            button1.setTitle("マネーロンダリングのイラスト", for: UIControl.State.normal)
            button2.setTitle("間違えてお金を洗濯した人のイラスト", for: UIControl.State.normal)
            button3.setTitle("トロッコ問題のイラスト", for: UIControl.State.normal)
            collectAnswer = "1"
            //arrey.removeLast()
            
            break
            case 50:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgtorokkomondai
            //img.image = imgAnt
            button1.setTitle("分岐点のイラスト", for: UIControl.State.normal)
            button2.setTitle("トロッコ問題のイラスト", for: UIControl.State.normal)
            button3.setTitle("スプリングポイントのイラスト", for: UIControl.State.normal)
            collectAnswer = "2"
            //arrey.removeLast()
            
            break
            case 51:
            questionLabel.text = "この絵の名前は？"
            imageView.image = imgdekotyari
            //img.image = imgAnt
            button1.setTitle("近未来の自転車のイラスト", for: UIControl.State.normal)
            button2.setTitle("自転車暴走族のイラスト", for: UIControl.State.normal)
            button3.setTitle("デコチャリを運転する人のイラスト", for: UIControl.State.normal)
            collectAnswer = "3"
            //arrey.removeLast()
            
            break
            
        default:
            break
        }
    }
    
    func hide(){
        ansorLavel.isHidden = true
        nextButton.isHidden = true
        
    }
    func unHide(){
        ansorLavel.isHidden = false
        nextButton.isHidden = false
        
    }
    func buttonHide(){
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
    }
    func buttonunHide(){
        button1.isHidden = false
        button2.isHidden = false
        button3.isHidden = false
    }
    
    
    @IBAction func button1Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "1"){
            ansorLavel.text = "⭕️"
            count += 1
            button1.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            okCount += 1
            push += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: maruoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }
        }
        else{
            ansorLavel.text = "❌"
            button1.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            push += 1
            count += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: batuoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }
        }
    }
    @IBAction func button2Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "2"){
            ansorLavel.text = "⭕️"
            count += 1
            button1.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            okCount += 1
            push += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: maruoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }
        }
        else{
            ansorLavel.text = "❌"
            count += 1
            button1.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            push += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: batuoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }

        }
    }
    @IBAction func button3Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "3"){
            ansorLavel.text = "⭕️"
            count += 1
            button1.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            okCount += 1
            push += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: maruoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }
        }
        else{
            ansorLavel.text = "❌"
            count += 1
            button1.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            push += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: batuoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }
        }
    }
    @IBAction func nextAction(_ sender: Any) {
        if resutart == 1 {
            resutart = 0
            loadView()
            viewDidLoad()
        }
        if count == 10 {
            if okCount == 10{
                imageView.image = imggreat
                questionLabel.text = "終了！\(okCount)問正解！　すごい！　全問正解だ！"
                
                count = 0
                resutart += 1
                okCount = 0
            } else if okCount >= 8 {
                imageView.image = imgTakuramuMan
                questionLabel.text = "終了！\(okCount)問正解！ なかなかやるね！"
                
                count = 0
                resutart += 1
                okCount = 0
            } else if okCount >= 5 {
                imageView.image = imgGarasuTenjou
                questionLabel.text = "終了！\(okCount)問正解！ 遊んでくれてありがとう！"
                
                count = 0
                resutart += 1
                okCount = 0
            } else {
                imageView.image = imgPienMen
                questionLabel.text = "終了！\(okCount)問正解！ 惜しい... またチャレンジしてくれ！"
                
                count = 0
                resutart += 1
                okCount = 0
            }
            
            (sender as AnyObject).setTitle("もう一度", for: .normal)
        } else if push == 0{
            (sender as AnyObject).setTitle("答えを入力してください", for: .normal)
        } else {
            
            push = 0
            randomQuestion()
            hide()
            button1.isEnabled = true
            button2.isEnabled = true
            button3.isEnabled = true
            (sender as AnyObject).setTitle("次へ", for: .normal)
        }
        
    }
    
    
}

