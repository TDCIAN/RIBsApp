//
//  PaymentMethod.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/06.
//

import Foundation

struct PaymentMethod: Decodable {
    let id: String
    let name: String
    let digits: String
    let color: String
    let isPrimary: Bool
}
