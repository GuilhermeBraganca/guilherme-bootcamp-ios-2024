//
//  ListPersonJobViewCell.swift
//  DesafioTableView
//
//  Created by MacBook on 31/07/24.
//

import UIKit

class ListPersonJobViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: ListPersonJobViewCell.self)
    
    lazy var viewBox: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.text = "Adicione um nome e um trabalho!!"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()
    
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
      contentView.addSubview(viewBox)
      contentView.addSubview(messageLabel)
    }
    
    func configConstraints() {
      NSLayoutConstraint.activate([
        viewBox.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
        viewBox.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 60)
              ])
    }
}
