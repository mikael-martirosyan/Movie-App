//
//  HomeTableViewCell.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 03.05.2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    let nameLabel = UILabel()
    let yearLabel = UILabel()
    let ratingLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupConfiguration()
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConfiguration() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        yearLabel.translatesAutoresizingMaskIntoConstraints = false
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupSubviews() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(yearLabel)
        contentView.addSubview(ratingLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            yearLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            yearLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            yearLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            ratingLabel.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 10),
            ratingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            ratingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
}
