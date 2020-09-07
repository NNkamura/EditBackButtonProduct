//
//  EditBackViewController.swift
//  EditBackButtonProduct
//
//  Created by Shu Nakamura on 2020/09/08.
//  Copyright © 2020 ShuNakamura. All rights reserved.
//

import UIKit

class EditBackViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        /// 前の画面を見てbackBarButtonItemを編集する
        if let navi = navigationController {
            if navi.viewControllers.count > 1 {
                let previousVC = navi.viewControllers[navi.viewControllers.count - 2]
                previousVC.navigationItem.backBarButtonItem = UIBarButtonItem(title: "NewStyle", style: .plain, target: nil, action: nil)
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        /// nilにて元に戻す
        navigationController?.topViewController?.navigationItem.backBarButtonItem = nil
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
