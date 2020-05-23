//
//  LoginView.swift
//  InventoryModule
//
//  Created by development on 5/22/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class ViewLogin: UIView{
    override init(frame: CGRect){
        super.init(frame: frame)
        LoginLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let loginImage: UIImageView = {
        let image = UIImageView()
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        image.backgroundColor = UIColor.white
        image.image = UIImage(named: "icons8-usuario-masculino-en-círculo-24")
        image.layer.cornerRadius = 6
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Gestion de inventario"
        label.font = label.font.withSize(14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Bienvenido"
        label.textColor = UIColor.blue
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = label.font.withSize(12)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.font = textField.font?.withSize(12)
        textField.placeholder = "Email"
        textField.layer.borderColor = UIColor.darkGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passLabel: UILabel = {
        let label = UILabel()
        label.text = "Contrasenia"
        label.font = label.font.withSize(12)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let passTextField: UITextField = {
        let textField = UITextField()
        textField.font = textField.font?.withSize(12)
        textField.placeholder = "Contrasenia"
        textField.layer.borderColor = UIColor.darkGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    func LoginLayout(){
        addSubview(loginImage)
        addSubview(titleLabel)
        addSubview(welcomeLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passLabel)
        addSubview(passTextField)
        
        addConstraint(NSLayoutConstraint(item: loginImage, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: loginImage, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 40))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: loginImage, attribute: .top, multiplier: 1, constant: 135))
        
        addConstraint(NSLayoutConstraint(item: welcomeLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: welcomeLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: emailLabel, attribute: .top, relatedBy: .equal, toItem: welcomeLabel, attribute: .top, multiplier: 1, constant: 40))
        
        addConstraint(NSLayoutConstraint(item: emailTextField, attribute: .top, relatedBy: .equal, toItem: emailLabel, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: passLabel, attribute: .top, relatedBy: .equal, toItem: emailTextField, attribute: .top, multiplier: 1, constant: 55))
        
        addConstraint(NSLayoutConstraint(item: passTextField, attribute: .top, relatedBy: .equal, toItem: passLabel, attribute: .top, multiplier: 1, constant: 20))
        
    }
    
    
    
    
    
    
}
