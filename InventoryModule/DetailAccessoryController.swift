//
//  DetalleAccessoryController .swift
//  InventoryModule
//
//  Created by development on 5/9/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit


class DetailAccessoryController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let vista = AccesoryDetail()
    var name = ""
    var accesory: AccesoriesModel = AccesoriesModel()
    
    //var q = ""
    override func loadView() {
        //fetchAccessories()
        vista.name = name
        print(name)
        //accesory = fetchAccesory(name: self.name)
        view = vista
        view.backgroundColor = UIColor.white
        vista.name = name
        print("vista acc \(vista.name)")
        //vista.proveedorLabel.text = name
        //print("\(accesory.nameAccesory!)")
        vista.nameAccessoryLabel.text =  name
        vista.fetchAccessories(vari: name)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Detalle Accesorio"
        
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
        vista.name = name
        print("vista acc \(vista.name)")
     
    }
    
    func locations(sender: UIButton){
        let layount = UICollectionViewFlowLayout()
        let controller = LocationsController(collectionViewLayout: layount)
        controller.name = name
        print(controller.name)
        navigationController?.pushViewController(controller, animated: true )
    }
    

    
    
    var products: [AccesoriesModel]?
    
    
    //Esta funcion nos sirve para enviarle data al modelo 
    
    /*func fetchAccessories(){
    
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
                    //self.accesory.nameAccesory = dictionary["item"] as? String
                    print(producto.nameAccesory!)
                    producto.quantityAccesory = "\(dictionary["cantidad"] as? Int)"
                    print(producto.quantityAccesory!)
                    self.accesory = producto
                    print(self.accesory.nameAccesory!)
                }
                //self.collectionView?.reloadData()
                
                
            } catch let jsonError {
                print(jsonError)
            }
            
            }.resume()
        
    }*/
    

    

    
    
}
