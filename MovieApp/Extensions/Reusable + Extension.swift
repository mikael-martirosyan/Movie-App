//
//  Reusable + Extension.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 21.04.2023.
//

import UIKit

extension Reusable where Self: UIView {
    static var reuseID: String {
        return String(describing: self)
    }
}
