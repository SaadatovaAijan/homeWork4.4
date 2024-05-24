//
//  ProductDetailsViewController.swift
//  HomeWork4.4
//
//  Created by Aijan Saadatova on 19/5/24.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    var product: Product?
    
    private let mebelImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let xBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(.x, for: .normal)
        btn.tintColor = UIColor.white
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let copyBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(.copy, for: .normal)
        btn.tintColor = UIColor.white
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let likeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "heart"), for: .normal)
        btn.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        btn.tintColor = UIColor.red
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    
    private let nameLabel: UILabel = {
        let label = UILabel()
        //        label.text = "AbocoFur Modern Velvet Fabric Lazy Chair"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let containerStack: UIStackView = {
        let sv = UIStackView(/*frame: CGRect(x: 10, y: 550, width: 80, height: 30)*/)
        sv.axis = .horizontal
        sv.spacing = 2
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let starBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(.star, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star2Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(.star, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star3Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(.star, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star4Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(.star, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star5Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(.star, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        //        label.text = "AbocoFur Modern Velvet Fabric Lazy Chair"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        setupUI()
        
    }
    
    private func setupUI() {
        setupDate()
        setupImage()
        setupView()
        setupLabel()
        setupStack()
        
        xBtn.addTarget(self, action: #selector(popToView), for: .touchUpInside)
        likeBtn.addTarget(self, action: #selector(toggleHeart), for: .touchUpInside)
    }
    
        private func setupDate() {
            mebelImage.image = product?.goodsimage
            nameLabel.text = product?.goodsname
            priceLabel.text = "goodsDetail.price"
        }
    
    private func setupImage() {
        view.addSubview(mebelImage)
        
        NSLayoutConstraint.activate([
            mebelImage.topAnchor.constraint(equalTo: view.topAnchor),
            mebelImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mebelImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mebelImage.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
    
    private func setupView() {
        view.addSubview(containerView)
        containerView.addSubview(xBtn)
        containerView.addSubview(likeBtn)
        containerView.addSubview(copyBtn)
        
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            containerView.heightAnchor.constraint(equalToConstant: 50),
            
            xBtn.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            xBtn.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            xBtn.widthAnchor.constraint(equalToConstant: 50),
            xBtn.heightAnchor.constraint(equalToConstant: 36),
            
            likeBtn.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            likeBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            likeBtn.widthAnchor.constraint(equalToConstant: 50),
            likeBtn.heightAnchor.constraint(equalToConstant: 36),
            
            copyBtn.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            copyBtn.trailingAnchor.constraint(equalTo: likeBtn.leadingAnchor, constant: 10),
            copyBtn.widthAnchor.constraint(equalToConstant: 50),
            copyBtn.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func setupLabel() {
        view.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: mebelImage.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setupStack() {
        
        view.addSubview(containerStack)
        containerStack.addArrangedSubview(starBtn)
        containerStack.addArrangedSubview(star2Btn)
        containerStack.addArrangedSubview(star3Btn)
        containerStack.addArrangedSubview(star4Btn)
        containerStack.addArrangedSubview(star5Btn)
        
        NSLayoutConstraint.activate([
            containerStack.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            containerStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            containerStack.widthAnchor.constraint(equalToConstant: 80),
            containerStack.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    @objc private func popToView() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func toggleHeart(sender: UIButton) {
        sender.isSelected = !sender.isSelected 
    }
    
}
