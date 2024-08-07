//
//  ListScreen.swift
//  AppTableViewAvancado
//
//  Created by Caio Fabrini on 29/07/24.
//

import UIKit

class ListScreen: UIView {
  weak var delegateRemove: RegisterEmployeeTableViewCellRemoveProtocol?
    
  weak var delegateAdd: RegisterEmployeeTableViewCellAddProtocol?
    
  lazy var tableView: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.register(ListPersonJobViewCell.self, forCellReuseIdentifier: ListPersonJobViewCell.identifier)
    tableView.separatorStyle = .none
    return tableView
  }()
    
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Nome:"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    lazy var jobTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Profissão:"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    lazy var removeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Remover", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedRemoveButton), for: .touchUpInside)
        return button
      }()
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Adicionar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedAddButton), for: .touchUpInside)
        return button
      }()
    
    @objc func tappedRemoveButton() {
        print("tappedRemoveButton")
    }
    
    @objc func tappedAddButton() {
        print("tappedAddButton")
    }
    
  init() {
    super.init(frame: .zero)
    backgroundColor = .orange
    addElements()
    configConstraints()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func addElements() {
    addSubview(nameTextField)
    addSubview(jobTextField)
    addSubview(addButton)
    addSubview(removeButton)
    addSubview(tableView)
  }
    protocol RegisterEmployeeTableViewCellAddProtocol: AnyObject {
      func tappedAddButton()
    }

    protocol RegisterEmployeeTableViewCellRemoveProtocol: AnyObject {
      func tappedRemoveButton()
    }
  func configConstraints() {
    NSLayoutConstraint.activate([
        nameTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
        nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        jobTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
        jobTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        jobTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        addButton.topAnchor.constraint(equalTo: jobTextField.bottomAnchor, constant: 10),
        addButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        removeButton.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 10),
        removeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        removeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        tableView.topAnchor.constraint(equalTo: removeButton.bottomAnchor, constant: 10),
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 40),
        
    ])
  }
}

