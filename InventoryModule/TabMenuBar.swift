//
//  MenuBar.swift
//  InventoryModule
//
//  Created by development on 5/4/20.
//  Copyright © 2020 development. All rights reserved.
// ProfileControl

import UIKit

class MenuBar: UITabBarController {
    var name = ""
    
    override func viewDidLoad() {
        print(name)
        
        let layount = UICollectionViewFlowLayout()
        let accessoriesOption = SparepartsListController(collectionViewLayout: layount)
        let sparePartsOption = AccessoriesListController(collectionViewLayout: layount)
        let profileOption = ProfileController(collectionViewLayout: layount)
        //profileOption.nameU = name
        let accessories = UINavigationController(rootViewController: accessoriesOption)
        accessories.tabBarItem.title = "Repuestos"
        accessories.tabBarItem.image = UIImage(named: "icons8-auriculares-32")
        
        
        let spareParts = UINavigationController(rootViewController: sparePartsOption)
        spareParts.tabBarItem.title = "Accesorios"
        spareParts.tabBarItem.image = UIImage(named: "icons8-múltiples-dispositivos-50")
        
        let profile = UINavigationController(rootViewController: profileOption)
        profile.tabBarItem.title = "Perfil"
        profile.tabBarItem.image = UIImage(named: "icons8-usuario-masculino-en-círculo-24")
        
        viewControllers = [spareParts, accessories, profile]
        
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
}










