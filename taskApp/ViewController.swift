//
//  ViewController.swift
//  taskApp
//
//  Created by 鈴木正義 on 2020/10/01.
//  Copyright © 2020 masayoshi.suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    // データの数（セルの数を返すメソッド）
    func tableView ( _ tableView: UITableView, numberOfRowsInSection section : Int ) -> Int {
        return 0
    }
    
    //各セルの内容を返すメソッド
    func tableView ( _ tableView : UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        // 再利用可能なCellを得る
        let cell = tableView . dequeueReusableCell(withIdentifier: "Cell", for : indexPath )
        return cell
    }

     // 各セルを選択した時に実行されるメソッド
    func tableView ( _ tableView : UITableView, didSelectRowAt IndexPath : IndexPath ) {
        performSegue(withIdentifier: "cellSegue", sender: nil) //↑　＋ボタンをタップした時に移動できるようになった
    }
    
    // セルが消去可能なことを伝えるメソッド
    func tableView ( _ tableView : UITableView, editingStyleForRowAt indexPath : IndexPath)-> UITableViewCell . EditingStyle {
        return . delete
    }
    
    // Delete　ボタンが押された時に呼ばれるメソッド
    func tableView ( _ tableView : UITableView, commit editingStyle : UITableViewCell . EditingStyle , forRowAt indexPath : IndexPath) {
    
    }

}

