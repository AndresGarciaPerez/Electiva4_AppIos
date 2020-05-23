//
//  SparepartDetailController.swift
//  InventoryModule
//
//  Created by development on 5/23/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit


class DetailSparepartController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let vista = SparepartDetailView()
    
    override func loadView() {
        view = vista
        view.backgroundColor = UIColor.white
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Detalle Repuesto"
        
        let button = UIButton()
        button.frame = CGRect(x: 70, y: 310, width: 170, height: 30)
        button.titleLabel?.font = button.titleLabel?.font.withSize(12)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitle("Ubicaciones", for: .normal)
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 3
        button.addTarget(self, action: #selector(locations), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    func locations(sender: UIButton){
        let layount = UICollectionViewFlowLayout()
        let controller = LocationsController(collectionViewLayout: layount)
        navigationController?.pushViewController(controller, animated: true )
    }
    
    
    
    
    var products: [AccesoriesModel]?
    
    
    //Esta funcion nos sirve para enviarle data al modelo
    func fetchAccessories(){
        
        self.products = [AccesoriesModel]()
        let producto = AccesoriesModel()
        producto.nameAccesory = "EJEMPLO NOMBRE ACCESORIO"
        producto.quantityAccesory = "EJEMPLO CANTIDAD"
        producto.imageAccesory = "EJEMPLO IMAGEN"
        self.products?.append(producto)
        
    }
    
    
    
    
    
    
}
