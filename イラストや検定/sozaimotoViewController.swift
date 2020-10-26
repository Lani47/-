//
//  sozaimotoViewController.swift
//  イラストや検定
//
//  Created by cmStudent on 2020/09/15.
//  Copyright © 2020 20CM0103. All rights reserved.
//

import UIKit

class sozaimotoViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    let linkText = "Hello"
    override func viewDidLoad() {
        super.viewDidLoad()

        let baseString = "使わせていただいた素材元のサイト様　\n\n季節の無料イラストColor-full Days　\n\nいらすとや"

        let attributedString = NSMutableAttributedString(string: baseString)

        
        

        attributedString.addAttribute(.link,
                                      value: "https://season-freeillust.com/index.html",
                                      range: NSString(string: baseString).range(of: "季節の無料イラストColor-full Days"))
        attributedString.addAttribute(.link,
        value: "https://www.irasutoya.com/",
        range: NSString(string: baseString).range(of: "いらすとや"))


        textView.attributedText = attributedString

        // isSelectableをtrue、isEditableをfalseにする必要がある
        // （isSelectableはデフォルトtrueだが説明のため記述）
        textView.isSelectable = true
        textView.isEditable = false
        textView.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

    func textView(_ textView: UITextView,
                  shouldInteractWith URL: URL,
                  in characterRange: NSRange,
                  interaction: UITextItemInteraction) -> Bool {

        UIApplication.shared.open(URL)

        return false
    }
}
