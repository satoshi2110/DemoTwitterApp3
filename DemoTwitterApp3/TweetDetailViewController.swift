//
//  TweetDetailViewController.swift
//  DemoTwitterApp3
//
//  Created by N S on 2025/01/21.
//

import UIKit

class TweetDetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var user: String = ""
    var text:String = ""
    
    override func viewDidLoad() {
         displayData()
    }
    
    func configure(tweet: Model) {
        user = tweet.user
        text = tweet.text
        print("データは\(user)\(text)")
    }
    
    func displayData() {
        label.text = user
        textView.text = text
    }
}
