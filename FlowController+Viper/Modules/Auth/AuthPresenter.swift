//
//  AuthPresenter.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

protocol AuthModuleInput: AnyObject
{
	var callBack: (() -> Void)? { get set }
}

protocol AuthViewOutput: AnyObject
{
	func viewDidLoad()
	func login(login: String)
}

final class AuthPresenter: AuthModuleInput
{
	fileprivate let interactor: AuthInteractorInput
	weak var view: AuthViewInput?

	var callBack: (() -> Void)?

	init(interactor: AuthInteractorInput) {
		self.interactor = interactor
	}
}

// MARK: AuthViewOutput
extension AuthPresenter: AuthViewOutput
{
	func login(login: String) {
		if login.isEmpty {
			return
		}

		interactor.save(login: login)
		callBack?()
	}

	func viewDidLoad() {

	}
}
