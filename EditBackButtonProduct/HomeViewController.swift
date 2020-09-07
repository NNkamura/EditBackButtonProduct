//
//  HomeViewController.swift
//  EditBackButtonProduct
//
//  Created by Shu Nakamura on 2020/09/08.
//  Copyright © 2020 ShuNakamura. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        /// nilを代入することで元に戻すことができる
        navigationItem.backBarButtonItem = nil
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BasicStyle"{
            /// 素直なナビゲーションバー戻るボタンの変え方
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "BasicStyle", style: .plain, target: nil, action: nil)
            /// 一度上記の処理をすると、他の画面へ遷移した際も”戻る”ボタンが”BasicStyle”ボタンに変わってしまう。
            /// そのため、20行目のようにして元に戻す必要がある。
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
