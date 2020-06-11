//
//  DetailSparepartView.swift
//  InventoryModule
//
//  Created by development on 5/23/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit


class SparepartDetailView: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        AccessoryDetailLayout()
        
    }
    func AccessoryDetailLayout(){}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class SparepartDetail: SparepartDetailView{

    
    
    
    //DE AQUI EN DELANTE CREAMOS LOS CONTROLES QUE QUERAMOS
    let accessoryImage: UIImageView = {
        let imageView  = UIImageView()
        imageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        imageView.backgroundColor = UIColor.green
        imageView.image = UIImage(named: "earpods")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameAccessoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Esperando"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let numSerieLabel: UILabel = {
        let label = UILabel()
        label.text = "Esperando"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fechaEntregaLabel: UILabel = {
        let label = UILabel()
        label.text = "Esperando"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let precioCompraLabel: UILabel = {
        let label = UILabel()
        label.text = "Esperando"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let unidadesDisponiblesLabel: UILabel = {
        let label = UILabel()
        label.text = "Esperando"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let proveedorLabel: UILabel = {
        let label = UILabel()
        label.text = "Esperando"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    //ESTE ES LA FUNCION LA CUAL HAY QUE AGREGARLE LOS LABEL, IMAGEVIEW, ETC
    //TAMBIEN AQUI SE LE DARA LA UBICACION Y TAMAANIO A CADA CONTROL
    override func AccessoryDetailLayout() {
        addSubview(accessoryImage)
        addSubview(nameAccessoryLabel)
        addSubview(numSerieLabel)
        addSubview(fechaEntregaLabel)
        addSubview(precioCompraLabel)
        addSubview(unidadesDisponiblesLabel)
        addSubview(proveedorLabel)

        
        addConstraint(NSLayoutConstraint(item: accessoryImage, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        //Ubicacion de la imagem
        addConstraint(NSLayoutConstraint(item: accessoryImage, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 20))
        
        //Ubicacion del label nombre de accesorio
        addConstraint(NSLayoutConstraint(item: nameAccessoryLabel, attribute: .top, relatedBy: .equal, toItem: accessoryImage, attribute: .top, multiplier: 1, constant: 135))
        addConstraint(NSLayoutConstraint(item: nameAccessoryLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        
        //Label numero de serie
        addConstraint(NSLayoutConstraint(item: numSerieLabel, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 20))
        addConstraint(NSLayoutConstraint(item: numSerieLabel, attribute: .top, relatedBy: .equal, toItem: nameAccessoryLabel, attribute: .top, multiplier: 1, constant: 35))
        
        //Label fecha de entrega
        addConstraint(NSLayoutConstraint(item: fechaEntregaLabel, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 20))
        addConstraint(NSLayoutConstraint(item: fechaEntregaLabel, attribute: .top, relatedBy: .equal, toItem: numSerieLabel, attribute: .top, multiplier: 1, constant: 20))
        
        //Label precio de compra
        addConstraint(NSLayoutConstraint(item: precioCompraLabel, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 20))
        addConstraint(NSLayoutConstraint(item: precioCompraLabel, attribute: .top, relatedBy: .equal, toItem: fechaEntregaLabel, attribute: .top, multiplier: 1, constant: 20))
        
        //Label unidades disponibles
        addConstraint(NSLayoutConstraint(item: unidadesDisponiblesLabel, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 20))
        addConstraint(NSLayoutConstraint(item: unidadesDisponiblesLabel, attribute: .top, relatedBy: .equal, toItem: precioCompraLabel, attribute: .top, multiplier: 1, constant: 20))
        
        //Label proveedor
        addConstraint(NSLayoutConstraint(item: proveedorLabel, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 20))
        addConstraint(NSLayoutConstraint(item: proveedorLabel, attribute: .top, relatedBy: .equal, toItem: unidadesDisponiblesLabel, attribute: .top, multiplier: 1, constant: 20))
    
        
        
}
    func fetchAccessories(vari: String){
        var search = vari.replacingOccurrences(of: " ", with: "%20", options:NSString.CompareOptions.literal, range: nil)
        let url = NSURL(string: "https://etps4api.azurewebsites.net/Detalle/\(search)")
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
                
                
                for dictionary in json as! [[String: AnyObject]]{
                    //print(dictionary)
                    
                    //ENVIAMOS LOS DATOS A LA CLASE MODEL
                    let producto = AccesoriesModel()
                    
                    self.nameAccessoryLabel.text = "\((dictionary["item"] as? String)!)"
                    self.unidadesDisponiblesLabel.text = ("Unidades disponibles: \((dictionary["cantidad"] as? Int)!)")
                    self.proveedorLabel.text = ("Proveedor: \((dictionary["proveedor"] as? String)!)")
                    self.numSerieLabel.text = ("Modelo: \((dictionary["modelo"] as? String)!)")
                    self.fechaEntregaLabel.text = ("Marca: \((dictionary["marca"] as? String)!)")
                    self.precioCompraLabel.text = "\((dictionary["marca"] as? String)!) \((dictionary["item"] as? String)!) \((dictionary["modelo"] as? String)!)"
                    
                    
                }
                //self.collectionView?.reloadData()
                
                
                
            } catch let jsonError {
                print(jsonError)
            }
            
            }.resume()
        
    }


}
