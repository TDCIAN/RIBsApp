//
//  EnterAmountInteractorTests.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/12.
//

@testable import TopupImp
import XCTest

final class EnterAmountInteractorTests: XCTestCase {
    
    private var sut: EnterAmountInteractor!
    private var presenter: EnterAmountPresentableMock!
    
    // TODO: declare other objects and mocks you need as private vars
    
    override func setUp() {
        super.setUp()
        
        self.presenter = EnterAmountPresentableMock()
        
        sut = EnterAmountInteractor(
            presenter: self.presenter,
            dependency: <#T##EnterAmountInteractorDependency#>
        )
    }
    
    // MARK: - Tests
    
    func test_exampleObservable_callsRouterOrListener_exampleProtocol() {
        // This is an example of an interactor test case.
        // Test your interactor binds observables and sends messages to router or listener.
    }
}
