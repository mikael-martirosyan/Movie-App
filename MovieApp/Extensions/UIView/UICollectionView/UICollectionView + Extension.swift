//
//  UICollectionView + Extension.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 21.04.2023.
//

import UIKit

extension UICollectionView {
    func register<Cell: UICollectionViewCell> (_ cellClass: Cell.Type) {
        register(cellClass, forCellWithReuseIdentifier: Cell.reuseID)
    }
    
    func dequeueReusableCell<Cell: UICollectionViewCell> (forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: Cell.reuseID, for: indexPath) as? Cell else { fatalError("Fatal error for cell at \(indexPath)")}
        return cell
    }
}
