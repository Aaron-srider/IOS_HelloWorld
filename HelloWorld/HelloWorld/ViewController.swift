//
//  ViewController.swift
//  HelloWorld
//
//  Created by c w on 2021/12/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        print("helloworld")
        
        let button = UIButton()
        button.setTitle("btn", for: .normal)
        button.setTitleColor(.link, for: .normal)
        
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "Image")
        imageView.frame.size.width = 300
        
        imageView.frame.size.height = 300
        imageView.center = view.center
        imageView.backgroundColor = UIColor.black
        
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        self.view.addSubview(imageView)
        
        view.backgroundColor = UIColor.red
        

    }


}

