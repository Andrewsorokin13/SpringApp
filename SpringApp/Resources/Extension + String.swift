//
//  extension + String.swift
//  SpringApp
//
//  Created by Андрей Сорокин on 15.01.2025.
//
extension String {
    func roundedToTwoDecimalPlaces() -> String {
          guard let number = Double(self) else {
              return self
          }
          return String(format: "%.02f", number)
      }
}
