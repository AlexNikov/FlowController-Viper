//
//  SecondAssembly.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

final class SecondAssembly
{
	typealias Output = (vc: UIViewController, presenter: SecondModuleInput)

	func build() -> Output {
		let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let viewController = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
			fatalError()
		}

		let interactor = SecondInteractor()
		let presenter = SecondPresenter(interactor: interactor)

		viewController.output = presenter
		presenter.view = viewController

		return (viewController, presenter)
	}
}
