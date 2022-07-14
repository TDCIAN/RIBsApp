//
//  BaseURL.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/10.
//

import Foundation

struct BaseURL {
    var financeBaseURL: URL {
        #if UITESTING
        return URL(string: "https://localhost:8080")!
        #else
        return URL(string: "https://finance.superapp.com/api/v1")!
        #endif
        
    }
}
