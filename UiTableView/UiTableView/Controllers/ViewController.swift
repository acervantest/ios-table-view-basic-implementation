//
//  ViewController.swift
//  UiTableView
//
//  Created by Alejandro Cervantes on 2024-03-22.
//

import UIKit

class ViewController: UIViewController {

    private let tableView: UITableView = {
        let uiTableView = UITableView(frame: .zero, style: .insetGrouped)
        return uiTableView
    }()
    
    var colorRows: [ColorRow] = [
        ColorRow(image: Constants.white, title: "White Color"),
        ColorRow(image: Constants.orange, title: "Orange Color"),
        ColorRow(image: Constants.green, title: "Green Color"),
        ColorRow(image: Constants.yellow, title: "Yellow Color"),
        ColorRow(image: Constants.blue, title: "Blue Color"),
        ColorRow(image: Constants.red, title: "Red Color")
    ]
    
    let cellHeight: CGFloat = 100
    let colorCellID = "ColorViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Rubik's Colors"
        setupTableView()
    }
}

extension ViewController {
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self

        tableView.rowHeight = cellHeight
        
        tableView.register(ColorViewCell.self, forCellReuseIdentifier: colorCellID)
    
        //view = tableView
        view.addSubview(tableView)
        tableView.pin(to: view)
    }
}


// MARK: - Table View Delegate Methods
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: colorCellID) as! ColorViewCell
        
        let currentColorRow = colorRows[indexPath.row]
        cell.configure(with: currentColorRow)
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = colorRows[indexPath.row]
    }
}


