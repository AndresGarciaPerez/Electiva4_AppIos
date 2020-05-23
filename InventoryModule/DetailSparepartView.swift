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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
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
        label.text = "EarPods"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let numSerieLabel: UILabel = {
        let label = UILabel()
        label.text = "Numero de serie: 1234-5"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fechaEntregaLabel: UILabel = {
        let label = UILabel()
        label.text = "Fecha de entrega: 21/02/2019"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let precioCompraLabel: UILabel = {
        let label = UILabel()
        label.text = "Precio de compra/U: $80.00"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let unidadesDisponiblesLabel: UILabel = {
        let label = UILabel()
        label.text = "Unidades disponibles: 75"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let proveedorLabel: UILabel = {
        let label = UILabel()
        label.text = "Proveedor: Apple"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    //ESTE ES LA FUNCION LA CUAL HAY QUE AGREGARLE LOS LABEL, IMAGEVIEW, ETC
    //TAMBIEN AQUI SE LE DARA LA UBICACION Y TAMAANIO A CADA CONTROL
    func AccessoryDetailLayout() {
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

}
