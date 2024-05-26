//
//  InfoProductView.swift
//  HomeWork4.4
//
//  Created by Aijan Saadatova on 25/5/24.
//

import UIKit

class InfoProductView: UIView {
    
//    private let deteilsLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Product Details"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 18, weight: .bold)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let infoStack: UIStackView = {
//       let sv = UIStackView()
//        sv.axis = .vertical
//        sv.spacing = 10
//        sv.translatesAutoresizingMaskIntoConstraints = false
//        return sv
//    }()
//    
//    private let roomTypeLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Room Type"
//        label.textColor = .systemGray
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let colorLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Color"
//        label.textColor = .systemGray
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let materialLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Material"
//        label.textColor = .systemGray
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let dimensionsLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Dimensions"
//        label.textColor = .systemGray
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let weightLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Weight"
//        label.textColor = .systemGray
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let info2Stack: UIStackView = {
//       let sv = UIStackView()
//        sv.axis = .vertical
//        sv.spacing = 10
//        sv.translatesAutoresizingMaskIntoConstraints = false
//        return sv
//    }()
//    
//    private let infoRoomTypeLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Office, Living Room"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let infoColorLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Yellow"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let infoMaterialLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Textile, Velvet, Cotton"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let infoDimensionsLabel: UILabel = {
//        let label = UILabel()
//        label.text = "25.6 x 31.5 x 37.4 inches"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private let infoWeightLabel: UILabel = {
//        let label = UILabel()
//        label.text = "20.3 Pounds"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 15, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .green
        //setupUI()
        
    }
        
//    private func setupUI() {
//        addSubview(deteilsLabel)
//        
//        NSLayoutConstraint.activate([
//            deteilsLabel.topAnchor.constraint(equalTo: self.topAnchor),
//            deteilsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            deteilsLabel.widthAnchor.constraint(equalToConstant: 200),
//            deteilsLabel.heightAnchor.constraint(equalToConstant: 20)
//        ])
//        
//        addSubview(infoStack)
//        infoStack.addArrangedSubview(roomTypeLabel)
//        infoStack.addArrangedSubview(colorLabel)
//        infoStack.addArrangedSubview(materialLabel)
//        infoStack.addArrangedSubview(dimensionsLabel)
//        infoStack.addArrangedSubview(weightLabel)
//        
//        NSLayoutConstraint.activate([
//            infoStack.topAnchor.constraint(equalTo: deteilsLabel.bottomAnchor, constant: 10),
//            infoStack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            infoStack.widthAnchor.constraint(equalToConstant: 100),
//            infoStack.heightAnchor.constraint(equalToConstant: 120)
//        ])
//                
//        addSubview(info2Stack)
//        info2Stack.addArrangedSubview(infoRoomTypeLabel)
//        info2Stack.addArrangedSubview(infoColorLabel)
//        info2Stack.addArrangedSubview(infoMaterialLabel)
//        info2Stack.addArrangedSubview(infoDimensionsLabel)
//        info2Stack.addArrangedSubview(infoWeightLabel)
//
//        NSLayoutConstraint.activate([
//            info2Stack.topAnchor.constraint(equalTo: deteilsLabel.bottomAnchor, constant: 10),
//            info2Stack.leadingAnchor.constraint(equalTo: infoStack.trailingAnchor, constant: 20),
//            info2Stack.widthAnchor.constraint(equalToConstant: 220),
//            info2Stack.heightAnchor.constraint(equalToConstant: 120)
//        ])
//    }
}
