//
//  AddPaymentMethodBuilder.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/06/15.
//

import ModernRIBs

protocol AddPaymentMethodDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
    var cardsOnFileRepository: CardOnFileRepository { get }
}

final class AddPaymentMethodComponent: Component<AddPaymentMethodDependency>, CardOnFileDashboardInteractorDependency {
    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
    var cardsOnFileRepository: CardOnFileRepository { dependency.cardsOnFileRepository }
}

// MARK: - Builder

protocol AddPaymentMethodBuildable: Buildable {
    func build(withListener listener: AddPaymentMethodListener) -> AddPaymentMethodRouting
}

final class AddPaymentMethodBuilder: Builder<AddPaymentMethodDependency>, AddPaymentMethodBuildable {

    override init(dependency: AddPaymentMethodDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: AddPaymentMethodListener) -> AddPaymentMethodRouting {
        let component = AddPaymentMethodComponent(dependency: dependency)
        let viewController = AddPaymentMethodViewController()
        let interactor = AddPaymentMethodInteractor(
            presenter: viewController,
            dependency: component
        )
        interactor.listener = listener
        return AddPaymentMethodRouter(interactor: interactor, viewController: viewController)
    }
}
