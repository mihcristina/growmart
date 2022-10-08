//
//  ViewCodable.swift
//  growmart
//
//  Created by Michelli Cristina de Paulo Lima on 07/09/22.
//

import Foundation

protocol ViewCodable: AnyObject {
    func buildHierarchy()
    func setupConstraint()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCodable {
    func setupView() {
        buildHierarchy()
        setupConstraint()
        setupAdditionalConfiguration()
    }
}
