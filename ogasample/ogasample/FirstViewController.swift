//
//  FirstViewController.swift
//  ogasample
//
//  Created by ogaoga on 2019/11/04.
//  Copyright © 2019 ogaoga.org. All rights reserved.
//

import UIKit

// アイテムの定義
struct Item1 {
    var icon: UIImage
    var title: String
    var tags: [String]
}

struct Item2 {
    var icon: UIImage
    var title: String
    var count: Int
}

struct ItemInfo {
    var type: String
    var item: Any
}

class FirstViewController: UITableViewController {
    
    // 表示するアイテムのリストを定義。
    let items: [ItemInfo] = [
        ItemInfo(type: "auto_thinking",
                 item: Item1(icon: UIImage(named: "choushinki")!, title: "自動思考キャッチトレーニング", tags: ["入門", "入門", "入門"])),
        ItemInfo(type: "trap_trac",
                 item: Item2(icon: UIImage(named: "trap_sample")!, title: "TAP・TRAC法", count: 123)),
        ItemInfo(type: "auto_thinking",
                 item: Item1(icon: UIImage(named: "exposure")!, title: "エクスポージャー", tags: ["入門", "入門", "入門"]))
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
        
        let itemInfo = items[indexPath.row]
        
        switch itemInfo.type {
        case "auto_thinking":
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell1", for: indexPath) as! ItemCell1
            let item = itemInfo.item as! Item1
            cell.icon.image = item.icon
            cell.title.text = item.title
            cell.tags.text = item.tags.joined(separator: ", ") // とりあえずカンマ区切りで文字列にしています。
            return cell
            
        case "trap_trac":
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell2", for: indexPath) as! ItemCell2
            let item = itemInfo.item as! Item2
            cell.title.text = item.title
            cell.icon.image = item.icon
            cell.count.text = "\(item.count)"
            return cell
            
        default:
            // 本来起こり得ないので、とりあえず ItemCell1 を返しておく。
            return tableView.dequeueReusableCell(withIdentifier: "ItemCell1", for: indexPath)
        }
    }
}
