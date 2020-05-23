//
//  SparepartListView.swift
//  InventoryModule
//
//  Created by development on 5/9/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit



class SparepartsViewCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews(){
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class SparepartsCell: SparepartsViewCell{
    
    var product:  AccesoriesModel? {
        didSet {
            nameProduct.text = product?.nameAccesory
            quantityProduct.text = product?.quantityAccesory
            //setupImage()
            
        }
    }
    
    
    //ESTA FUNCION NOR SIRVE PARA VISUALIZAR LA IMAGEN QUE TRAEMOS DE LA API
    
    
    //imagen
    let imageProduct: UIImageView = {
        let imageView  = UIImageView()
        imageView.backgroundColor = UIColor.green
        imageView.image = UIImage(named: "ejemrepuesto")
        return imageView
    }()
    
    
    //Linea Horizontal divisora
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    
    //label para mostrar el nombre de los accesorios
    let nameProduct: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(14)
        label.text = "EarPods"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //TextView que mostrara la cantidad de cada accesorio
    let quantityProduct: UITextView = {
        let textview = UITextView()
        textview.isUserInteractionEnabled = false
        textview.font = textview.font?.withSize(12)
        textview.translatesAutoresizingMaskIntoConstraints = false
        textview.text = "12 disponibles"
        textview.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        textview.textColor = UIColor.lightGray
        return textview
        
    }()
    
    
    
    //Agregamos cada elemento y le damos el Desing tipo lista (nose como pero lo hice :v)
    override func setupViews(){
        addSubview(separatorView)
        addSubview(imageProduct)
        addSubview(nameProduct)
        addSubview(quantityProduct)
        
        
        //-----tamanio y ubicacion de los elementos que conforma cada item de la lista-------
        
        //IMAGEN
        //tamanio y ubicacion de la imagen
        addConstraintsWithFormat(format: "H:|-16-[v0(60)]|", views: imageProduct)
        
        
        // IMAGEN Y LINEA DIVISoRA
        //Ubicacion de la imagen y linea divisora
        addConstraintsWithFormat(format: "V:|-7-[v0(60)]-[v1(1)]|", views: imageProduct, separatorView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
        
        
        //TAMANIO Y UBICACION DEL LABEL QUE MUESTRA EL NOMBRE DEL ACCESORIO
        
        //top constrain titulo
        addConstraint(NSLayoutConstraint(item: nameProduct, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 5))
        //left constrain titulo
        addConstraint(NSLayoutConstraint(item: nameProduct, attribute: .left, relatedBy: .equal, toItem: imageProduct, attribute: .right, multiplier: 1, constant: 8))
        //right constrain titulo
        addConstraint(NSLayoutConstraint(item: nameProduct, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: 8))
        //height constrain
        addConstraint(NSLayoutConstraint(item: nameProduct, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 25))
        
        
        
        //TAMANIO Y UBICACION DEL TEXTVIEW QUE MUESTRA LA CANTIDAD DE ACCESORIOS
        
        //top constrain cantidad
        addConstraint(NSLayoutConstraint(item: quantityProduct, attribute: .top, relatedBy: .equal, toItem: nameProduct, attribute: .bottom, multiplier: 1, constant: 0))
        //left constrain cantidad
        addConstraint(NSLayoutConstraint(item: quantityProduct, attribute: .left, relatedBy: .equal, toItem: imageProduct, attribute: .right, multiplier: 1, constant: 8))
        //right constrain cantidad
        addConstraint(NSLayoutConstraint(item: quantityProduct, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: 8))
        //height constrain cantidad
        addConstraint(NSLayoutConstraint(item: quantityProduct, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 25))
        
        
    }
    
    
    
    
    
    
    
}


