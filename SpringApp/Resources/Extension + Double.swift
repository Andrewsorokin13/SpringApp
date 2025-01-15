//
//  Extension + Double.swift
//  SpringApp
//
//  Created by Андрей Сорокин on 15.01.2025.
//

import Foundation

extension Double {
    func toStringWithTwoDecimalPlaces() -> String {
        return String(format: "%.02f", self)
    }
}
