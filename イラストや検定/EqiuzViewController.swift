//
//  EqiuzViewController.swift
//  イラストや検定
//
//  Created by cmStudent on 2020/09/04.
//  Copyright © 2020 20CM0103. All rights reserved.
//

import UIKit
import AVFoundation

class EqiuzViewController: UIViewController {
    
    var collectAnswer = String()
    var count = 0
    var okCount = 0
    var resutart = 0
    var arrey = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
    var push = 0
    
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var ansor1: UIButton!
    @IBOutlet weak var ansor2: UIButton!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var ansorLavel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    var imgAnt = UIImage(named: "fish_teppouuo_shoot")
    var imgSpider = UIImage(named: "fruit_slice_grapefruit")
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
    var imgsikakusyouyuudou = UIImage(named: "視覚障害者を誘導する人のイラスト（男性)")
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
    var imgarutuhaima = UIImage(named: "アルツハイマーのイラスト")
    var imgboumeisimaguni = UIImage(named: "亡命のイラスト（島国）")
    var imgnenkinmikosi = UIImage(named: "年金を負担する人たちのイラスト（神輿型）")
    var imgkokoronoyamimen = UIImage(named: "心に闇を抱えた人のイラスト（男性）")
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
    var imgsekigaisentaion = UIImage(named: "赤外線温度計を使う人のイラスト")
    var imgyuusya = UIImage(named: "勇者のイラスト")
    var imgkokoronoyamiman = UIImage(named: "心に闇を抱えた人のイラスト（女性）")
    var imgjiraimeiku = UIImage(named: "地雷メイクのイラスト")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomQuestion()
        arrey.shuffle()
     
        
        
       
        
        
        
        // Do any additional setup after loading the view.
    }
    
    let maruoto = Bundle.main.bundleURL.appendingPathComponent("Quiz-Buzzer02-1.mp3")
    
    let batuoto = Bundle.main.bundleURL.appendingPathComponent("Quiz-Wrong_Buzzer02-1.mp3")
    
    var marubatu = AVAudioPlayer()
    
    
    
    
    
    //問題の出題処理
    //ここの重複を無くしたい
    func randomQuestion(){
        //        var intArray: [Int]
        //        intArray = [6]
        //リサイズ//
        let images:UIImage = UIImage(named:"fish_teppouuo_shoot")!
        let resizeImgAnt = images.resized(toWidth: 300)
        
        let images1:UIImage = UIImage(named:"hakujou_jama")!
        let resizeimgCaterpillar = images1.resized(toWidth: 300)

        
        
       
        
        
        
        
        
        
        
        
        switch(arrey[count]){

        case 0:

            questionLabel.text = "テッポウウオのイラストはどっち？"
            image1.image = resizeImgAnt
            image2.image = resizeimgCaterpillar


            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break


        case 1:
            questionLabel.text = "グレープフルーツのイラストはどっち？"
            image1.image = imgSpider
            image2.image = imghuryou
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"


            break
        case 2:
            questionLabel.text = "やる気のある大人のイラスト(女性)はどっち？"
            image1.image = imgGarasuTenjou
            image2.image = imgYarukiMan
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"


            break
        case 3:
            questionLabel.text = "自宅待機のイラスト（男性）はどっち？"
            image1.image = imgJitakutaikiMen
            image2.image = imgMusyoku
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"


            break
        case 4:
            questionLabel.text = "ヒステリーのイラスト（男性）はどっち？"
            image1.image = imgHoppeOkoruKodomoMen
            image2.image = imgHisteryMen
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"


            break
        case 5:
            questionLabel.text = "水掛け論のイラスト（棒人間）はどっち?"
            image1.image = imghiwosyoukabou
            image2.image = imgmizukakebou
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 6:
            questionLabel.text = "ピンクロビンのイラストはどっち？"
            image1.image = imgpinkurobin
            image2.image = imgyamasemi
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 7:
            questionLabel.text = "ふて寝のイラスト（男性）はどっち？"
            image1.image = imgHutene
            image2.image = imgMusyoku
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 8:
            questionLabel.text = "ガラパゴスペンギンのイラストはどっち？"
            image1.image = imggarapagosupen
            image2.image = imgHisteryMen
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 9:
            questionLabel.text = "飛び込みのイラストはどっち？"
            image1.image = imgsuiminosisi
            image2.image = imgtobikomi
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 10:
            questionLabel.text = "労働基準監督官のイラストはどっち？"
            image1.image = imgroudoukantoku
            image2.image = imgMeganeHikaru
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 11:
            questionLabel.text = "ギリースーツのイラストはどっち？"
            image1.image = imgbaiking
            image2.image = imggirisuutu
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 12:
            questionLabel.text = "やる気のある大人のイラスト(女性)はどっち？"
            image1.image = imgTakuramuMan
            image2.image = imgYarukiMan
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 13:
            questionLabel.text = "へのへのもへじのイラストはどっち？"
            image1.image = imgHenoHeno
            image2.image = imgHemeHeme
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 14:
            questionLabel.text = "ビニールカーテンに注意するイラストはどっち？"
            image1.image = imgBiniruArart
            image2.image = imgBiniruKaikei
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 15:
            questionLabel.text = "不良集団のイラストはどっち？"
            image1.image = imgbaiking
            image2.image = imghuryou
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 16:
            questionLabel.text = "眼精疲労のイラスト（男性）はどっち？"
            image1.image = imgdokusyotukaremen
            image2.image = imgganseihiroumen
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
        case 17:
            questionLabel.text = "ジャイアントペンギンのイラストはどっち？"
            image1.image = imgjaiantpengin
            image2.image = imgkouteiatatake
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 18:
            questionLabel.text = "堕天使のイラストはどっち？"
            image1.image = imgdaten
            image2.image = imgpinkurobin
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        case 19:
            questionLabel.text = "空気感染のイラスト（感染症）はどっち？"
            image1.image = imgsessyokukansen
            image2.image = imgkuukikansen
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
            case 20:
            questionLabel.text = "堕天使のイラストはどっち？"
            image1.image = imgdaten
            image2.image = imgyaminososiki
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
            case 21:
            questionLabel.text = "屯田兵のイラストはどっち？"
            image1.image = imggirisuutu
            image2.image = imgtondenhei
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
            case 22:
            questionLabel.text = "老々介護のイラストはどっち？"
            image1.image = imgrouroukaigo
            image2.image = imgkuukikansen
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
            case 24:
            questionLabel.text = "薬を吐き出すお年寄りのイラストはどっち？"
            image1.image = imgsessyokukansen
            image2.image = imghakidasuroujin
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
            case 25:
            questionLabel.text = "福祉用具の整備士のイラストはどっち？"
            image1.image = imghukusiseibi
            image2.image = imgkagannderoujinnhana
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
            case 26:
            questionLabel.text = "非接触体温計のイラストはどっち？"
            image1.image = imgsekigaisentaion
            image2.image = imghisessyokuhand
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
            case 27:
            questionLabel.text = "聴覚障害者のSOSサインはどっち？"
            image1.image = imgsiroitue
            image2.image = imgsyuwakikanai
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
            case 28:
            questionLabel.text = "アルツハイマーのイラストはどっち？"
            image1.image = imgkannbannyomenai
            image2.image = imgarutuhaima
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
            break
            case 29:
            questionLabel.text = "勇者のイラストはどっち？"
            image1.image = imgyuusya
            image2.image = imgdaburusutan
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "1"
            break
            case 30:
            questionLabel.text = "心に闇を抱えた人のイラスト（女性）はどっち？"
            image1.image = imgjiraimeiku
            image2.image = imgkokoronoyamiman
            //img.image = imgAnt
            ansor1.setTitle("左", for: UIControl.State.normal)
            ansor2.setTitle("右", for: UIControl.State.normal)
            collectAnswer = "2"
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
    func  imagehide(){
        imageView.isHidden = true
        image1.isHidden = false
        image2.isHidden = false
        ansor1.isHidden = false
        ansor2.isHidden = false
        ansorLavel.isHidden = false

    }
    func imageunhide(){
        imageView.isHidden = false
        image1.isHidden = true
        image2.isHidden = true
        ansor1.isHidden = true
        ansor2.isHidden = true
        ansorLavel.isHidden = true
    }
    
    @IBAction func ansor1Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "1"){
            ansorLavel.text = "⭕️"
            count += 1
            ansor1.isEnabled = false
            ansor2.isEnabled = false
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
            ansor1.isEnabled = false
            ansor2.isEnabled = false
            count += 1
            push += 1
            do {
                marubatu = try AVAudioPlayer(contentsOf: batuoto, fileTypeHint: nil)
                marubatu.play()
            } catch {
                print("ERROR!")
            }
        }
    }
    @IBAction func ansor2Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "2"){
            ansorLavel.text = "⭕️"
            count += 1
            ansor1.isEnabled = false
            ansor2.isEnabled = false
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
            ansor1.isEnabled = false
            ansor2.isEnabled = false
            count += 1
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
        if count == 5 {
            imageunhide()
            
            
            
            if okCount == 5{
                imageView.image = imggreat
                questionLabel.text = "終了！\(okCount)問正解！　すごい！　全問正解だ！"
                
                count = 0
                resutart += 1
                okCount = 0
            } else if okCount == 4 {
                imageView.image = imgTakuramuMan
                questionLabel.text = "終了！\(okCount)問正解！ なかなかやるね！"
                
                count = 0
                resutart += 1
                okCount = 0
            } else if okCount == 3 {
                imageView.image = imgGarasuTenjou
                questionLabel.text = "終了！\(okCount)問正解！ 遊んでくれてありがとう！"
                
                count = 0
                resutart += 1
                okCount = 0
            } else {
                imageView.image = imgPienMen
                questionLabel.text = "終了！\(okCount)問正解！ うーん... でもまだ頑張れるはずだ！"
                
                count = 0
                resutart += 1
                okCount = 0
            }
            (sender as AnyObject).setTitle("もう一度始める", for: .normal)
            print(arrey)
            
        } else if push == 0{
            
            (sender as AnyObject).setTitle("答えを入力してください", for: .normal)
        } else {
            
            ansorLavel.text = "⭕️or❌"
            push = 0
            randomQuestion()
            hide()
            imagehide()
            ansor1.isEnabled = true
            ansor2.isEnabled = true
            (sender as AnyObject).setTitle("次へ", for: .normal)
            
        }
        
    }
    
}
extension UIImage {
    func resized(toWidth width: CGFloat) -> UIImage? {
        let canvasSize = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        UIGraphicsBeginImageContextWithOptions(canvasSize, false, scale)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: canvasSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
