//
//  File.swift
//  HelloWorld
//
//  Created by c w on 2021/12/7.
//

import UIKit

class FirstViewController:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
            
        title = "第一页"
        view.backgroundColor = UIColor.gray
            
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(nextPageClick))
        
        
        navigationItem.rightBarButtonItem?.tag = 1
        navigationController?.navigationBar.barTintColor = UIColor.black
        
        navigationController?.navigationBar.backgroundColor = UIColor.black
        
        navigationController?.navigationBar.titleTextAttributes=[NSAttributedString.Key.foregroundColor:UIColor.white]
       
    }
    
    @objc func nextPageClick(_ sender: UIBarButtonItem) {
        print(sender.tag)
           navigationController?.pushViewController(SecondViewController(), animated: true)
       }
    
    @objc func nill() {
           
       }
    
   
    
    
}

