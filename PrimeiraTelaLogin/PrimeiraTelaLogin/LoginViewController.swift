//
//  ViewController.swift
//  PrimeiraTelaLogin
//
//  Created by MacBook on 10/07/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        // Do any additional setup after loading the view.
    }
    
    func configElements(){
        nameLabel.text = "Braganca"
    }

}

