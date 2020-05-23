//
//  ChangePassView.swift
//  InventoryModule
//
//  Created by development on 5/22/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class ViewPassChange: UIView{
    override init(frame: CGRect){
        super.init(frame: frame)
        PassChangeLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let passLabel: UILabel = {
        let label = UILabel()
        label.text = "    Contraseña"
        label.font = label.font.withSize(12)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let passTextField: UITextField = {
        let textField = UITextField()
        textField.font = textField.font?.withSize(12)
        textField.placeholder = "   Contraseña actual"
        textField.layer.borderColor = UIColor.darkGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    let newPassLabel: UILabel = {
        let label = UILabel()
        label.text = "    Nueva contraseña"
        label.font = label.font.withSize(12)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let newPassTextField: UITextField = {
        let textField = UITextField()
        textField.font = textField.font?.withSize(12)
        textField.placeholder = "   Contraseña nueva"
        textField.layer.borderColor = UIColor.darkGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    
    let confirmPassLabel: UILabel = {
        let label = UILabel()
        label.text = "    Confirmar contraseña"
        label.font = label.font.withSize(12)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let confirmPassTextField: UITextField = {
        let textField = UITextField()
        textField.font = textField.font?.withSize(12)
        textField.placeholder = "   Confirmar nueva contraseña"
        textField.layer.borderColor = UIColor.darkGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    func PassChangeLayout(){
        addSubview(passLabel)
        addSubview(passTextField)
        addSubview(newPassLabel)
        addSubview(newPassTextField)
        addSubview(confirmPassLabel)
        addSubview(confirmPassTextField)
        
        
        addConstraint(NSLayoutConstraint(item: passLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 40))
        
        addConstraint(NSLayoutConstraint(item: passTextField, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passTextField, attribute: .top, relatedBy: .equal, toItem: passLabel, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: newPassLabel, attribute: .top, relatedBy: .equal, toItem: passTextField, attribute: .top, multiplier: 1, constant: 60))
        
        addConstraint(NSLayoutConstraint(item: newPassTextField, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: newPassTextField, attribute: .top, relatedBy: .equal, toItem: newPassLabel, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: confirmPassLabel, attribute: .top, relatedBy: .equal, toItem: newPassTextField, attribute: .top, multiplier: 1, constant: 60))
        
        addConstraint(NSLayoutConstraint(item: confirmPassTextField, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: confirmPassTextField, attribute: .top, relatedBy: .equal, toItem: confirmPassLabel, attribute: .top, multiplier: 1, constant: 20))
        
        
        
        
    }

}
