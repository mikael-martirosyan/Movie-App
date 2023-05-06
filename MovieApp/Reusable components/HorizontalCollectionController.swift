//
//  HorizontalCollectionView.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 20.04.2023.
//

import UIKit

final class HorizontalCollectionController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConfiguration()
        setupUI()
        setupSubviews()
        setupConstraints()
    }
    
    private func setupConfiguration() {
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.reuseID)
    }
    
    private func setupUI() {
        collectionView.backgroundColor = .orange
    }
    
    private func setupSubviews() {
        
    }

    private func setupConstraints() {
        
    }
    
    // MARK: - CollectionView DataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.reuseID, for: indexPath) as? HomeCollectionViewCell else { fatalError("Cell at index \(indexPath) not found") }
        
        cell.backgroundColor = .blue
        
        return cell
    }
    
    
    

    
    
    
    
    
}
