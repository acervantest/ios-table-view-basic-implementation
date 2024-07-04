//
//  VideoCell.swift
//  UiTableView
//
//  Created by Alejandro Cervantes on 2024-03-22.
//

import UIKit

class ColorViewCell: UITableViewCell {
    
    var colorViewImage = UIView()
    var colorViewTitle = UILabel()

    override init(style cellStyle: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: cellStyle, reuseIdentifier: reuseIdentifier)
        backgroundColor = .systemGray5
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with colorRow: ColorRow){
        colorViewImage.backgroundColor = colorRow.image
        colorViewTitle.text = colorRow.title
    }
}

extension ColorViewCell {
    
    private func setup() {
        colorViewImage.translatesAutoresizingMaskIntoConstraints = false
        colorViewImage.backgroundColor = .lightGray
        colorViewImage.layer.cornerRadius = 10
        colorViewImage.clipsToBounds = true
        
        colorViewTitle.translatesAutoresizingMaskIntoConstraints = false
        colorViewTitle.numberOfLines = 0
        colorViewTitle.adjustsFontSizeToFitWidth = true
    }
    
    private func layout() {
        
        contentView.addSubview(colorViewImage)
        contentView.addSubview(colorViewTitle)
        
        // IMAGE
        NSLayoutConstraint.activate([
            colorViewImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            colorViewImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12),
            colorViewImage.heightAnchor.constraint(equalToConstant: 80),
            colorViewImage.widthAnchor.constraint(equalTo: colorViewImage.heightAnchor, multiplier: 16/9)
        ])
        
        // TITLE
        NSLayoutConstraint.activate([
            colorViewTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            colorViewTitle.leadingAnchor.constraint(equalTo: colorViewImage.trailingAnchor, constant: 20),
            colorViewTitle.heightAnchor.constraint(equalToConstant: 80),
            colorViewTitle.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -12)
        ])
    }
}
