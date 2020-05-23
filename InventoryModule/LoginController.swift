//
//  InicioController.swift
//  InventoryModule
//
//  Created by development on 5/22/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class LoginController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    let vista = ViewLogin()
    
    override func loadView() {
        view = vista
        view.backgroundColor = UIColor.white
        self.title = "Login"
        let button = UIButton()
        button.frame = CGRect(x: 40, y: 400, width: 235, height: 30)
        button.titleLabel?.font = button.titleLabel?.font.withSize(12)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitle("Iniciar sesion", for: .normal)
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 3
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    func login(sender: UIButton){
        print("Se presiono el boton")
        let controller = MenuBar()
        self.present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }

}
