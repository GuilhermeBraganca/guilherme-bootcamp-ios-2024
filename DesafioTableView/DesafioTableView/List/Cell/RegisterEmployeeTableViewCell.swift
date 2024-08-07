//
//  RegisterEmployeeTableView.swift
//  DesafioTableView
//
//  Created by MacBook on 31/07/24.
//

import UIKit

protocol RegisterEmployeeTableViewCellAddProtocol: AnyObject {
  func tappedAddButton()
}

protocol RegisterEmployeeTableViewCellRemoveProtocol: AnyObject {
  func tappedRemoveButton()
}


class RegisterEmployeeTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: RegisterEmployeeTableViewCell.self)
    
    weak var delegateRemove: RegisterEmployeeTableViewCellRemoveProtocol?
    
    weak var delegateAdd: RegisterEmployeeTableViewCellAddProtocol?
    
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      selectionStyle = .none
      backgroundColor = .orange
      addElements()
      configConstraints()
    }

    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }

    func addElements() {
      contentView.addSubview(nameTextField)
      contentView.addSubview(jobTextField)
      contentView.addSubview(addButton)
      contentView.addSubview(removeButton)
    }

    func configConstraints() {
      NSLayoutConstraint.activate([
        nameTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
        nameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        nameTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
        jobTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
        jobTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        jobTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
        addButton.topAnchor.constraint(equalTo: jobTextField.bottomAnchor, constant: 10),
        addButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        addButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
        removeButton.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 10),
        removeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        removeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
        removeButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
      ])
    }

}
