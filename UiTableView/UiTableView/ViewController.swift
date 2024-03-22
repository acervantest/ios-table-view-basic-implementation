//
//  ViewController.swift
//  UiTableView
//
//  Created by Alejandro Cervantes on 2024-03-22.
//

import UIKit

class ViewController: UIViewController {

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }

    func configure() {
        view.addSubview(tableView)
    }

}

// MARK: - Delegate Methods
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return UITableViewCell()
    }
}


