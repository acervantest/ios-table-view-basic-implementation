//
//  DetailViewController.swift
//  UiTableView
//
//  Created by Alejandro Cervantes on 2024-07-03.
//

import UIKit

class DetailViewController: UIViewController {
    
    let label = UILabel()

    var labelText: String?
    var backgroundColor: UIColor?
    
    init(colorRow: ColorRow) {
        labelText = colorRow.title
        backgroundColor = colorRow.image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        style()
        layout()
    }
}

extension DetailViewController {
    private func style() {
        view.backgroundColor = backgroundColor
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.adjustsFontForContentSizeCategory = true
        label.text = labelText
        //label.textColor = .systemBackground
        //label.backgroundColor = .systemGray2
    }
    
    private func layout() {
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
