//
//  MenuBar.swift
//  InventoryModule
//
//  Created by development on 5/4/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class MenuBar: UITabBarController {
    
    override func viewDidLoad() {
        let layount = UICollectionViewFlowLayout()
        let menutabController = HomeController(collectionViewLayout: layount)
        
        let accesorios = UINavigationController(rootViewController: menutabController )
        accesorios.tabBarItem.title = "Accesorios"
        accesorios.tabBarItem.image = UIImage(named: "icons8-auriculares-32")
        
        viewControllers = [createDummyNavControllerWithTitle(title: "Repuestos", imageName: "icons8-múltiples-dispositivos-50"), accesorios, createDummyNavControllerWithTitle(title: "Profile", imageName: "icons8-usuario-masculino-en-círculo-24") ]
        
    }
    
    private func createDummyNavControllerWithTitle(title: String, imageName: String)-> UINavigationController {
        let viewController = UIViewController()
        let tab = UINavigationController(rootViewController: viewController )
        tab.tabBarItem.title = title
        tab.tabBarItem.image = UIImage(named: imageName)
        return tab
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}










