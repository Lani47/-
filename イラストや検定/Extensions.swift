////
////  Extensions.swift
////  イラストや検定
////
////  Created by cmStudent on 2020/09/08.
////  Copyright © 2020 20CM0103. All rights reserved.
////
//
//import Foundation
//
////extension UIImage {
////    func resized(toWidth width: CGFloat) -> UIImage? {
////        let canvasSize = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
////        UIGraphicsBeginImageContextWithOptions(canvasSize, false, scale)
////        defer { UIGraphicsEndImageContext() }
////        draw(in: CGRect(origin: .zero, size: canvasSize))
////        return UIGraphicsGetImageFromCurrentImageContext()
////    }
////}
////
//
//
//import UIKit
//
//class bararaViewController: UIViewController {
//    
//    override func viewDidLoad() {
//        randomQuestion()
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//    }
//    
//    
//    @IBOutlet weak var answerImageview: UIImageView!
//    
//    @IBOutlet weak var answerLavel: UILabel!
//    
//    //じゃんけん　（数字）
//    var answerNumber = 0
//    var newAnswerNumber = 0
//    
//    //var countg = 0
//    
//    func randomQuestion(){
//        // 0,1,2の数値をランダムに出す
//        //answerNumber = Int.random(in: 0..<3)
//        
//        repeat{
//            
//            // 0,1,2の数値をランダムに出す
//            newAnswerNumber = Int.random(in: 0..<10)
//            
//            //whileで条件を設定する
//            //answerNumberとanswerNumberが一緒ならrepeatが発動
//        } while answerNumber == newAnswerNumber
//        
//        
//        answerNumber = newAnswerNumber
//        
//        if answerNumber == 0 {
//            
//            
//            questionLabel.text = "この絵の名前は？"
//            imageView.image = imgteppouuo
//            //img.image = imgAnt
//            button1.setTitle("お魚のイラスト", for: UIControl.State.normal)
//            button2.setTitle("水を発射するテッポウウオのイラスト", for: UIControl.State.normal)
//            button3.setTitle("ハタンポのイラスト", for: UIControl.State.normal)
//            collectAnswer = "2"
//            
//            
//        } else if answerNumber == 1 {
//            
//            questionLabel.text = "このイラストの名前は？"
//            imageView.image = imggureepuhuru
//            button1.setTitle("ピンクグレープフルーツの輪切りのイラスト", for: UIControl.State.normal)
//            button2.setTitle("グレープフルーツの輪切りのイラスト", for: UIControl.State.normal)
//            button3.setTitle("グレープフルーツのイラスト", for: UIControl.State.normal)
//            collectAnswer = "2"
//            
//        } else if answerNumber == 2{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 3{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 4{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 5{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        } else if answerNumber == 6{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 7{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 8{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 9{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }　else if answerNumber == 10{
//            
//            questionLabel.text = "このイラストは？"
//            imageView.image = imgCaterpillar
//            button1.setTitle("点字ブロック上の障害物のイラスト", for: UIControl.State.normal)
//            button2.setTitle("路上駐車のイラスト", for: UIControl.State.normal)
//            button3.setTitle("杖を持つ人のイラスト", for: UIControl.State.normal)
//            collectAnswer = "1"
//        }
//    }
//    
//    
//    
//    @IBAction func nextAction(_ sender: Any) {
//        if count == 5 {
//            if okCount == 5{
//                imageView.image = imggreat
//                questionLabel.text = "終了！\(okCount)問正解！　すごい！　全問正解だ！"
//                // ansorLavel.text = "❌"
//                count = 0
//                resutart += 1
//                okCount = 0
//            } else if okCount == 4 {
//                imageView.image = imgTakuramuMan
//                questionLabel.text = "終了！\(okCount)問正解！ なかなかやるね！"
//                // ansorLavel.text = "❌"
//                count = 0
//                resutart += 1
//                okCount = 0
//            } else if okCount == 3 {
//                imageView.image = imgGarasuTenjou
//                questionLabel.text = "終了！\(okCount)問正解！ 遊んでくれてありがとう！"
//                // ansorLavel.text = "❌"
//                count = 0
//                resutart += 1
//                okCount = 0
//            } else {
//                imageView.image = imgPienMen
//                questionLabel.text = "終了！\(okCount)問正解！ うーん... でもまだ頑張れるはずだ！"
//                // ansorLavel.text = "❌"
//                count = 0
//                resutart += 1
//                okCount = 0
//            }
//            
//            (sender as AnyObject).setTitle("もう一度", for: .normal)
//        } else if push == 0{
//            (sender as AnyObject).setTitle("答えを入力してください", for: .normal)
//        } else {
//            //ansorLavel.text = "⭕️or❌"
//            push = 0
//            randomQuestion()
//            hide()
//            button1.isEnabled = true
//            button2.isEnabled = true
//            (sender as AnyObject).setTitle("次へ", for: .normal)
//            loadView()
//            viewDidLoad()
//        }
//        
//        
//        
//        
//    }
//    
//    
//    
//    
//}
