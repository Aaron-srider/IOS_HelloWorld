//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by c w on 2021/12/6.
//

import UIKit
import FastLayout

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
   
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
       
        
        let splitViewController = UISplitViewController(style: .doubleColumn)
        
        window?.rootViewController = splitViewController
        
        let leftNavigationController = UINavigationController(rootViewController: FirstViewController())
        
        let appear = UINavigationBarAppearance()
//        appear.backgroundColor = .cyan
        appear.configureWithDefaultBackground()
        leftNavigationController.navigationBar.standardAppearance = appear
        leftNavigationController.navigationBar.compactAppearance = appear
        leftNavigationController.navigationBar.scrollEdgeAppearance = appear
        if #available(iOS 15.0, *) {
            leftNavigationController.navigationBar.compactScrollEdgeAppearance = appear
        } else {
            // Fallback on earlier versions
        }
        
        
        let rightViewController = ViewController()
        
        splitViewController.setViewController(leftNavigationController, for: .primary)
        splitViewController.setViewController(rightViewController, for: .secondary)
        
       let btn1 = initBtn()
        
        let btn2 = UIButton()
//
//        leftNavigationController.view.addSubview(btn1)
//
//        leftNavigationController.view.addSubview(btn2)
        

      
//        constrant(view: btn1, direction: "top", value: 200)
//        constrant(view: btn1, direction: "leading", value: 200)
////        constrant(view: btn1, direction: "trailing", value: -100)
//        constrant(view: btn1, direction: "height", value: 100)
//        constrant(view: btn1, direction: "width", value: 100)
//
        

        
      
       
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func constrant(view: UIView, direction: String, value: CGFloat) {
        view.translatesAutoresizingMaskIntoConstraints = false
        switch direction {
        case "top":    view.topAnchor.constraint(equalTo: view.superview!.topAnchor, constant: value).isActive = true
        case "bottom":    view.bottomAnchor.constraint(equalTo: view.superview!.bottomAnchor, constant: value).isActive = true
        case "leading":    view.leadingAnchor.constraint(equalTo: view.superview!.leadingAnchor, constant: value).isActive = true
        case "trailing":    view.trailingAnchor.constraint(equalTo: view.superview!.trailingAnchor, constant: value).isActive = true
        case "width":view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        case "height":view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        default:
            print("error")
        }
       
    }
    
    func initBtn() -> UIButton{
        let btn1 = UIButton()
        
        // Position Button
        
        
        btn1.setTitle("hello", for: .normal)
        
        
        btn1.backgroundColor=UIColor.lightGray
        
        btn1.layer.cornerRadius = 30
        
    
        
        return btn1
    }

}

