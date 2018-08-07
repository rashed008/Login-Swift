//
//  LoginViewController.swift
//  Login
//
//  Created by Mominur Rahman on 8/2/18.
//  Copyright © 2018 metakave. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: Properties
    fileprivate let CLASS_NAME: String = "LoginViewController"
    private var email:String?
    private var password:String?
    private var isPasswordVisible:Bool = false
    
    //MARK: Layout
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnPasswordVisibility: UIButton!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnLogin.layer.cornerRadius = 4
        setupUI()
        
    }
    //MARK: Init Method
    private func setupUI()-> Void {
        tfPassword.isSecureTextEntry = true
    }
    //MARK: Action
    //On button click password visibility
    @IBAction func onClickButtonPasswordVisibility(_ sender: UIButton, forEvent event: UIEvent) {
        
        if !isPasswordVisible {
            tfPassword.isSecureTextEntry = false
            isPasswordVisible = true
        } else {
            tfPassword.isSecureTextEntry = true
            isPasswordVisible = false
        }
    }
    
    
    @IBAction func onClickBtnLogin(_ sender: UIButton, forEvent event: UIEvent) {
        email = tfEmail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        password = tfPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //Validate and login user
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

