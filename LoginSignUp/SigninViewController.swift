//
//  SigninViewController.swift
//  LoginSignUp
//
//  Created by Emircan UZEL on 21.04.2020.
//  Copyright © 2020 Emircan UZEL. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {
    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var usernameLabelText: UITextField!
    @IBOutlet weak var passwordLabelText: UITextField!
    

    var attributedString = NSMutableAttributedString(string:"")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTextFieldView()
        
  
        
        // Do any additional setup after loading the view.
        
    }
    
    func setTextFieldView()  {
        usernameView.layer.cornerRadius = 20
        passwordView.layer.cornerRadius = 20
        usernameView.layer.borderWidth = 1.0
        usernameView.layer.borderColor = UIColor.lightGray.cgColor
        passwordView.layer.borderWidth = 1.0
        passwordView.layer.borderColor = UIColor.lightGray.cgColor


    }
    @IBAction func signupButtonTapped(_ sender: Any) {
        

      
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let nextVC = storyBoard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController  else
        {
             fatalError("Can't instanteViewController named SignUpViewController")
        }

         self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func rememberCheckBoxTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else {
            sender.isSelected = true
        }
    }
    override var prefersStatusBarHidden: Bool {
        return true
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
