//
//  Tela02ViewController.swift
//  DesafioTransitandoInformacoesEntreTelas
//
//  Created by MacBook on 17/07/24.
//
import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var sumTotalLabel: UILabel!
    
    let sumTotal: String

  init?(coder: NSCoder, sumTotal: String) {
    self.sumTotal = sumTotal
    super.init(coder: coder)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
      sumTotalLabel.text = sumTotal.capitalized
  }

}
