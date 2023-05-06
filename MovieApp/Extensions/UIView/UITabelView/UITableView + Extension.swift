//
//  UITableView + Extension.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 21.04.2023.
//

import UIKit

extension UITableView {
    func register<Cell: UITableViewCell> (_ cellClass: Cell.Type) {
        register(cellClass, forCellReuseIdentifier: Cell.reuseID)
    }
    
    func dequeueReusableCell<Cell: UITableViewCell> (forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: Cell.reuseID, for: indexPath) as? Cell else { fatalError("Fatal error for cell at \(indexPath)")}
        return cell
    }
}
