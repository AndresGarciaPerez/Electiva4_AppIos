//
//  DetalleAccessoryController .swift
//  InventoryModule
//
//  Created by development on 5/9/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class DetailAccessoryView: UIView {

    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = .black
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}




class DetailAccessoryController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let vista = AccesoryDetailView()
    
    override func loadView() {
        view = vista
        view.backgroundColor = UIColor.white
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
