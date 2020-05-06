//
//  ViewController.swift
//  LoginSignUp
//
//  Created by Emircan UZEL on 20.04.2020.
//  Copyright © 2020 Emircan UZEL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var buttonInfoLabel: UILabel!
    @IBOutlet weak var continueButtonView: UIView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var containerView: UIView!
     let cornerRadius: CGFloat = 15.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setButtonView()
        self.hideKeyboardWhenTappedAround()
    }

    func setButtonView()  {
        facebookButton.layer.cornerRadius = 20
        googleButton.layer.cornerRadius = 20
        continueButtonView.layer.cornerRadius = continueButtonView.frame.size.width / 2
        continueButton.layer.cornerRadius = continueButton.frame.size.width / 2
         containerView.layer.cornerRadius = cornerRadius
         containerView.layer.masksToBounds = true
        containerView.layer.backgroundColor = UIColor.clear.cgColor
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOffset = CGSize(width:  1.0, height: 2.0)
        containerView.layer.shadowOpacity = 0.2
        containerView.layer.shadowRadius = 4.0

        
 
    }
    @IBAction func continueButtonTapped(_ sender: Any) {

        print("next")
    }
    
    func setImageButtonToLeft(image: UIImage , button:UIButton , title:String)  {
        button.setImage(image, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -70, bottom: 0, right: 0)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        button.titleLabel?.text = title
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


