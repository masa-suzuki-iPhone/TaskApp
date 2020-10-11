//
//  Task.swift
//  taskApp
//
//  Created by 鈴木正義 on 2020/10/04.
//  Copyright © 2020 masayoshi.suzuki. All rights reserved.
//

import RealmSwift
class Task: Object {
    
    
    
    // 管理用ID。　プライマリーキー
    @objc dynamic var id = 0
    // タイトル
    @objc dynamic var title = ""
    //内容
    @objc dynamic var contents = ""
    //日時
    @objc dynamic var date = Date()
    //カテゴリー
    @objc dynamic var category = ""
    //idをプライマリーキーとして設定
    override static func primaryKey() -> String?
    {
        return "id"
    }
}
