//
//  AppRootRouter.swift
//  RIBsApp
//
//  Created by JeongminKim on 2022/04/22.
//

import ModernRIBs

protocol AppRootInteractable: Interactable, AppHomeListener, FinanceHomeListener, ProfileHomeListener {
    var router: AppRootRouting? { get set }
    var listener: AppRootListener? { get set }
}

protocol AppRootViewControllable: ViewControllable {
    func setViewControllers(_ viewControllers: [ViewControllable])
}
