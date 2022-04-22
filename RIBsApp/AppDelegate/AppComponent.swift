//
//  AppComponent.swift
//  RIBsApp
//
//  Created by JeongminKim on 2022/04/22.
//

import Foundation
import ModernRIBs

final class AppComponent: Component<EmptyDependency>, AppRootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}
