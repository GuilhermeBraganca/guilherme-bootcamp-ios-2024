//
//  ViewController.swift
//  AppTableViewAvancado
//
//  Created by Caio Fabrini on 29/07/24.
//

import UIKit

class ListViewController: UIViewController {

  var screen: ListScreen?

  override func loadView() {
    screen = ListScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    screen?.tableView.delegate = self
    screen?.tableView.dataSource = self
  }

}

extension ListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  }
}

extension ListViewController: UITableViewDataSource {
    
    // numero de linhas por section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    // metodo responsavel pela criação das celulas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListPersonJobViewCell.identifier, for: indexPath) as? ListPersonJobViewCell
        return cell ?? UITableViewCell()
    }
}
//extension ListViewController: EmployeeTableViewCellProtocol {
//  func tappedUpdateHeartButton(employee: Employee) {
//    if let index = list.firstIndex(of: employee) {
//      list[index].isSelectedHeart.toggle()
//    }
//  }
//}

