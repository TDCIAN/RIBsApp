//
//  AppRootBuilder.swift
//  RIBsApp
//
//  Created by JeongminKim on 2022/04/22.
//

import ModernRIBs
import UIKit

protocol AppRootDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class AppRootComponent: Component<AppRootDependency>, AppHomeDependency, FinanceHomeDependency, ProfileHomeDependency {
    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder
protocol AppRootBuildable: Buildable {
    func build() -> (launchRouter: LaunchRouting, urlHandler: URLHandler)
}

final class AppRootBuilder: Builder<AppRootDependency>, AppRootBuildable {
    
    override init(dependency: AppRootDependency) {
        super.init(dependency: dependency)
    }
    
    func build() -> (launchRouter: LaunchRouting, urlHandler: URLHandler) {
        let component = AppRootComponent(dependency: dependency)
        
        let tabBar = RootTabBarController()
        
        let interactor = AppRootInteractor(presenter: tabBar)
        
        let appHome = AppHomeBuilder
    }
}
