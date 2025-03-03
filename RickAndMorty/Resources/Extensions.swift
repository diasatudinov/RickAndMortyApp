//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Dias Atudinov on 03.03.2025.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
