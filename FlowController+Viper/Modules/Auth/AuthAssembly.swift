//
//  AuthAssembly.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

final class AuthAssembly
{
	typealias Output = (vc: UIViewController, presenter: AuthModuleInput)
	typealias Dependencies = HasIUserDefaultsStorage

	func build(context: Dependencies) -> Output {
		let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let viewController = storyBoard.instantiateViewController(withIdentifier: "AuthViewController") as? AuthViewController else {
			fatalError()
		}

		let interactor = AuthInteractor(context: context)
		let presenter = AuthPresenter(interactor: interactor)

		viewController.output = presenter
		presenter.view = viewController

		return (viewController, presenter)
	}
}
