//
//  File.swift
//  
//
//  Created by JeongminKim on 2022/07/09.
//

import Foundation
import ModernRIBs

public protocol TransportHomeBuildable: Buildable {
    func build(withListener listener: TransportHomeListener) -> ViewableRouting
}

public protocol TransportHomeListener: AnyObject {
    func transportHomeDidTapClose()
}
