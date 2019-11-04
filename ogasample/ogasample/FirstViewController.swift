//
//  FirstViewController.swift
//  ogasample
//
//  Created by ogaoga on 2019/11/04.
//  Copyright © 2019 ogaoga.org. All rights reserved.
//

import UIKit

// アイテムの定義
struct Item {
    var icon: UIImage
    var title: String
    var tags: [String]
}

class FirstViewController: UITableViewController {
    
    // 表示するアイテムのリストを定義。
    var items: [Item] = [
        Item(icon: UIImage(named: "choushinki")!, title: "自動思考キャッチトレーニング", tags: ["入門", "入門", "入門"]),
        Item(icon: UIImage(named: "trap_sample")!, title: "TAP・TRAC法", tags: ["入門", "入門", "入門"]),
        Item(icon: UIImage(named: "trap_sample")!, title: "エクスポージャー", tags: ["入門", "入門", "入門"])
    ]
    
    // セルの名前。StoryBoard でもこのラベルを Cell に指定する。
    let itemCellName = "ItemCell"
  
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // セクションの数を指定
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count // アイテムの数を指定
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // viewDidLoad で登録したセルを、ItemCell として取り出す。
        let cell = tableView.dequeueReusableCell(withIdentifier: itemCellName, for: indexPath) as! ItemCell

        // 表示する情報をセルにセットする。
        let item = self.items[indexPath.row]
        cell.title.text = item.title
        cell.tags.text = item.tags.joined(separator: ", ") // とりあえずカンマ区切りで文字列にしています。
        cell.icon.image = item.icon

        return cell
    }
}
