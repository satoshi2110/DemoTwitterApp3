//
//  ViewController.swift
//  DemoTwitterApp3
//
//  Created by N S on 2025/01/21.
//
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var textArrey: [Model] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "Cell")
        setTextArrey()
    }
    
    func setTextArrey() {
        for i in 1...10 {
            let model = Model(user: "ユーザー名", text: "\(i)です")
            textArrey.append(model)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArrey.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell else {
            fatalError("セルの再利用時に失敗しました")
        }
        let model = textArrey[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
