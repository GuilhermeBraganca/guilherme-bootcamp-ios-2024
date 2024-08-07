//
//  ViewController.swift
//  TabBarENotificationCenterViewCode
//
//  Created by MacBook on 05/08/24.
//

import UIKit




class MainTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tela01 = createNavController(viewController: Tela01VC(), title: "Tela01", imageName: "magnifyingglass")
        
        let tela02 = createNavController(viewController: Tela02VC(), title: "Tela02", imageName: "heart")
        
        let tela03 = createNavController(viewController: Tela03VC(), title: "Tela03", imageName: "star")
        
        viewControllers = [tela01, tela02, tela03]
        customizeTabBarAppearance()
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        
        return navController
    }
    
    private func customizeTabBarAppearance(){
        
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.layer.borderWidth = 0.5
        
    }
    
}

