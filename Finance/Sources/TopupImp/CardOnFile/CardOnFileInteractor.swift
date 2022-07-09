//
//  CardOnFileInteractor.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/08.
//

import ModernRIBs
import FinanceEntity

protocol CardOnFileRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol CardOnFilePresentable: Presentable {
    var listener: CardOnFilePresentableListener? { get set }
    
    func update(with viewModels: [PaymentMethodViewModel])
}

protocol CardOnFileListener: AnyObject {
    func cardOnFileDidTapClose()
    func cardOnFileDidTapAddCard()
    func cardOnFileDidSelect(at index: Int)
}

final class CardOnFileInteractor: PresentableInteractor<CardOnFilePresentable>, CardOnFileInteractable, CardOnFilePresentableListener {

    weak var router: CardOnFileRouting?
    weak var listener: CardOnFileListener?
    
    private let paymentMethod: [PaymentMethod]
    
    init(
        presenter: CardOnFilePresentable,
        paymentMethod: [PaymentMethod]
    ) {
        self.paymentMethod = paymentMethod
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        
        presenter.update(with: paymentMethod.map(PaymentMethodViewModel.init))
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
    
    func didTapClose() {
        listener?.cardOnFileDidTapClose()
    }
    
    func didSelectItem(at index: Int) {
        if index >= paymentMethod.count {
            listener?.cardOnFileDidTapAddCard()
        } else {
            listener?.cardOnFileDidSelect(at: index)
        }
    }
}
