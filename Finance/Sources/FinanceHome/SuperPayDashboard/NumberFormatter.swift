//
//  NumberFormatter.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/06.
//

import Foundation

struct Formatter {
    static let balanceFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
}
