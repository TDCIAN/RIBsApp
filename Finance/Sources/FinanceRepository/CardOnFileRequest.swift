//
//  File.swift
//  
//
//  Created by JeongminKim on 2022/07/10.
//

import Foundation
import Network
import FinanceEntity

struct CardOnFileRequest: Request {
    typealias Output = CardOnFileResponse
    
    var endpoint: URL
    var method: HTTPMethod
    var query: QueryItems
    var header: HTTPHeader
    
    init(baseURL: URL) {
        self.endpoint = baseURL.appendingPathComponent("/cards")
        self.method = .get
        self.query = [:]
        self.header = [:]
    }
}

struct CardOnFileResponse: Decodable {
    let cards: [PaymentMethod]
}
