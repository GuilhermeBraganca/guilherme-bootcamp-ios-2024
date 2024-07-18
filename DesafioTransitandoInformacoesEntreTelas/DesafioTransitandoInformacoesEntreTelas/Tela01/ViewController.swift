//
//  ViewController.swift
//  DesafioTransitandoInformacoesEntreTelas
//
//  Created by MacBook on 17/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTwoTextField: UITextField!
    @IBOutlet weak var numberOneTextField: UITextField!
    
    @IBAction func tappedSumButton(_ sender: UIButton) {
        
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController? in
            let numberOne : Int = Int(self.numberOneTextField.text ?? "") ?? 0
            let numberTwo : Int = Int(self.numberTwoTextField.text ?? "") ?? 0
            
            
          let totalSum: String = "O total da soma é: \(numberOne + numberTwo)"
           return Tela02ViewController(coder: coder, sumTotal: totalSum)
        }

        navigationController?.pushViewController(tela02, animated: true)
      }
    override func viewDidLoad() {
      super.viewDidLoad()
        view.backgroundColor = .red
      configElements()
    }
    func configElements() {
        numberOneTextField.keyboardType = UIKeyboardType.numberPad
        numberOneTextField.delegate = self
        numberTwoTextField.keyboardType = UIKeyboardType.numberPad
        numberTwoTextField.delegate = self
    }
    
}
    




extension ViewController: UITextFieldDelegate {

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }

}
