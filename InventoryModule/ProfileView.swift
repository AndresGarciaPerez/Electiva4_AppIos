//
//  ProfileView.swift
//  InventoryModule
//
//  Created by development on 5/22/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class ViewProfile: UIView{
    override init(frame: CGRect){
        super.init(frame: frame)
        ProfileLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        image.backgroundColor = UIColor.green
        image.image = UIImage(named: "icons8-usuario-masculino-en-círculo-24")
        image.layer.cornerRadius = 6
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    
    let nameProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "Juanito Alcachofa"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let levelProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "Administrador"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let userProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "Usuario: "
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let setUserProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "JuanAlca05"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let passProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "Contrasenia: "
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let setPassProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "***********"
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    
    
    func ProfileLayout(){
        addSubview(profileImage)
        addSubview(nameProfileLabel)
        addSubview(levelProfileLabel)
        addSubview(userProfileLabel)
        addSubview(setUserProfileLabel)
        addSubview(passProfileLabel)
        addSubview(setPassProfileLabel)
        
        addConstraint(NSLayoutConstraint(item: profileImage, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: profileImage, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: nameProfileLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: nameProfileLabel, attribute: .top, relatedBy: .equal, toItem: profileImage, attribute: .top, multiplier: 1, constant: 135))
        
        addConstraint(NSLayoutConstraint(item: levelProfileLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: levelProfileLabel, attribute: .top, relatedBy: .equal, toItem: nameProfileLabel, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: userProfileLabel, attribute: .top, relatedBy: .equal, toItem: levelProfileLabel, attribute: .top, multiplier: 1, constant: 40))
        
        addConstraint(NSLayoutConstraint(item: setUserProfileLabel, attribute: .top, relatedBy: .equal, toItem: userProfileLabel, attribute: .top, multiplier: 1, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: passProfileLabel, attribute: .top, relatedBy: .equal, toItem: setUserProfileLabel, attribute: .top, multiplier: 1, constant: 30))
        
        addConstraint(NSLayoutConstraint(item: setPassProfileLabel, attribute: .top, relatedBy: .equal, toItem: passProfileLabel, attribute: .top, multiplier: 1, constant: 20))
        
   
    
    }
    
    
    
}
