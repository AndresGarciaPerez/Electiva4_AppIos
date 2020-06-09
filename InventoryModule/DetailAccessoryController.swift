//
//  DetalleAccessoryController .swift
//  InventoryModule
//
//  Created by development on 5/9/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit


class DetailAccessoryController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let vista = AccessoryDetailView()
    var name = ""
    var accesory: [AccesoriesModel]?
    //var q = ""
    
    override func loadView() {
        view = vista
        view.backgroundColor = UIColor.white
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Detalle Accesorio"
        fetchAccessories()
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
    
        let url = NSURL(string: "https://etps4api.azurewebsites.net/Detalle/\(name)")
        print(url)
        var request = URLRequest(url: url as! URL)
        //request.addValue("Bearer \(tokenapi)", forHTTPHeaderField: "Authorization")
        
        
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil {
                print(error ?? "genero")
                return
            }
            
            
            //TRAEMOS LOS DATOS DE LA API
            let str = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(str ?? "Nose puede mostrar la respuesta")
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
                
                self.products = [AccesoriesModel]()
                
                for dictionary in json as! [[String: AnyObject]]{
                    //print(dictionary)
                    
                    //ENVIAMOS LOS DATOS A LA CLASE MODEL
                    let producto = AccesoriesModel()
                    producto.nameAccesory = dictionary["item"] as? String
                    producto.quantityAccesory = dictionary["cantidad"] as? String
                    producto.imageAccesory = "image"//dictionary["image"] as? String
                    
                    
                    self.products?.append(producto)
                    
                    
                }
                self.collectionView?.reloadData()
                
                
            } catch let jsonError {
                print(jsonError)
            }
            
            }.resume()
        
    }
    

    

    
    
}
