//
//  InicioController.swift
//  InventoryModule
//
//  Created by development on 5/22/20.
//  Copyright © 2020 development. All rights reserved.
//

import UIKit

class LoginController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    let vista = ViewLogin()
    var Login: Bool = false
    
    override func loadView() {
        view = vista
        view.backgroundColor = UIColor.white
        self.title = "Login"
        let button = UIButton()
        button.frame = CGRect(x: 40, y: 400, width: 235, height: 30)
        button.titleLabel?.font = button.titleLabel?.font.withSize(12)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitle("Iniciar sesion", for: .normal)
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 3
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    func login(sender: UIButton){
        if self.vista.emailTextField.text! != "" && self.vista.passTextField.text! != ""{
            
            self.Login = fetchLogin(user: self.vista.emailTextField.text!, pass: self.vista.passTextField.text!)
            print("\(Login)")
            if Login{
                let controller = MenuBar()
                self.present(controller, animated: true, completion: nil)
            }
            else{
                self.vista.welcomeLabel.text = "Usuario Incorrecto"
            }
        }else{
            self.vista.welcomeLabel.text = "Campos vacios"
        }
        
        /*print(self.vista.emailTextField.text)*/
    }
    
    
    
    var logins: [LoginModel]?
    func fetchLogin(user: String, pass: String)-> Bool{
        let url = NSURL(string: "https://etps4api.azurewebsites.net/login/\(user)/\(pass)")
        print(url)
        var request = URLRequest(url: url as! URL)
        var loginD = false
        print("loginD \(loginD)")
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
                print("loginD \(loginD)")
                //self.products = [AccesoriesModel]()
                
                for dictionary in json as! [[String: AnyObject]]{
                    var x: Bool = false
                    print("loginD \(loginD)")
                    print("x \(x)")
                    if let email = dictionary["email"] as? NSNull{
                        x = false
                        print("x \(x)")
                    }else if let email = dictionary["email"] as? String{
                        x = true
                        print("x \(x)")
                    }
                    print("x \(x)")
                    loginD = x
                    print("loginD \(loginD)")
                }
                //self.collectionView?.reloadData()
                
                print("loginD \(loginD)")
            } catch let jsonError {
                print(jsonError)
            }
            print("loginD \(loginD)")
            }.resume()
        print("loginD \(loginD)")
        return loginD
    }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }

}
