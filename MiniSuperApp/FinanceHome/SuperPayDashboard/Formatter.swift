//
//  Formatter.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/06/14.
//

import Foundation

struct Formatter {
    static let balanceFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
}
