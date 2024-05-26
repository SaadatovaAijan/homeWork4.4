//
//  ShopViewController.swift
//  HomeWork4.4
//
//  Created by Aijan Saadatova on 17/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var products: [Product] = []
    
    private let simpleTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
        setupData()
        
        simpleTableView.dataSource = self
        simpleTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "customCell")
        simpleTableView.delegate = self
    }
    
    private func setupUI() {
        view.addSubview(simpleTableView)
        
        NSLayoutConstraint.activate([
            simpleTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            simpleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            simpleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            simpleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    private func setupData() {
        products = [
            Product(image: "Furniture", name: "Furniture", amount: "785 Items", goodsimage: UIImage(named: "Сhair")!, goodsname: "AbocoFur Modern Velvet Fabric Lazy Chair", price: 230),
            Product(image: "Kitchenware", name: "Kitchenware", amount: "645 Items", goodsimage: UIImage(named: "kettle")!, goodsname: "Kettle", price: 340),
            Product(image: "ReadingTable", name: "Reading Table", amount: "Inventory", goodsimage: UIImage(named: "ipad")!, goodsname: "Ipad", price: 190)
        ]
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("indexPath: \(indexPath)")
        let  cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        cell.setCellDate(image: products[indexPath.row].image, name: products[indexPath.row].name,
                         amount: products[indexPath.row].amount)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == indexPath.row {
            let selectedProduct = products[indexPath.row]
            let vc = ProductDetailsViewController(/*goodsDetail: goods*/)
            vc.product = selectedProduct
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
