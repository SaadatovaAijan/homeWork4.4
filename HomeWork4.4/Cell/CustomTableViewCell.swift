//
//  CustomTableViewCell.swift
//  HomeWork4.4
//
//  Created by Aijan Saadatova on 19/5/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private let bgView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let productImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "")
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let productNameLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let productAmountLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(bgView)
        bgView.addSubview(productImage)
        bgView.addSubview(productNameLabel)
        bgView.addSubview(productAmountLabel)
        
        NSLayoutConstraint.activate([
            bgView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            bgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            bgView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            bgView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            bgView.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: bgView.topAnchor),
            productImage.leadingAnchor.constraint(equalTo: bgView.leadingAnchor),
            productImage.trailingAnchor.constraint(equalTo: bgView.trailingAnchor),
            productImage.heightAnchor.constraint(equalToConstant: 160)
        ])
        
        NSLayoutConstraint.activate([
            productNameLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 8),
            productNameLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 8),
            productNameLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -8),
            productNameLabel.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            productAmountLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 5),
            productAmountLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 8),
            productAmountLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -8),
            productAmountLabel.bottomAnchor.constraint(equalTo: bgView.bottomAnchor)
        ])
    }
    
    func setCellDate(image: String, name: String, amount: String) {
        productImage.image = UIImage(named: image)
        productNameLabel.text = name
        productAmountLabel.text = amount
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
