//
//  MovieInfoScreen.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 03.05.2023.
//

import UIKit

class MovieInfoController: UIViewController {
    
    let nameLabel = UILabel()
    let yearLabel = UILabel()
    let ratingLabel = UILabel()
    
    var data: MovieRandomResponse? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConfiguration()
        setupSubviews()
        setupConstraints()
        
        view.backgroundColor = .systemBackground
    }
    
    private func setupConfiguration() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        yearLabel.translatesAutoresizingMaskIntoConstraints = false
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        guard let data = data else { return }
        
        nameLabel.text = data.name
        yearLabel.text = String(describing: data.year)
        ratingLabel.text = String(describing: data.rating.kp)
    }
    
    private func setupSubviews() {
        view.addSubview(nameLabel)
        view.addSubview(yearLabel)
        view.addSubview(ratingLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 50),
            nameLabel.widthAnchor.constraint(equalToConstant: 100),
            
            yearLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yearLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            yearLabel.heightAnchor.constraint(equalToConstant: 50),
            yearLabel.widthAnchor.constraint(equalToConstant: 100),
            
            ratingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ratingLabel.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 10),
            ratingLabel.heightAnchor.constraint(equalToConstant: 50),
            ratingLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
