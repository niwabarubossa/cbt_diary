//
//  SheetModel.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/06.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import Foundation

struct SheetModel {
    let title: String
    let subTitle: String?
    let tagArray: Array<String>
    let storyboardId: String

    static func createModels() -> [SheetModel] {
        return [
            SheetModel(title: "AAAAAAAAAA", subTitle: "aaaaaaaaaa",tagArray: ["入門","上級者"],storyboardId: "AutoThinkingSheet"),
            SheetModel(title: "BBBBBBBBBB", subTitle: "bbbbbbbbbb",tagArray: [],storyboardId: "AutoThinking"),
            SheetModel(title: "CCCCCCCCCC", subTitle: "cccccccccc",tagArray: ["ff","gg"],storyboardId: "AutoThinking"),
        ]
    }
}
