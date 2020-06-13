//
//  ProfileController.swift
//  InventoryModule
//
//  Created by development on 5/22/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit



class ProfileController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let vista = ViewProfile()
    var nameU=""
    var surU=""
    var mail=""
    var rol=""
    
    override func loadView() {
        view = vista
        view.backgroundColor = UIColor.white
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Perfil"
        navigationController?.navigationBar.isTranslucent = false
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(ViewProfile.self, forSupplementaryViewOfKind: "profile", withReuseIdentifier: "profile")
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        
        // Agrego los button en el controlador para poder hacer uso de navigationController?
        let logoutButton = UIButton()
        logoutButton.frame = CGRect(x: 25, y: 350, width: 125, height: 30)
        logoutButton.titleLabel?.font = logoutButton.titleLabel?.font.withSize(12)
        logoutButton.setTitleColor(UIColor.blue, for: .normal)
        logoutButton.setTitle("Cerrar sesion", for: .normal)
        logoutButton.layer.borderColor = UIColor.blue.cgColor
        logoutButton.layer.borderWidth = 0.5
        logoutButton.layer.cornerRadius = 3
        logoutButton.addTarget(self, action: #selector(logout), for: .touchUpInside)
        self.view.addSubview(logoutButton)
        
        
        let changePassButton = UIButton()
        changePassButton.frame = CGRect(x: 165, y: 350, width: 125, height: 30)
        changePassButton.titleLabel?.font = changePassButton.titleLabel?.font.withSize(12)
        changePassButton.setTitleColor(UIColor.blue, for: .normal)
        changePassButton.setTitle("Cambiar Contraseña", for: .normal)
        changePassButton.layer.borderColor = UIColor.blue.cgColor
        changePassButton.layer.borderWidth = 0.5
        changePassButton.layer.cornerRadius = 3
        changePassButton.addTarget(self, action: #selector(changePass), for: .touchUpInside)
        self.view.addSubview(changePassButton)
        
        
    }
    
    
    
    func changePass(sender: UIButton){
        let layount = UICollectionViewFlowLayout()
        let controller = ChangePassController(collectionViewLayout: layount)
        navigationController?.pushViewController(controller, animated: true )
    }
    
    func logout(sender: UIButton){
        let controller = LoginController()
        self.present(controller, animated: true, completion: nil)
    }
    
    

    
    
    
   
}
