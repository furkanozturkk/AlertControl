//
//  ViewController.swift
//  AlertControl
//
//  Created by Furkan Öztürk on 18.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func registerAction(_ sender: Any) {
        if userNameTextField.text == ""
        {
            makeAlert(title: "Error", message: "Username Not Found!")
        }else if passwordTextField.text == ""
        {
            makeAlert(title: "Error", message: "Password Not Found!")
        }else if passwordTextField.text != password2TextField.text
        {
            makeAlert(title: "Error", message: "Password Do Not Match!")
        }
        else{
            makeAlert(title: "Success", message: "User OK")
        }
    }
    
    func makeAlert(title:String,message:String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
        
    }
}

