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
        label.text = ""
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let containerStack: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.spacing = 2
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let starBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.setImage(UIImage(systemName: "star.fill"), for: .selected)
        btn.tag = 0
        btn.tintColor = UIColor.systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star2Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.setImage(UIImage(systemName: "star.fill"), for: .selected)
        btn.tag = 1
        btn.tintColor = UIColor.systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star3Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.setImage(UIImage(systemName: "star.fill"), for: .selected)
        btn.tag = 2
        btn.tintColor = UIColor.systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star4Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.setImage(UIImage(systemName: "star.fill"), for: .selected)
        btn.tag = 3
        btn.tintColor = UIColor.systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let star5Btn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.setImage(UIImage(systemName: "star.fill"), for: .selected)
        btn.tag = 4
        btn.tintColor = UIColor.systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private var priceLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let plusMinus: UIStackView = {
        let sv = UIStackView()
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let plusBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        btn.tintColor = UIColor.black
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let countLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let minusBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "minus.circle"), for: .normal)
        btn.tintColor = UIColor.black
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let infoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let deteilsLabel: UILabel = {
        let label = UILabel()
        label.text = "Product Details"
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let infoStack: UIStackView = {
       let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let roomTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Room Type"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.text = "Color"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialLabel: UILabel = {
        let label = UILabel()
        label.text = "Material"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dimensionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Dimensions"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let info2Stack: UIStackView = {
       let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let infoRoomTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Office, Living Room"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let infoColorLabel: UILabel = {
        let label = UILabel()
        label.text = "Yellow"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let infoMaterialLabel: UILabel = {
        let label = UILabel()
        label.text = "Textile, Velvet, Cotton"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let infoDimensionsLabel: UILabel = {
        let label = UILabel()
        label.text = "25.6 x 31.5 x 37.4 inches"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let infoWeightLabel: UILabel = {
        let label = UILabel()
        label.text = "20.3 Pounds"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //private let infoView = InfoProductView()
    
    private let buyButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Buy", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        setupUI()
        
    }
    
    private func setupUI() {
        setupData()
        setupImage()
        setupView()
        setupLabel()
        setupStack()
        setupPrice()
        setupPlusMinus()
        setupInfoView()
        setupBuyBtn()
        
        xBtn.addTarget(self, action: #selector(popToView), for: .touchUpInside)
        likeBtn.addTarget(self, action: #selector(toggleLikeHeart), for: .touchUpInside)
        starBtn.addTarget(self, action: #selector(toggleHeart), for: .touchUpInside)
        star2Btn.addTarget(self, action: #selector(toggleHeart), for: .touchUpInside)
        star3Btn.addTarget(self, action: #selector(toggleHeart), for: .touchUpInside)
        star4Btn.addTarget(self, action: #selector(toggleHeart), for: .touchUpInside)
        star5Btn.addTarget(self, action: #selector(toggleHeart), for: .touchUpInside)
        plusBtn.addTarget(self, action: #selector(plusButton), for: .touchUpInside)
        minusBtn.addTarget(self, action: #selector(minusButton), for: .touchUpInside)
    }
    
        private func setupData() {
            mebelImage.image = product?.goodsimage
            nameLabel.text = product?.goodsname
            priceLabel.text = String(format: "%2f$", product?.price ?? 0)
        }
    
    private func setupImage() {
        view.addSubview(mebelImage)
        
        NSLayoutConstraint.activate([
            mebelImage.topAnchor.constraint(equalTo: view.topAnchor),
            mebelImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mebelImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mebelImage.heightAnchor.constraint(equalToConstant: 375)
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
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
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
    
    private func setupPrice() {
        view.addSubview(priceLabel)
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: containerStack.bottomAnchor, constant: 20),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            priceLabel.widthAnchor.constraint(equalToConstant: 150),
            priceLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setupPlusMinus() {
        view.addSubview(plusMinus)
        plusMinus.addArrangedSubview(plusBtn)
        plusMinus.addArrangedSubview(countLabel)
        plusMinus.addArrangedSubview(minusBtn)
        
        NSLayoutConstraint.activate([
            plusMinus.topAnchor.constraint(equalTo: containerStack.bottomAnchor, constant: 10),
            plusMinus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            plusMinus.widthAnchor.constraint(equalToConstant: 100),
            plusMinus.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupInfoView() {
        view.addSubview(infoView)
        
        NSLayoutConstraint.activate([
            infoView.topAnchor.constraint(equalTo: plusMinus.bottomAnchor, constant: 50),
            infoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            infoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            infoView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        infoView.addSubview(deteilsLabel)
        
        NSLayoutConstraint.activate([
            deteilsLabel.topAnchor.constraint(equalTo: infoView.topAnchor),
            deteilsLabel.leadingAnchor.constraint(equalTo: infoView.leadingAnchor),
            deteilsLabel.widthAnchor.constraint(equalToConstant: 200),
            deteilsLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        infoView.addSubview(infoStack)
        infoStack.addArrangedSubview(roomTypeLabel)
        infoStack.addArrangedSubview(colorLabel)
        infoStack.addArrangedSubview(materialLabel)
        infoStack.addArrangedSubview(dimensionsLabel)
        infoStack.addArrangedSubview(weightLabel)
        
        NSLayoutConstraint.activate([
            infoStack.topAnchor.constraint(equalTo: deteilsLabel.bottomAnchor, constant: 10),
            infoStack.leadingAnchor.constraint(equalTo: infoView.leadingAnchor),
            infoStack.widthAnchor.constraint(equalToConstant: 100),
            infoStack.heightAnchor.constraint(equalToConstant: 120)
        ])
                
        infoView.addSubview(info2Stack)
        info2Stack.addArrangedSubview(infoRoomTypeLabel)
        info2Stack.addArrangedSubview(infoColorLabel)
        info2Stack.addArrangedSubview(infoMaterialLabel)
        info2Stack.addArrangedSubview(infoDimensionsLabel)
        info2Stack.addArrangedSubview(infoWeightLabel)

        NSLayoutConstraint.activate([
            info2Stack.topAnchor.constraint(equalTo: deteilsLabel.bottomAnchor, constant: 10),
            info2Stack.leadingAnchor.constraint(equalTo: infoStack.trailingAnchor, constant: 20),
            info2Stack.widthAnchor.constraint(equalToConstant: 220),
            info2Stack.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    private func setupBuyBtn() {
        view.addSubview(buyButton)
        
        NSLayoutConstraint.activate([
            buyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buyButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private var basePrice: Double = 230
    
    var counter: Double = 1 {
        didSet {
            countLabel.text = "\(counter)"
            updatePrice()
        }
    }
    
    private func updatePrice() {
        let totalPrice = Double(counter) * basePrice
        priceLabel.text = String(format: "%2f$", totalPrice)
    }
    
    @objc private func plusButton() {
        counter += 1
    }
    
    @objc private func minusButton() {
        counter = max(0, counter - 1)
    }
    
    @objc private func popToView() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func toggleHeart(sender: UIButton) {
        
        let tag = sender.tag
        
        for button in [starBtn, star2Btn, star3Btn, star4Btn, star5Btn] {
            button.isSelected = button.tag <= tag
        }
        
    }
    
    @objc private func toggleLikeHeart(sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
