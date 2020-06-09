//
//  ViewController.swift
//  InventoryModule
//
//  Created by development on 5/3/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class AccessoriesListController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    //COMO CONSUMIR UN REST JSON
    let tokenapi = "7yh8ficfgWp-9F1LGafE3PsN1RmyiR__1nAhgoI3dMY"

    var products: [AccesoriesModel]?
    
    func fetchAccessories(){
        
        let url = NSURL(string: "https://etps4api.azurewebsites.net/ListaItems/accesorios")
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
                    producto.quantityAccesory = "\((dictionary["cantidad"] as? Int)!)"
                    print("prueba dato dic \(dictionary["cantidad"] as? Int)")
                    producto.imageAccesory = "image"//dictionary["image"] as? String

                    
                    self.products?.append(producto)
                    
                    
                }
                self.collectionView?.reloadData()
                
                
            } catch let jsonError {
                print(jsonError)
            }

        }.resume()
       
    }
    

    //funcion encargada del menu bar
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAccessories()
        
        navigationItem.title = "Accesorios"
        navigationController?.navigationBar.isTranslucent = false
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(AccesoriesCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        setupMenuBar()
        
    }
    
    private func setupMenuBar(){
        
    }
    
    
    
    //funcion que se encarga de retornar la cantidad de elementos de la lista de accesorios
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products?.count ?? 0
        
    }
    
    //REVISAR ESTA FUNCION ERROR AL CARGAR LA API
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! AccesoriesCell
        cell.product = products?[indexPath.item]
        return cell
        
        
    }
    
    //FUNCION QUE DEFINE EL ANCHO DE CADA FILA
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: view.frame.width, height:75)
        
        
    }
    
    //Espacion entre cada elemento de la lista 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    //FUNCION ENCARGADA DE CAMBIAR DE VISTA AL DAR CLIC A UN ELEMENTO DE LA LISTA
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let layount = UICollectionViewFlowLayout()
        let controller = DetailAccessoryController(collectionViewLayout: layount)
        controller.name = "Hola"
        //controller.q = "mundo"
        navigationController?.pushViewController(controller, animated: true )
    }
    
    
    
    
}














