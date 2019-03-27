//
//  MainAssembly.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

final class MainAssembly
{
	typealias Output = (vc: UIViewController, presenter: MainModuleInput)
	typealias Dependencies = HasIUserDefaultsStorage

	func build(context: Dependencies) -> Output {
		let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let viewController = storyBoard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else {
			fatalError()
		}

		let interactor = MainInteractor(context: context)
		let presenter = MainPresenter(interactor: interactor)

		viewController.output = presenter
		presenter.view = viewController

		return (viewController, presenter)
	}
}
