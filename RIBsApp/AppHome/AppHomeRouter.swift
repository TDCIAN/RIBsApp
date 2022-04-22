//
//  AppHomeRouter.swift
//  RIBsApp
//
//  Created by JeongminKim on 2022/04/22.
//

import ModernRIBs

protocol AppHomeInteractable: Interactable, TransportHomeListener {
    var router: AppHomeRouting? { get set }
    var listener: AppHomeListener? { get set }
}

protocol AppHomeViewControllable: ViewControllable {
    
}

final class AppHomeRouter: ViewableRouter<AppHomeInteractable, AppHomeViewControllable>, AppHomeRouting {
    private let transportHomeBuildable: TransportHomeBuildable
    private var transportHomeRouting: Routing?
    private let transitioningDelegate: PushModalPresentationController
}
