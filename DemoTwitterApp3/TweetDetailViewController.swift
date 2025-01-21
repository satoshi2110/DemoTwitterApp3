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
    
    var tweetBarButtonItem: UIBarButtonItem!
    var cancelBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tweetBarButtonItem = UIBarButtonItem(title: "投稿する", style: .done, target: self, action: #selector(tweetBarButtonTapped(_:)))
        cancelBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBarButtonTapped(_:)))
        
        displayData()
        self.navigationItem.rightBarButtonItems = [tweetBarButtonItem]
        self.navigationItem.leftBarButtonItems = [cancelBarButtonItem]
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
    
    @objc func tweetBarButtonTapped(_ sender: UIBarButtonItem) {
            print("【投稿する】ボタンが押された!")
        }
    @objc func cancelBarButtonTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
        }
}
