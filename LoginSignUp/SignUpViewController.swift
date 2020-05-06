//
//  SignUpViewController.swift
//  LoginSignUp
//
//  Created by Emircan UZEL on 22.04.2020.
//  Copyright © 2020 Emircan UZEL. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var mailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var rePasswordView: UIView!
    

    @IBOutlet weak var signinButton: UIButton!
    
    @IBOutlet weak var termText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTextFieldView()


        // Do any additional setup after loading the view.
    }
    func setTextFieldView()  {
        userNameView.layer.cornerRadius = 20
        passwordView.layer.cornerRadius = 20
        userNameView.layer.borderWidth = 1.0
        userNameView.layer.borderColor = UIColor.lightGray.cgColor
        passwordView.layer.borderWidth = 1.0
        passwordView.layer.borderColor = UIColor.lightGray.cgColor
        mailView.layer.cornerRadius = 20
        mailView.layer.borderWidth = 1.0
        mailView.layer.borderColor = UIColor.lightGray.cgColor
        rePasswordView.layer.cornerRadius = 20
        rePasswordView.layer.borderWidth = 1.0
        rePasswordView.layer.borderColor = UIColor.lightGray.cgColor


    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

