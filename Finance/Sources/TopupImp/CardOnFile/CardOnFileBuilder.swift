//
//  CardOnFileBuilder.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/08.
//

import ModernRIBs
import FinanceEntity

protocol CardOnFileDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class CardOnFileComponent: Component<CardOnFileDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol CardOnFileBuildable: Buildable {
    func build(withListener listener: CardOnFileListener, paymentMethod: [PaymentMethod]) -> CardOnFileRouting
}

final class CardOnFileBuilder: Builder<CardOnFileDependency>, CardOnFileBuildable {

    override init(dependency: CardOnFileDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: CardOnFileListener, paymentMethod: [PaymentMethod]) -> CardOnFileRouting {
        let viewController = CardOnFileViewController()
        let interactor = CardOnFileInteractor(presenter: viewController, paymentMethod: paymentMethod)
        interactor.listener = listener
        return CardOnFileRouter(interactor: interactor, viewController: viewController)
    }
}
